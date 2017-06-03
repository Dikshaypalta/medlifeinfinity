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

public partial class SignUp : System.Web.UI.Page
{
    protected string toEmail, EmailSubj, EmailMsg;
    
    protected void Page_Load(object sender, EventArgs e)
    {

    }
  
    protected void RadioButtonList1_SelectedIndexChanged1(object sender, EventArgs e)
    {
        if(RadioButtonList1.SelectedItem.Value=="1")
        {
            Panel1.Visible = true;
            Panel2.Visible = false;
        }
        else
        {
            Panel2.Visible = true;
            Panel1.Visible = false;
        }
    }
    protected void btnreg1_Click(object sender, EventArgs e)
    {
        try
        {
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection vcon = new SqlConnection(str);
            if (vcon.State == ConnectionState.Closed)
                vcon.Open();
            SqlCommand vcom = new SqlCommand();
            vcom.Connection = vcon;
            vcom.CommandText = "pInsertSignupDetailsDoctor";
            vcom.CommandType = CommandType.StoredProcedure;

            vcom.Parameters.AddWithValue("@Name", txtname.Text);
            vcom.Parameters.AddWithValue("@ContactNo", txtmob.Text);
            vcom.Parameters.AddWithValue("@Email", txtmail.Text);
            vcom.Parameters.AddWithValue("@Password", txtpwd.Text);

            if (RadioButtonList1.SelectedItem.Value=="1")
                vcom.Parameters.AddWithValue("@Roll_Id", 1);
            else if (RadioButtonList1.SelectedItem.Value == "2")
                vcom.Parameters.AddWithValue("@Roll_Id", 2);

            vcom.Parameters.AddWithValue("@Specialization", ddspec.SelectedItem.Value);
        
            int a = vcom.ExecuteNonQuery();

            vcon.Close();
            if (a == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data has not been Saved');", true);
            }
            else
            {
                ScriptManager.RegisterStartupScript(this, this.GetType(), "Clientscript", "alert('Sign Up successfully.Please Go Back.');", true);
               // ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Signup Successfully. Please login.');", true);
               // Response.Redirect("~/index.aspx");
                txtname.Text = "";
                txtmail.Text = "";
                txtmob.Text = "";
                txtpwd.Text = "";
                txtrepwd.Text = "";
                ddspec.SelectedItem.Value = "select";
            }
        }
        catch (Exception ex1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection not establish yet');", true);
        }
       // Response.Redirect("~/index.aspx");

    }
    protected void btnreset1_Click(object sender, EventArgs e)
    {
        txtname.Text="";
        txtmail.Text="";
        txtmob.Text="";
        txtpwd.Text="";
        txtrepwd.Text="";
        ddspec.SelectedItem.Value = "select";
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        try
        {
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection vcon = new SqlConnection(str);
            if (vcon.State == ConnectionState.Closed)
                vcon.Open();
            SqlCommand vcom = new SqlCommand();
            vcom.Connection = vcon;
            vcom.CommandText = "pInsertSignupDetailsPatient";
            vcom.CommandType = CommandType.StoredProcedure;

            vcom.Parameters.AddWithValue("@Name", TextBox1.Text);
            vcom.Parameters.AddWithValue("@ContactNo", TextBox5.Text);
            vcom.Parameters.AddWithValue("@Email", TextBox2.Text);
            vcom.Parameters.AddWithValue("@Password", TextBox3.Text);

            if (RadioButtonList1.SelectedItem.Value == "1")
                vcom.Parameters.AddWithValue("@Roll_Id", 1);
            else if (RadioButtonList1.SelectedItem.Value == "2")
                vcom.Parameters.AddWithValue("@Roll_Id", 2);
            
            int a = vcom.ExecuteNonQuery();

            vcon.Close();
            if (a == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data has not been Saved');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Saved Successfully');", true);
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox3.Text = "";
                TextBox4.Text = "";
                TextBox5.Text = "";
                ddspec.SelectedItem.Value = "select";
                   
            }
        }
        catch (Exception ex1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection not establish yet');", true);
        }

    }
    protected void btnReset_Click(object sender, EventArgs e)
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        ddspec.SelectedItem.Value = "select";
    }
    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/index.aspx");
    }
    protected void btnRedirect_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Index.aspx");
    }
}