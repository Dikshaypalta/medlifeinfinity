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

public partial class _Default : System.Web.UI.Page
{
    
    SqlConnection scon;
    SqlCommand vcom;
    static int check;
    string postQuery;
    static string postid, filterData = "";
    static List<string> listPrivateFilter = new List<string>();
     static List<string> filterName = new List<string>();
    string filterQuery;
    static int sessionId;
    protected void Page_Load(object sender, EventArgs e)
    {
        sessionId = Convert.ToInt32(Session["user_id"].ToString());
        //txtDoctorId.Text = Session["user_id"].ToString();
        Page.MaintainScrollPositionOnPostBack = true;
        try
        {
            string con = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            scon = new SqlConnection(con);
            scon.Open();
            if (!IsPostBack)
                repeaterData();
            //imageLoad();
        }
        catch (Exception ex)
        {
            string str = ex.Message;
           // Response.Write(str);

        }
    }
    protected void btnRegister_Click(object sender, EventArgs e)
    {
        if (rbPublic.Checked)
        {
            postQuery = "insert into post_master(title,query,user_id,visible) values('" + queryTitle.Text + "','" + txtQuery.Text + "','" + sessionId + "','@')";
        }
        else
        {
            postQuery = "insert into post_master(title,query,user_id,visible) values('" + queryTitle.Text + "','" + txtQuery.Text + "','" + sessionId + "','*')";
            vcom = new SqlCommand(postQuery, scon);
            DataTable dt = new DataTable();
            using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
            {
                sda.Fill(dt);
            }
            vcom.CommandText = "select post_id from post_master where query='" + txtQuery.Text + "'";
            object n = vcom.ExecuteScalar();
            postQuery = "";
            for (int i = 0; i < listPrivateFilter.Count; i++)
            {
                postQuery += "insert into visible_master(post_id,user_id) values('" + n + "','" + listPrivateFilter[i] + "')";
            }
        }
        vcom = new SqlCommand(postQuery, scon);
        DataTable dt1 = new DataTable();
        using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
        {
            sda.Fill(dt1);
        }
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Post Uploaded Successfully');", true);
        queryTitle.Text = "";
        txtQuery.Text = "";
        repeaterData();
    }
    protected void postState_SelectedIndexChanged(object sender, EventArgs e)
    {

        if (postState.SelectedItem.Text == "All Post")
        {
            repeaterData();
        }
        else if (postState.SelectedItem.Text == "My Post")
        {
            repeaterMyPosts();
        }
        else
        {
            check = 1;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "abc", "$('#myModal').modal('show');", true);
        }
    }
    //binding repeater with all post
    protected void repeaterData()
    {
        postQuery = "select pm.post_id,pm.title,pm.query,pm.date,dm.Image,dm.Name from post_master pm join user_master dm on dm.user_id=pm.user_id where dm.user_id='" + sessionId + "' or pm.visible ='@' union select vm.post_id,pm.title,pm.query,pm.date,dm.Image,dm.Name from visible_master vm  join post_master pm on pm.post_id=vm.post_id join user_master dm on pm.user_id=dm.user_id where  vm.user_id='" + sessionId + "'";
        vcom = new SqlCommand(postQuery, scon);
        DataTable dt = new DataTable();
        using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
        {
            sda.Fill(dt);
        }
        if (dt != null)
        {
            rptPosts.DataSource = dt;
            rptPosts.DataBind();
        }
    }
    //binding repeater with particular posts
    protected void repeaterMyPosts()
    {
        postQuery = "select pm.post_id,dm.Image,dm.Name,pm.title,pm.query,pm.date from post_master pm join user_master dm on dm.user_id=pm.user_id where dm.user_id='" + sessionId + "'";
        vcom = new SqlCommand(postQuery, scon);
        DataTable dt = new DataTable();
        using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
        {
            sda.Fill(dt);
        }
        rptPosts.DataSource = dt;
        rptPosts.DataBind();
    }

    protected void filter(int check)
    {
        if (check == 1)
        {
            filterQuery = "select pm.post_id,dm.Image,dm.Name,pm.title,pm.query,pm.date from post_master pm join user_master dm on dm.user_id=pm.user_id where dm.user_id in(" + filterData + ")";
            vcom = new SqlCommand(filterQuery, scon);
            DataTable dt = new DataTable();
            using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
            {
                if (sda != null)
                    sda.Fill(dt);
            }
            rptPosts.DataSource = dt;
            rptPosts.DataBind();
        }


    }

    protected void ItemBound(object sender, RepeaterItemEventArgs e)
    {
        HiddenField h = (HiddenField)e.Item.FindControl("hfPostId");
        string s = h.Value.ToString();
        postid = s;
        string query = "select rm.date,rm.user_id,dm.Name,dm.Image,rm.reply_comment from reply_master rm join user_master dm on rm.user_id=dm.user_id where post_id=" + s + "";
        vcom = new SqlCommand(query, scon);
        DataTable dt = new DataTable();
        using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
        {
            sda.Fill(dt);
        }
        Repeater rpt = (Repeater)e.Item.FindControl("rptChild");
        rpt.DataSource = dt;
        rpt.DataBind();
    }

    protected void btnPostReply_Click(object sender, EventArgs e)
    {
        var btn = (Button)sender;
        var child = (RepeaterItem)btn.NamingContainer;
        var hf = (HiddenField)child.FindControl("hfPostId");
        var txt = (TextBox)child.FindControl("txtPostReply");
        string query = "insert into reply_master(post_id,user_id,reply_comment) values('" + hf.Value + "','" + sessionId + "','" + txt.Text + "')";
        vcom = new SqlCommand(query, scon);
        DataTable dt = new DataTable();
        using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
        {
            sda.Fill(dt);
        }
        txt.Text = "";
        repeaterData();
    }

    protected void rptChild_ItemDataBound(object sender, RepeaterItemEventArgs e)
    {
        HiddenField hf = (HiddenField)e.Item.FindControl("chfPostId");
        hf.Value = postid;
    }

    protected void btnFetchFilterData_Click(object sender, EventArgs e)
    {
        filter(check);
        filterData = "";
        rbDoctorName.Checked = false;
        rbSpecialization.Checked = false;
        gdFilter.DataSource = null;
        gdFilter.DataBind();
        if (check == 0)
        {

           // Response.Write("Post tagged with: ");
            for (int i = 0; i < filterName.Count; i++)
            {
                if (i != 0)
                    Response.Write(",");
                Response.Write(filterName[i]);
            }
            filterName.Clear();
        }
    }


    protected void UpdatePanel1_Load(object sender, EventArgs e)
    {
        for (int i = 0; i < gdFilter.Rows.Count; i++)
        {

            var cb = (CheckBox)gdFilter.Rows[i].FindControl("cbFilter");
            if (cb.Checked)
            {
                if (filterData != "")
                    filterData += ",";
                filterData += "'" + gdFilter.Rows[i].Cells[2].Text + "'";
                listPrivateFilter.Add(gdFilter.Rows[i].Cells[2].Text);

            }

        }
        if (rbDoctorName.Checked)
        {
            gdFilter.Visible = true;
            string query = "select Name,user_id from user_master where Roll_Id=1";
            vcom = new SqlCommand(query, scon);
            DataTable dt = new DataTable();
            using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
            {
                sda.Fill(dt);
            }
            gdFilter.DataSource = dt;
            gdFilter.DataBind();
        }
        else if (rbSpecialization.Checked)
        {

            gdFilter.Visible = true;
            string query = "select Specialization,user_id from user_master where Roll_Id=1";
            vcom = new SqlCommand(query, scon);
            DataTable dt = new DataTable();
            using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
            {
                sda.Fill(dt);
            }
            gdFilter.DataSource = dt;
            gdFilter.DataBind();

        }
    }
    protected void rbPrivate_CheckedChanged(object sender, EventArgs e)
    {
        if (rbPrivate.Checked)
        {
            check = 0;
            ScriptManager.RegisterStartupScript(Page, Page.GetType(), "abc", "$('#myModal').modal('show');", true);
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        for (int i = 0; i < listPrivateFilter.Count; i++)
        {
            Response.Write(listPrivateFilter[i]);
        }
    }
}