using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

public partial class Panel_LibraryAdd : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    string yol;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(bag_str);
        baglanti.Open();

        string rndsayi = baglan.CreateRandomPassword();
        //int sayi;
        //Random rnd = new Random();
        //sayi = rnd.Next(0, 2147483646);
        string yukleme = Request.PhysicalApplicationPath + "Library/";


        if (FileUpload1.HasFile)
        {
            string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(yukleme + rndsayi + extension);
            yol = (rndsayi + extension).ToString();
        }
        SqlCommand sorgu = new SqlCommand("insert into Library(LibraryContent) values (@icerik)", baglanti);

        sorgu.Parameters.AddWithValue("@icerik", yol.ToString());



        int kontrol = sorgu.ExecuteNonQuery();
        if (kontrol == 1)
        {
            success.Visible = true;
        }
        else
        {
            success.Visible = false;
            error.Visible = false;
        }
    }
}