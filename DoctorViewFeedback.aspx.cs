using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = new DataTable();
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
        if (con.State == ConnectionState.Closed)
            con.Open();
        try
        {
            SqlDataAdapter adp = new SqlDataAdapter("select * from Feedback", con);
            adp.Fill(dt);
            Repeater1.DataSource = dt;
            Repeater1.DataBind();
          
        }

        catch (Exception ex)
        {
            Response.Write("Error occured: " + ex.Message.ToString());
        }
        con.Close(); 
     
    }
}
