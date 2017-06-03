using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
public partial class _Default : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

      
        txtId.Text = Session["user_id"].ToString();
        btnPunch.Enabled  = false;
    }

    protected void btnDisplay_Click(object sender, EventArgs e)
    {
        
        DataTable dt = new DataTable();
        dt.Columns.Add("SlotNo");
        dt.Columns.Add("Time Slot");
        btnPunch.Visible = true;
        int start, start1, end, hours, minutes, slotTime, slots, watch = 0;
        string slotTime1, slotTime2;
        start = start1 = Convert.ToInt32(ddlStart.Text);
        end = Convert.ToInt32(ddlEnd.Text);
        slotTime = Convert.ToInt32(ddlSlot.Text);
        if (start >= end)
        {
            ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Please enter valid end time');", true);
        }
        else
        {
            btnPunch.Enabled = true;
            slotTime1 = "00";
            slotTime2 = Convert.ToString(Convert.ToInt32(slotTime1) + slotTime);
            hours = end - start;
            minutes = 60 * hours;
            slots = minutes / slotTime;
            for (int i = 0; i < slots; i++)
            {
                DataRow dr = dt.NewRow();
                dr["SlotNo"] = i + 1;
                dr["Time Slot"] = start + ":" + slotTime1 + "-" + start1 + ":" + slotTime2;
                if (watch == 1)
                {
                    ++start;
                    watch = 0;
                }
                dt.Rows.Add(dr);
                if (slotTime2 != "00")
                {
                    slotTime1 = Convert.ToString(Convert.ToInt32(slotTime2) + 1);
                }
                else
                {
                    ++start;
                    slotTime1 = "00";
                }
                slotTime2 = Convert.ToString(Convert.ToInt32(slotTime2) + slotTime);
                if (Convert.ToInt32(slotTime2) % 60 == 0)
                {
                    ++start1;
                    slotTime2 = "00";
                }
                else if (Convert.ToInt32(slotTime2) > 60)
                {
                    slotTime2 = Convert.ToString(Convert.ToInt32(slotTime2) - 60);
                    ++start1;
                    watch = 1;
                }

            }
            gdvSchedule.DataSource = dt;
            gdvSchedule.DataBind();
        }
    }
    protected void btnPunch_Click(object sender, EventArgs e)
    {
        string s = txtId.Text;
        foreach (GridViewRow row in gdvSchedule.Rows)
        {
            if (row.RowType == DataControlRowType.DataRow)
            {
                string query;
                Label lbl = row.FindControl("lblTimeSlot") as Label;
                CheckBox cbm = row.FindControl("chkMon") as CheckBox;
                CheckBox cbt = row.FindControl("chkTue") as CheckBox;
                CheckBox cbw = row.FindControl("chkWed") as CheckBox;
                CheckBox cbth = row.FindControl("chkThu") as CheckBox;
                CheckBox cbf = row.FindControl("chkFri") as CheckBox;
                CheckBox cbs = row.FindControl("chkSat") as CheckBox;
                SqlConnection scon;
                string con = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
                scon = new SqlConnection(con);
                scon.Open();
                SqlCommand vcom = new SqlCommand();
                using (SqlCommand cmd = new SqlCommand())
                {
                    if (cbm.Checked)
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','"+s+"','Monday','Yes')";
                        schedulePunch(vcom,query, scon);                        
                    }

                    else
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Monday','No')";
                        schedulePunch(vcom, query, scon);                    
                    }

                    if(cbt.Checked )
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Tuesday','Yes')";
                        schedulePunch(vcom, query, scon); 
                    }

                    else
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Tuesday','No')";
                        schedulePunch(vcom, query, scon); 
                    }

                    if (cbw.Checked)
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Wedensday','Yes')";
                        schedulePunch(vcom, query, scon); 
                    }

                    else
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Wedensday','No')";
                        schedulePunch(vcom, query, scon); 
                    }

                    if (cbth.Checked)
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Thursday','Yes')";
                        schedulePunch(vcom, query, scon); 
                    }

                    else
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Thursday','No')";
                        schedulePunch(vcom, query, scon); 
                    }

                    if (cbf.Checked)
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Friday','Yes')";
                        schedulePunch(vcom, query, scon); 
                    }

                    else
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Friday','No')";
                        schedulePunch(vcom, query, scon); 
                    }

                    if (cbs.Checked)
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Saturday','Yes')";
                        schedulePunch(vcom, query, scon); 
                    }
                                     
                    else
                    {
                        query = "insert into doctorSchedule_Master(slot_time,user_id,days,availability) values('" + lbl.Text + "','" + s + "','Saturday','No')";
                        schedulePunch(vcom, query, scon); 
                    }                                                                           
                }
            }
        }
        btnPunch.Enabled = false;
        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Schedule Punched');", true);
    }
    protected void schedulePunch(SqlCommand vcom,string query,SqlConnection scon)
    {
        vcom = new SqlCommand(query, scon);
        DataTable dt = new DataTable();
        using (SqlDataAdapter sda = new SqlDataAdapter(vcom))
        {
            sda.Fill(dt);
        }

    }
}