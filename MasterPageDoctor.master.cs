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

public partial class MasterPageDoctor : System.Web.UI.MasterPage
{
    static int id;
    protected void Page_Load(object sender, EventArgs e)
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
            vcom.CommandText= "select Name from user_master where user_id=@user_id";
            vcom.Parameters.AddWithValue("@user_id", id);
            SqlDataReader dr = vcom.ExecuteReader();
            if (dr != null)
            {
                while (dr.Read())
                {
                    string fullName = dr["Name"].ToString();
                    var names = fullName.Split(' ');
                    lbluser.Text = names[0] + "  !!";
                    
                }
            }
        }
        catch(Exception ex1)
        {
            string st = ex1.Message;
            Response.Write(st);
        }
  

    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.Clear();
        Session.Abandon();
        Response.Redirect("~/index.aspx", false);
    }
}
