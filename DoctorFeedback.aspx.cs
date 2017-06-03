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
   static string constr = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
    SqlConnection vcon = new SqlConnection(constr);
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

   
    protected void btnSave_Click(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Session["user_id"].ToString());
      
        if (vcon.State == ConnectionState.Closed)
            vcon.Open();
        SqlCommand vcom = new SqlCommand();
        vcom.Connection = vcon;
        vcom.CommandText = "insert into Feedback(DoctorName,Behaviour,Rating,Comment,Entry_by) values(@DoctorName,@Behaviour,@Rating,@Comment,@Entry_by)";

        vcom.Parameters.AddWithValue("@DoctorName", txtDoctorName.Text);
        vcom.Parameters.AddWithValue("@Behaviour", ddlBehaviour.Text);
        vcom.Parameters.AddWithValue("@Rating", SqlDbType.Int).Value = Rating1.CurrentRating;
        vcom.Parameters.AddWithValue("@Comment", txtComment.Text);
        vcom.Parameters.AddWithValue("@Entry_by", id);
        vcom.ExecuteNonQuery();
        if (vcon.State == ConnectionState.Open)
            vcon.Close();

        Response.Write("<script LANGUAGE='JavaScript' >alert('Your Feedback is submit, THANK YOU')</script>");


        txtDoctorName.Text = "";
        ddlBehaviour.SelectedIndex = 0;
       // ddlRating.SelectedIndex = 0;
        txtComment.Text = "";

    }
    protected void btnCancel1_Click(object sender, EventArgs e)
    {
        txtDoctorName.Text = "";
        ddlBehaviour.SelectedIndex = 0;
       // ddlRating.SelectedIndex = 0;
        txtComment.Text = "";
    }

    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchCustomers(string prefixText, int count)
    {
        string constr = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
        SqlConnection vcon = new SqlConnection(constr);
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.CommandText = "select Name from user_master where Roll_Id='1' AND Name like '%'+@SearchText + '%'";
            cmd.Parameters.AddWithValue("@SearchText", prefixText);
            cmd.Connection = vcon;
            vcon.Open();
            List<string> customers = new List<string>();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                while (sdr.Read())
                {
                    customers.Add(sdr["Name"].ToString());
                    
                }
            }
            vcon.Close();
            return customers;
        }
    }
}