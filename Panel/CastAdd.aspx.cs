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

public partial class Panel_CastAdd : System.Web.UI.Page
{
    string yol;
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_TakvimGoster_Click(object sender, EventArgs e)
    {
        clnBirth.Visible = true;
    }

    protected void clnRelease_SelectionChanged(object sender, EventArgs e)
    {
        txtBirth.Text = clnBirth.SelectedDate.Date.ToShortDateString();
        clnBirth.Visible = true;

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
        string yukleme = Request.PhysicalApplicationPath + "Images/CastImage/";

        if (FileUpload1.HasFile)
        {
            string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(yukleme + rndsayi + extension);
            yol = (rndsayi + extension).ToString();
        }

        SqlCommand sorgu = new SqlCommand("insert into Actors(FirstName,LastName,Birth,Nation,Image) values (@ad,@soyad,@tarih,@ulus,@resim)", baglanti);
        sorgu.Parameters.AddWithValue("@ad", txtAd.Text);
        sorgu.Parameters.AddWithValue("@soyad", txtSoyad.Text);
        sorgu.Parameters.AddWithValue("@tarih", DateTime.Parse(txtBirth.Text));
        sorgu.Parameters.AddWithValue("@ulus", txtNation.Text);
        sorgu.Parameters.AddWithValue("@resim", yol.ToString());
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