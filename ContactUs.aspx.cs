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
    protected string toEmail, EmailSubj, EmailMsg;
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void submit_Click(object sender, EventArgs e)
    {
        try
        {
            id = Convert.ToInt32(Session["user_id"].ToString());

            try
            {
                id = Convert.ToInt32(Session["user_id"].ToString());
                string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
                SqlConnection vcon = new SqlConnection(str);
                if (vcon.State == ConnectionState.Closed)
                    vcon.Open();
                SqlCommand vcom = new SqlCommand();
                vcom.Connection = vcon;
                vcom.CommandText = "select Name from user_master where user_id=@user_id";
                vcom.Parameters.AddWithValue("@user_id", id);
                SqlDataReader dr = vcom.ExecuteReader();
                if (dr != null)
                {
                    while (dr.Read())
                    {
                        lblname.Text = dr["Name"].ToString();
                    }
                }
            }
            catch (Exception ex1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Not Available.');", true);
       
            }

            toEmail = "madi.sharma11@gmail.com";
            EmailSubj = lblname.Text;
            EmailMsg = txtmsg.Text;
            Class1.ABC(toEmail, EmailSubj, EmailMsg);
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Thanks For your Feedback.');", true);
      
            txtmsg.Text = "";
        }
        catch (Exception ex)
        {
            string s = ex.GetBaseException().Message;
            //Response.Write(s);
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('error');", true);
      
        }

    }
}