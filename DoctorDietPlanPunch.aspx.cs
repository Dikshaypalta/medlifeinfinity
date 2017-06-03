using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        txtentry.Text = Session["user_id"].ToString();

    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        string constr = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
        SqlConnection vcon = new SqlConnection(constr);
        if (vcon.State == ConnectionState.Closed)
            vcon.Open();
        SqlCommand vcom = new SqlCommand();
        vcom.Connection = vcon;
        vcom.CommandText = "pInsertIntoDietPlan";
        vcom.CommandType = CommandType.StoredProcedure;
        //vcom.Parameters.AddWithValue("@PatientName", txtpatientname.Text);
        //vcom.Parameters.AddWithValue("@user_id", );
        vcom.Parameters.AddWithValue("@user_id", txtuserid.Text);
        vcom.Parameters.AddWithValue("@Day", txtdays.Text);
        vcom.Parameters.AddWithValue("@Morning", txtmorning.Text);
        vcom.Parameters.AddWithValue("@Afternoon", txtafternoon.Text);
        vcom.Parameters.AddWithValue("@Evening", txtevning.Text);
        vcom.Parameters.AddWithValue("@Night", txtnight.Text);
        vcom.Parameters.AddWithValue("@Precautions", txtprecarious.Text);
        vcom.Parameters.AddWithValue("@EntryBy_ID", txtentry.Text);
        int a=vcom.ExecuteNonQuery();
   

        if (vcon.State == ConnectionState.Open)
            vcon.Close();
        if (a == 0)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data has not been Saved');", true);
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Saved Successfully');", true);
            txtuserid.Text = "";
            txtdays.Text = "";
            txtmorning.Text = "";
            txtafternoon.Text = "";
            txtevning.Text = "";
            txtnight.Text = "";
            txtprecarious.Text = "";
            txtentry.Text = "";
        }
    }
    protected void btnclear_Click(object sender, EventArgs e)
    {
        txtuserid.Text = "";
        txtdays.Text = "";
        txtmorning.Text = "";
        txtafternoon.Text = "";
        txtevning.Text = "";
        txtnight.Text = "";
        txtprecarious.Text = "";
        txtentry.Text = "";
    }
}