using System;
using System.Configuration;
using System.Data;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Web;
public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        
    }

    protected void ddtype_SelectedIndexChanged(object sender, EventArgs e)
    {
        string conString = ConfigurationManager.ConnectionStrings["medlife"].ConnectionString;
        string query = "SELECT * FROM UploadHistory where user_id=@user_id AND Type=@Type";
        SqlCommand cmd = new SqlCommand(query);
        cmd.Parameters.AddWithValue("@Type", ddtype.SelectedItem.Value);
        cmd.Parameters.AddWithValue("@user_id", txtuserid.Text);
        using (SqlConnection con = new SqlConnection(conString))
        {
            using (SqlDataAdapter sda = new SqlDataAdapter())
            {
                cmd.Connection = con;
                sda.SelectCommand = cmd;
                using (DataSet ds = new DataSet())
                {
                    sda.Fill(ds);
                    DataList1.DataSource = ds;
                    DataList1.DataBind();
                    if (DataList1.Items.Count == 0)
                    {
                       // DataList1.Visible = false;
                        Page.ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Not Found');", true);
                    }
                  
                }
            }
        }
    }
}
