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
        id = Convert.ToInt32(Session["user_id"].ToString());
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection vcon = new SqlConnection(str);
            if (vcon.State == ConnectionState.Closed)
                vcon.Open();
            SqlCommand vcom = new SqlCommand();
            vcom.Connection = vcon;
            vcom.CommandText = "pInsertIntoPriscription";
            vcom.CommandType = CommandType.StoredProcedure;
            vcom.Parameters.AddWithValue("@Medicine_Name", txtmedicinename.Text);
            vcom.Parameters.AddWithValue("@Quantity", txtqty.Text);
            vcom.Parameters.AddWithValue("@DoseDuration", txtduration.Text);
            vcom.Parameters.AddWithValue("@Patient_id", txtpid.Text);
            vcom.Parameters.AddWithValue("@Entry_ByDoc", id);

            int a = vcom.ExecuteNonQuery();

            vcon.Close();
            if (a == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Oops Data Not Inserted');", true);
         
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Saved Successfully');", true);
                txtpid.Text = "";
                txtduration.Text = "";
                txtmedicinename.Text = "";
                txtqty.Text = "";
                txtname.Text = "";
            }
         
        }
        catch (Exception ex1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection not establish yet');", true);
        }



    }
    protected void Button2_Click(object sender, EventArgs e)
    {
       // Response.Redirect("DoctorPriscription.aspx");
   
        
    }
}