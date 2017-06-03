using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.SqlClient;
using System.IO;

public partial class _Default : System.Web.UI.Page
{
    string strConnString = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
    int UploadHistory_Id ;
    string s1;
    string path;
    SqlConnection cnn = new SqlConnection();
    SqlCommand com = new SqlCommand();
    SqlDataAdapter sqlda;
    DataTable dt;

    protected void Page_Load(object sender, EventArgs e)
    {
        txtuserid.Text = Session["user_id"].ToString();
        if (!IsPostBack)
        {
            binddatalist();
        }
    }
    private void clear()
    {
        txt_name.Text = "";
        txtsymtoms.Text = "";
        ddtype.SelectedIndex = 0;

    }
    private void binddatalist()
    {

        string q1 = "SELECT * FROM UploadHistory";

        DataSet dsOrders = new DataSet();
        SqlDataAdapter da = new SqlDataAdapter();
        SqlConnection cn = new SqlConnection(strConnString);

        SqlCommand cmd = new SqlCommand(q1, cn);

        cn.Open();
        da.SelectCommand = cmd;
        cmd.ExecuteNonQuery();
        da.Fill(dsOrders);
        DataList1.DataSource = dsOrders;
        DataList1.DataBind();
    }
    protected void btn_insert_Click(object sender, EventArgs e)
    {
        if (FileUpload1.PostedFile.ContentLength > 0)
        {
            s1 = Path.GetFileName(FileUpload1.FileName);
            path = Server.MapPath("images") + "/" + s1;
            FileUpload1.SaveAs(path);
        }
        //string strConnString = Convert.ToString(ConfigurationManager.ConnectionStrings["DietPlan"].ToString());
        SqlConnection con = new SqlConnection(strConnString);
        con.Open();
        SqlCommand com = new SqlCommand("pInsertIntoUploadHistory", con);
        com.CommandType = CommandType.StoredProcedure;
        com.Connection = con;
        com.Parameters.AddWithValue("@user_id", txtuserid.Text);
        com.Parameters.AddWithValue("@Name", txt_name.Text);
        com.Parameters.AddWithValue("@Symtoms", txtsymtoms.Text);
        com.Parameters.AddWithValue("@Type", ddtype.SelectedValue);
        com.Parameters.AddWithValue("@EntryBy_Id", txtuserid.Text);
        com.Parameters.AddWithValue("@ImageURL1", s1);
       // com.Parameters.AddWithValue("@ImageName1", txtimgname.Text);
        com.ExecuteNonQuery();
        com.Dispose();
        binddatalist();
        con.Close();
        clear();
    }
    protected void DataList1_DeleteCommand(object source, DataListCommandEventArgs e)
    {
        SqlConnection con = new SqlConnection(strConnString);
        SqlCommand cmd2 = new SqlCommand("delete from UploadHistory where UploadHistory_Id=@UploadHistory_Id", con);
        try
        {
            UploadHistory_Id = Convert.ToInt32(DataList1.DataKeys[e.Item.ItemIndex]);
            //UploadHistory_Id = Convert.ToInt32(DataList1.Items[e.Item.ItemIndex]);
           // UploadHistory_Id = 22;
            //cmd = new SqlCommand("pDeleteUploadHistory", cnn);
            //cmd.CommandType = CommandType.StoredProcedure;
            //SqlCommand cmd = new SqlCommand();

            cmd2.Parameters.AddWithValue("@UploadHistory_Id", UploadHistory_Id);
            con.Open();
            cmd2.ExecuteNonQuery();
            con.Close();
            binddatalist();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Book record has been deleted successfully');", true);
        }
        catch (Exception ex)
        {
            ScriptManager.RegisterStartupScript(this, this.GetType(), "Message", "alert('Oops!! Error occured : " + ex.Message.ToString() + "');", true);
        }
        finally
        {

            cmd2.Dispose();
        }
    }
}