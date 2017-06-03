using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
public partial class Default3 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static List<string> SearchHospitals(string prefixText, int count)
    {
        SqlConnection scon;
        string con = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
        scon = new SqlConnection(con);
        using (SqlCommand cmd = new SqlCommand())
        {
            //    "select doctor_name from doctor_master where doctor_name like '%' +@SearchText+'%'" +
            //            "union select hospital_name from hospital_master where hospital_name like'%'+@SearchText+'%'";
            cmd.CommandText = "select hospital_name from hospital_master where hospital_name like'%'+@SearchText+'%'";
            cmd.Parameters.AddWithValue("@SearchText", prefixText);
            cmd.Connection = scon;
            scon.Open();
            List<string> customers = new List<string>();
            using (SqlDataReader sdr = cmd.ExecuteReader())
            {
                while (sdr.Read())
                {
                    customers.Add(sdr["hospital_name"].ToString());
                }
            }
            scon.Close();
            return customers;
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static string GetAddress(string name)
    {

        SqlConnection scon;
        string con = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
        scon = new SqlConnection(con);
        using (SqlCommand cmd = new SqlCommand())
        {
            cmd.CommandText = "select hospital_location from hospital_master where hospital_name like'%'+@SearchText+'%'";
            cmd.Parameters.AddWithValue("@SearchText", name);
            cmd.Connection = scon;
            scon.Open();
            string n = cmd.ExecuteScalar().ToString();
            scon.Close();
            if (n != null)
            {
                return n;
            }
            else
                return null;
        }
    }
    [System.Web.Script.Services.ScriptMethod()]
    [System.Web.Services.WebMethod]
    public static string search()
    {
        return "worked";
    }
}
