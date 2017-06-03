using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Script.Services;
using System.Web.Services;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            DataTable vdt = new DataTable();
            vdt.Columns.Add(new DataColumn("Morning"));
            vdt.Columns.Add(new DataColumn("Afternoon"));
            vdt.Columns.Add(new DataColumn("Evening"));
            vdt.Columns.Add(new DataColumn("Night"));
            vdt.Columns.Add(new DataColumn("Precautions"));
            DataRow dr = vdt.NewRow();
            dr["Morning"] = "";
            dr["Afternoon"] = "";
            dr["Evening"] = "";
            dr["Night"] = "";
            dr["Precautions"] = "";
            vdt.Rows.Add(dr);
            rptDietPlan.DataSource = vdt;
            rptDietPlan.DataBind();
        }
    }
    public class Employee
    {
        public string Id;
        public string Name;
        public string Image;
    }



    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static List<Employee> GetEmployee(string pre)
    {
        List<Employee> emp = new List<Employee>();
        string query = "select user_id as EntryBy_Id, (Name) as Name, Image as Image from user_master where Roll_Id='1' AND Name like '" + pre + "%'";
        string constr = Convert.ToString(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlConnection vcon = new SqlConnection(constr);
        SqlDataAdapter vadt = new SqlDataAdapter(query, vcon);
        DataTable vdt = new DataTable();
        vadt.Fill(vdt);
        emp = (from DataRow dr in vdt.Rows
               select new Employee()
               {
                   Id = dr["EntryBy_Id"].ToString(),
                   Name = dr["Name"].ToString(),
                   Image = dr["Image"].ToString(),
               }).ToList();
        return emp;
    }

    public class DietPlan
    {
        public string Morning;
        public string Afternoon;
        public string Evening;
        public string Night;
        public string Precautions;
    }

    [WebMethod]
    [ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    public static List<DietPlan> GetDietPaln(string Id)
    {
        List<DietPlan> diet = new List<DietPlan>();
        string constr = Convert.ToString(ConfigurationManager.ConnectionStrings["constr"].ConnectionString);
        SqlConnection vcon = new SqlConnection(constr);
        SqlDataAdapter vadt = new SqlDataAdapter("pshowdietplan1", vcon);
        vadt.SelectCommand.CommandType = CommandType.StoredProcedure;
        vadt.SelectCommand.Parameters.AddWithValue("@Id", Id);
        DataTable vdt = new DataTable();
        vadt.Fill(vdt);
        diet = (from DataRow dr in vdt.Rows
                select new DietPlan()
                {
                    Morning = dr["Morning"].ToString(),
                    Afternoon = dr["Afternoon"].ToString(),
                    Evening = dr["Evening"].ToString(),
                    Night = dr["Night"].ToString(),
                    Precautions = dr["Precautions"].ToString()
                }).ToList();
        return diet;
    }
}