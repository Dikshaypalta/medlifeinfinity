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

public partial class Default2 : System.Web.UI.Page
{
    string imgName;
    static string img_name;
    static string img_name1;
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        id = Convert.ToInt32(Session["user_id"].ToString());
        if (!IsPostBack)
        {

            try
            {

                string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
                SqlConnection vcon = new SqlConnection(str);
                if (vcon.State == ConnectionState.Closed)
                    vcon.Open();
                SqlCommand vcom = new SqlCommand();
                vcom.Connection = vcon;
                vcom.CommandText = "pSelectDoctorDetails";
                vcom.CommandType = CommandType.StoredProcedure;
                vcom.Parameters.AddWithValue("@user_id", id);
                SqlDataReader dr = vcom.ExecuteReader();
                if (dr != null)
                {
                    while (dr.Read())
                    {
                        txtname.Text = dr["Name"].ToString();
                        txtcontactno.Text = dr["Contact_No"].ToString();
                        //txtemail.Text = dr["Email"].ToString();
                        if (dr["Gender"].ToString() == "Male")
                            rdmale.Checked = true;
                        else if (dr["Gender"].ToString() == "Female")
                            rdfemale.Checked = true;
                        else
                            rdfemale.Checked = false;
                        txtage.Text = dr["Age"].ToString();

                        ddbgroup.Text = dr["Blood_Group"].ToString();
                        txtaddress.Text = dr["Address"].ToString();
                        txtcity.Text = dr["City"].ToString();
                        ddstate.Text = dr["State"].ToString();
                        ddcntry.Text = dr["Country"].ToString();
                        //  txtspec.Text = dr["Specialization"].ToString();
                        DropDownCheckBoxes1.SelectedItem.Value = dr["Qualification"].ToString();
                        txtaboutdoc.Text = dr["About_Doctor"].ToString();
                        string getPath1 = dr["Image"].ToString();

                        Image1.ImageUrl = getPath1;
                        img_name = getPath1;

                    }
                }



                if (vcon.State == ConnectionState.Open)
                    vcon.Close();

            }
            catch (Exception ex)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection not establish');", true);
            }


        }
    }




    private void StartUpLoad()
    {
        //get the file name of the posted image
        imgName = FileUpload1.FileName;

        //sets the image path
        string imgPath = "~/images/" + imgName;
        //get the size in bytes that
        int imgSize = FileUpload1.PostedFile.ContentLength;
        //validates the posted file before saving
        if (FileUpload1.PostedFile != null && FileUpload1.PostedFile.FileName != "")
        {
            // 10240 KB means 10MB, You can change the value based on your requirement
            if (FileUpload1.PostedFile.ContentLength > 1048576)
            {
                Page.ClientScript.RegisterClientScriptBlock(typeof(Page), "Alert", "alert('File is too big.')", true);
            }
            else
            {
                //then save it to the Folder
                FileUpload1.SaveAs(Server.MapPath(imgPath));
                Image1.ImageUrl = imgPath;
                img_name1 = imgPath;
            }
        }
    }

    protected void btnsave_Click(object sender, EventArgs e)
    {
        try
        {
            string q = DropDownCheckBoxes1.SelectedItem.Value;
            string s = dddate.Text + "/" + ddmonth.Text + "/" + ddyear.Text;
            DateTime dob = Convert.ToDateTime(s);
            DateTime currentdate = Convert.ToDateTime(DateTime.Now);
            TimeSpan time = currentdate.Subtract(dob);
            int total = (time.Days) / 365;
            txtage.Text = total.ToString();
            StartUpLoad();
            string getPath1 = img_name1;
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection vcon = new SqlConnection(str);
            if (vcon.State == ConnectionState.Closed)
                vcon.Open();
            SqlCommand vcom = new SqlCommand();
            vcom.Connection = vcon;
            vcom.CommandText = "pUpdateDoctorDetails";
            vcom.CommandType = CommandType.StoredProcedure;

            vcom.Parameters.AddWithValue("@Name", txtname.Text);
            vcom.Parameters.AddWithValue("@Contact_No", txtcontactno.Text);
            //vcom.Parameters.AddWithValue("@Email", txtemail.Text);

            if (rdmale.Checked == true)
                vcom.Parameters.AddWithValue("@Gender", "Male");
            else if (rdfemale.Checked == true)
                vcom.Parameters.AddWithValue("@Gender", "Female");
            //int currentyear = 2016;
            //int year = Convert.ToInt32(ddyear.Text);
            //int age = currentyear - year;
            vcom.Parameters.AddWithValue("@Age", txtage.Text);
            vcom.Parameters.AddWithValue("@Blood_Group", ddbgroup.Text);
            vcom.Parameters.AddWithValue("@Address", txtaddress.Text);
            vcom.Parameters.AddWithValue("@City", txtcity.Text);
            vcom.Parameters.AddWithValue("@State", ddstate.Text);
            vcom.Parameters.AddWithValue("@Country", ddcntry.Text);
            // vcom.Parameters.AddWithValue("@Specialization", txtspec.Text);
            vcom.Parameters.AddWithValue("@Qualification", q);
            vcom.Parameters.AddWithValue("@About_Doctor", txtaboutdoc.Text);
            vcom.Parameters.AddWithValue("@ImagePath", getPath1);
            vcom.Parameters.AddWithValue("@user_id", id);
            int a = vcom.ExecuteNonQuery();

            vcon.Close();
            if (a == 0)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data has not been Updated');", true);
            }
            else
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Updated Successfully');", true);
            }
        }
        catch (Exception ex1)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Connection not establish yet');", true);
        }
    }
  

}