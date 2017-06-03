using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class ForgetPassword : System.Web.UI.Page
{
    protected string toEmail, EmailSubj, EmailMsg;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnsend_Click(object sender, EventArgs e)
    {
        try
        {
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection con = new SqlConnection(str);

            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select Password from user_master where Email=@Email", con);
            cmd.Parameters.AddWithValue("@Email", txtemail.Text);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr != null)
            {
                while (dr.Read())
                {
                    Label1.Text = dr["Password"].ToString();
                }
            }

            con.Close();
            try
            {
                toEmail = txtemail.Text;
                EmailSubj = "Your Password is : ";
                EmailMsg = Label1.Text;
                Class1.ABC(toEmail, EmailSubj, EmailMsg);
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Please check your Email.Your Password has been sent to your Email Address'); window.location.href='index.aspx'", true);
              
            }
            catch (Exception ex1)
            {
               // ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection not establish yet');", true);
                string stmail = ex1.Message;
                Response.Write(stmail);
            }
         }
        catch (Exception ex1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Email Not Found');", true);
        }
    }
}