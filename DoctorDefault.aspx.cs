using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Services;
public partial class _Default : System.Web.UI.Page
{
    static int id;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {

      if(Session["user_id"]!=null)
        {
           
            try
            {
                id = Convert.ToInt32(Session["user_id"].ToString());
                string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
                SqlConnection vcon = new SqlConnection(str);
                if (vcon.State == ConnectionState.Closed)
                    vcon.Open();
                SqlCommand vcom = new SqlCommand();
                vcom.Connection = vcon;
                vcom.CommandText = "select Name,Address,Specialization,Age,Contact_No,Email,Blood_Group,City,State,Country,About_Doctor,Image,Qualification from user_master where user_id=@user_id";
                vcom.Parameters.AddWithValue("@user_id", id);
                SqlDataReader dr = vcom.ExecuteReader();
                if (dr != null)
                {
                    while (dr.Read())
                    {
                        Image1.ImageUrl = dr["Image"].ToString();
                        lblname.Text = "Dr. "+dr["Name"].ToString();
                        lblmno.Text = "Contact Number : " + dr["Contact_No"].ToString();
                        s = dr["Specialization"].ToString();
                        lblspec.Text = "Specialization : " + dr["Specialization"].ToString();
                        lblemail.Text = "Email : " + dr["Email"].ToString();
                        lblage.Text = "Age : " + dr["Age"].ToString();
                        lblbg.Text = "Blood Group : " + dr["Blood_Group"].ToString();
                        lblquali.Text = "Qualification : " + dr["Qualification"].ToString();
                        lbladd.Text = "Address : " + dr["Address"].ToString() + " , " + dr["City"].ToString() + " , " + dr["State"].ToString() + " , " + dr["Country"].ToString();
                        lblabout.Text = "About Me : " + dr["About_Doctor"].ToString();
                    }
                }
                vcon.Close();
                vcon.Open();

                SqlCommand cmd = new SqlCommand();
                cmd.Connection = vcon;
                cmd.CommandText = "SELECT top 1 user_id,Image,Name,Specialization,About_Doctor from user_master where Specialization='"+s+"' order by user_id desc";
                //cmd.Parameters.AddWithValue("@spec", lblspec.Text);
                 SqlDataReader dr1 = cmd.ExecuteReader();
                 if (dr1 != null)
                 {
                     while (dr1.Read())
                     {
                         Image2.ImageUrl = dr1["Image"].ToString();

                         lblname1.Text = dr1["Name"].ToString();
                         lblspec1.Text = dr1["Specialization"].ToString();
                         lblaboutm.Text = dr1["About_Doctor"].ToString();
                     }
                   
                 }


                
                    vcon.Close();
       



            }
            catch (Exception ex1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Not Available.');", true);

            }
        }
        else
        {
            Response.Redirect("~/Index.aspx", false);
        }
    }
}