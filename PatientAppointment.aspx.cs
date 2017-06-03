using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    static string date,days,scheduleId,weekDay;
    static int record=0;   
    SqlConnection scon;
    SqlCommand vcom;
    string con = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);     
    protected void Page_Load(object sender, EventArgs e)
    {
        MaintainScrollPositionOnPostBack = true;
        scon = new SqlConnection(con);
        scon.Open();
        if (!IsPostBack)
        {
            string Query = "select  Specialization from user_master where Roll_Id='1'";
            // postQuery = "select post_id,title,query,date from post_master where doctor_id=100" + "select doctor_name,image_url from doctor_master where doctor_id=100" + "select post_id from visible_master where doctor_id=100";
            vcom = new SqlCommand(Query, scon);
            DataTable dt = new DataTable();
            using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
            {
                sda.Fill(dt);
            }
            ddlSpecialization.DataSource = dt;
            ddlSpecialization.DataTextField = "specialization";           
            ddlSpecialization.DataBind();
            ddlSpecialization.Items.Insert(0, new ListItem("--Select--", "0"));           
        }
    }
   protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
    {
        if (Calendar1.SelectedDate == null || Calendar1.SelectedDate == new DateTime(0001, 1, 1, 0, 0, 0))// not click any date
            args.IsValid = false;
        else
            args.IsValid = true;
    }
   protected void ddlSpecialization_SelectedIndexChanged(object sender, EventArgs e)
   {      
           if (ddlSpecialization.SelectedIndex != 0)
           {
               scon = new SqlConnection(con);
               scon.Open();
               string postQuery = "select  user_id,doctor_name from doctor_master where specialization='" + ddlSpecialization.SelectedItem.Text.ToString() + "'";
               // postQuery = "select post_id,title,query,date from post_master where doctor_id=100" + "select doctor_name,image_url from doctor_master where doctor_id=100" + "select post_id from visible_master where doctor_id=100";
               vcom = new SqlCommand(postQuery, scon);
               DataTable dt = new DataTable();
               using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
               {
                   sda.Fill(dt);
               }
               ddldoctor.DataSource = dt;
               ddldoctor.DataTextField = "doctor_name";
               ddldoctor.DataValueField = "doctor_id";
               ddldoctor.DataBind();
               ddldoctor.Items.Insert(0, new ListItem("--Select--", "0"));  
       }
   }
   protected void Calendar1_SelectionChanged(object sender, EventArgs e)
   {
    string Query;    
    date = Calendar1.SelectedDate.ToShortDateString();
    days = Calendar1.SelectedDate.DayOfWeek.ToString();
    scon = new SqlConnection(con);
    scon.Open();
    string slotQuery = "select slot_id from appointment_master where date='"+date+"' and user_id='"+ddldoctor.SelectedValue+"'";
    vcom = new SqlCommand(slotQuery, scon);
    DataTable dt = new DataTable();
    using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
    {
        sda.Fill(dt);
    }
  
    if (dt.Rows.Count==0)
    {
        Query = "select schedule_id,slot_time,days from doctorSchedule_Master where user_id='" + ddldoctor.SelectedValue + "' and availability='yes' and days='" + days + "'";
    }
    else
    {
        string slotId="";
        for (int i = 0; i < dt.Rows.Count; i++)
        {
            if (i > 0)
            {
                slotId += "," + dt.Rows[i].ItemArray[0].ToString();
            }
            else
            slotId = dt.Rows[i].ItemArray[0].ToString();            
        }        

        Query = "select schedule_id,slot_time,days from doctorSchedule_Master where user_id='" + ddldoctor.SelectedValue + "' and availability='yes' and days='" + days + "'and schedule_id not in("+slotId+")";       
    }
    // postQuery = "select post_id,title,query,date from post_master where doctor_id=100" + "select doctor_name,image_url from doctor_master where doctor_id=100" + "select post_id from visible_master where doctor_id=100";
    vcom = new SqlCommand(Query, scon);
    dt.Clear();       
    using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
    {
        sda.Fill(dt);
    }
    rptSlotTime.DataSource = dt;
    rptSlotTime.DataBind();
    if (rptSlotTime.Items.Count == 0){
        rptSlotTime.Visible = false;
        Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('No free Slot Available on this date');", true);
    }
    else
        rptSlotTime.Visible = true;
   }
   protected void chkSelect_CheckedChanged(object sender, EventArgs e)
   {
       CheckBox cb1 = sender as CheckBox;      
       foreach (RepeaterItem ri in rptSlotTime.Items)
       {           
           CheckBox cb = ri.FindControl("chkSelect") as CheckBox;
           if (cb1 == cb && cb1.Checked)
           {
               Label schedule = ri.FindControl("lblId") as Label;               
               Label day = ri.FindControl("lblDay") as Label;
               scheduleId = schedule.Text;              
               weekDay = day.Text;              
           }
           else
           cb.Checked = false;
       }                     
   }
   protected void btnbook_Click(object sender, EventArgs e)
   {
       scon = new SqlConnection(con);
       scon.Open();
       foreach (RepeaterItem ri in rptSlotTime.Items)
       {
           CheckBox cb = ri.FindControl("chkSelect") as CheckBox;
           if (cb.Checked)
               record = 1;
       }
       if (record != 0) 
       {
           string Query = "insert into appointment_master(fullName,bloodGroup,gender,address,mobile,slot_id,user_id,days,status,date) values('" + txtfname.Text + "','" + ddlbg.SelectedItem.Text.ToString() + "','" + rblgender.SelectedValue.ToString() + "','" + txtaddress.Text + "','" + txtmobile.Text + "','" + scheduleId + "','" + ddldoctor.SelectedValue + "','" + weekDay + "','booked','" + date + "')";
           vcom = new SqlCommand(Query, scon);
           DataTable dt = new DataTable();
           using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
           {
               sda.Fill(dt);
           }
           Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Appointment Booked');", true);
           reset();
       }
       else
           Page.ClientScript.RegisterStartupScript(GetType(), "msgbox", "alert('Please select some slot time');", true);
             
   }
   protected void btnreset_Click(object sender, EventArgs e)
   {
       reset();
   }
   protected void reset()
   {
       txtfname.Text = "";
       txtmobile.Text = "";
       txtaddress.Text = "";
       ddlbg.SelectedIndex = 0;
       ddlSpecialization.SelectedIndex = 0;
       ddldoctor.Items.Clear();
       rptSlotTime.DataSource = null;
       rblgender.SelectedIndex = -1;
       Calendar1.SelectedDates.Clear();
       rptSlotTime.DataSource = null;
       rptSlotTime.DataBind();
   }
}