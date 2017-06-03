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
        if (!IsPostBack)
        {
            id = Convert.ToInt32(Session["user_id"].ToString());
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection con = new SqlConnection(str);

            SqlCommand com = new SqlCommand();
            com.CommandText = "SELECT Distinct Name,Entry_ByDoc FROM Priscription pr INNER JOIN user_master um ON um.user_id = pr.Entry_ByDoc WHERE pr.Patient_id='" + id + "'";
            com.Connection = con;
            SqlDataAdapter adpt = new SqlDataAdapter(com);

            DataTable dt = new DataTable();
            adpt.Fill(dt);
            DropDownList1.DataSource = dt;
            DropDownList1.DataBind();
            DropDownList1.DataTextField = "Name";
            DropDownList1.DataBind();
        }
       
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
        SqlConnection con = new SqlConnection(str);
        con.Open();
        SqlCommand com = new SqlCommand();
        com.CommandText = "SELECT user_id FROM user_master WHERE Name='" + DropDownList1.SelectedItem.Value + "'";
        com.Connection = con;
        SqlCommand vcom = new SqlCommand();
        SqlDataReader dr = com.ExecuteReader();
        if (dr != null)
        {
            while (dr.Read())
            {
                TextBox1.Text = dr["user_id"].ToString();
            }
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        Panel1.Visible = true;
        string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
        SqlConnection vcon = new SqlConnection(str);
        if (vcon.State == ConnectionState.Closed)
            vcon.Open();
        SqlCommand vcom = new SqlCommand();
        vcom.Connection = vcon;
        vcom.CommandText = "select Medicine_Name, Quantity, DoseDuration from Priscription where Entry_ByDoc=@Entry_ByDoc order by EntryDate desc";
        vcom.Parameters.AddWithValue("@Entry_ByDoc", TextBox1.Text);
        SqlDataReader dr = vcom.ExecuteReader();
        if (dr != null)
        {
            while (dr.Read())
            {
                txtmname.Text = dr["Medicine_Name"].ToString();
                txtqty.Text = dr["Quantity"].ToString();
                txtdd.Text = dr["DoseDuration"].ToString();
              }
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('No Priscription Found.');", true);

        }


    }


 

}