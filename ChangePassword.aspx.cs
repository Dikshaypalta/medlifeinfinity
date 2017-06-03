using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            id = Convert.ToInt32(Session["user_id"].ToString());
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection con = new SqlConnection(str);

            if (con.State == ConnectionState.Closed)
                con.Open();
            SqlCommand cmd = new SqlCommand("select Password from user_master where user_id=@user_id", con);
            cmd.Parameters.AddWithValue("@user_id", id);
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr != null)
            {
                while (dr.Read())
                {
                    Label1.Text = dr["Password"].ToString();
                }
            }
            con.Close();
            if(txtoldpwd.Text==Label1.Text)
            {
                if (txtoldpwd.Text != txtnewpwd.Text)
                {
                    con.Open();
                    SqlCommand cmd1 = new SqlCommand("update user_master set Password=@Password where user_id=@user_id", con);
                    cmd1.Parameters.AddWithValue("@Password", txtnewpwd.Text);
                    cmd1.Parameters.AddWithValue("@user_id", id);
                    int a = cmd1.ExecuteNonQuery();

                    con.Close();
                    if (a == 0)
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Password has not been Updated');", true);
                    }
                    else
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Password Changed Successfully'); window.location.href='index.aspx';", true);
                    }
                }
                else
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Please Enter Different Password');", true);
                    
                }
            }
        }
        catch (Exception ex1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection not establish yet');", true);
        }

    }

}