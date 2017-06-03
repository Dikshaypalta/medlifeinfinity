using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using QRCoder;
using System.IO;
using System.Drawing;
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
    static int id;
    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            id = Convert.ToInt32(Session["user_id"].ToString());
            string str = Convert.ToString(ConfigurationManager.ConnectionStrings["medlife"].ConnectionString);
            SqlConnection vcon = new SqlConnection(str);
            if (vcon.State == ConnectionState.Closed)
                vcon.Open();
            SqlCommand vcom = new SqlCommand();
            vcom.Connection = vcon;
            vcom.CommandText = "select Name from user_master where user_id=@user_id";
            vcom.Parameters.AddWithValue("@user_id", id);
             SqlDataReader dr = vcom.ExecuteReader();
             if (dr != null)
             {
                 while (dr.Read())
                 {
                     lblname.Text= dr["Name"].ToString();
                 }
             }
        }
         catch (Exception ex1)
            {
                ClientScript.RegisterStartupScript(this.GetType(), "Client Script", "alert('Data Not Available.');", true);

            }
        }

 




    protected void btnGenerate_Click(object sender, EventArgs e)
    {
        string result = lblname.Text.Substring(0, 2);
        string code = "MED" + result + "_" + id;
        QRCodeGenerator qrGenerator = new QRCodeGenerator();
        QRCodeGenerator.QRCode qrCode = qrGenerator.CreateQrCode(code, QRCodeGenerator.ECCLevel.Q);
        System.Web.UI.WebControls.Image imgBarCode = new System.Web.UI.WebControls.Image();
        imgBarCode.Height = 350;
        imgBarCode.Width = 350;
        using (Bitmap bitMap = qrCode.GetGraphic(20))
        {
            using (MemoryStream ms = new MemoryStream())
            {
                bitMap.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                byte[] byteImage = ms.ToArray();
                imgBarCode.ImageUrl = "data:image/png;base64," + Convert.ToBase64String(byteImage);
            }
            plBarCode.Controls.Add(imgBarCode);
        }


    }
}