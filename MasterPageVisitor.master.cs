using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class MasterPageVisitor : System.Web.UI.MasterPage
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }



    protected void btnlog_Click(object sender, EventArgs e)
    {
        try
        {
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection con = new SqlConnection(str);

            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select Email,Password, user_id,Roll_Id from user_master where Email=@Email AND Password=@Password", con);
            cmd.Parameters.AddWithValue("@Email", txtmail.Text);
            cmd.Parameters.AddWithValue("@Password", txtpwd.Text);

            DataTable dt = new DataTable();
            dt.Load(cmd.ExecuteReader());

            if (dt.Rows.Count == 0)
            {
               // Response.Write("Incorrect Password");               
                Page.ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Incorrect Password');", true);
            }
            else
            {
                for (int i = 0; i < dt.Rows.Count; i++)
                {
                    if (Convert.ToInt32(dt.Rows[i]["Roll_Id"].ToString()) == 1)
                    {
                        if (dt.Rows[i]["Password"].ToString() == txtpwd.Text)
                        {
                            Session["user_id"] = dt.Rows[i]["user_id"].ToString();
                            Response.Redirect("~/DoctorDefault.aspx");
                        }
                        else
                        {
                           // Response.Write("Incorrect Password");
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Incorrect Password');", true);
                        }
                    }

                    else if (Convert.ToInt32(dt.Rows[i]["Roll_Id"].ToString()) ==2)
                    {
                        if (dt.Rows[i]["Password"].ToString() == txtpwd.Text)
                        {
                            Session["user_id"] = dt.Rows[i]["user_id"].ToString();
                            Response.Redirect("~/PatientDefault.aspx");
                        }
                        else
                        {
                           // Response.Write("Incorrect Password");
                            Page.ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Incorrect Password');", true);
                        }
                    }



                }

            }

        }
        catch (Exception ex)
        {
            Page.ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection Problem');", true);
        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {

    }
   
}
