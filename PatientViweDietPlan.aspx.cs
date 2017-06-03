using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Web.Services;
using System.Web.Script.Services;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    //public class UserMaster
    //{
    //    public string Name;
    //    public string Image;
    //}
    //[WebMethod]
    //[ScriptMethod(ResponseFormat = ResponseFormat.Json)]
    //public static UserMaster GetCountry(string pre)
    //{
    ////    //List<user_master> allCountry = new List<user_master>();
    ////    //using(dietplandemoEntities1 dc=new dietplandemoEntities1())
    ////    //{
    ////    //    var a = dc.pSelectUserMaster().ToList();
    ////    //}
    ////    //return allCountry;
    ////    UserMaster obj = new UserMaster();
    ////    List<user_master> allCountry = new List<user_master>();
    ////    using (Db dc = new dietplandemoEntities())
    ////    {

    ////        var result = dc.user_master.Where(a => a.Name.StartsWith(pre)).OrderBy(a => a.Name).ToList();
    ////        foreach (var value in result)
    ////        {
    ////            obj.Name = value.Name;
    ////            obj.Image = value.Image;
    ////        }
    ////    }
    ////    return obj;

    ////}
}