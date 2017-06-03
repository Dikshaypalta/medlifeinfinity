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

public partial class Default2 : System.Web.UI.Page
{
    static int id;
    string s;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["user_id"] != null)
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
                vcom.CommandText = "select Name,Address,Age,Contact_No,Email,Blood_Group,City,State,Country,Image from user_master where user_id=@user_id";
                vcom.Parameters.AddWithValue("@user_id", id);
                SqlDataReader dr = vcom.ExecuteReader();
                if (dr != null)
                {
                    while (dr.Read())
                    {
                        Image1.ImageUrl = dr["Image"].ToString();
                        lblname.Text = dr["Name"].ToString();
                        lblmno.Text = "Contact Number : " + dr["Contact_No"].ToString();
                  
                        lblemail.Text = "Email : " + dr["Email"].ToString();
                        lblage.Text = "Age : " + dr["Age"].ToString();
                        lblbg.Text = "Blood Group : " + dr["Blood_Group"].ToString();
                    
                        lbladd.Text = "Address : " + dr["Address"].ToString() + " , " + dr["City"].ToString() + " , " + dr["State"].ToString() + " , " + dr["Country"].ToString();
                    
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