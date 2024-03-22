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

public partial class Panel_MovieAdd : System.Web.UI.Page
{
    string yol;
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
       
    }

    protected void btn_TakvimGoster_Click(object sender, EventArgs e) {
         clnRelease.Visible = true;
    }

    protected void clnRelease_SelectionChanged(object sender, EventArgs e)
    {
        txtRelease.Text = clnRelease.SelectedDate.Date.ToShortDateString();
        clnRelease.Visible = true;
       
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(bag_str);
        baglanti.Open();

        string rndsayi = baglan.CreateRandomPassword();
       
        string yukleme = Request.PhysicalApplicationPath + "Images/MovieImage/";

        if (FileUpload1.HasFile)
        {
            string extension = Path.GetExtension(FileUpload1.PostedFile.FileName);
            FileUpload1.SaveAs(yukleme + rndsayi + extension);
            yol = (rndsayi + extension).ToString();
        }

        SqlCommand sorgu = new SqlCommand("insert into Movies(Title,ReleaseDate,Rate,Poster,GenreName) values (@baslik,@tarih,@rate,@resim,@genre)", baglanti);
        sorgu.Parameters.AddWithValue("@baslik", txtBaslik.Text);
        sorgu.Parameters.AddWithValue("@tarih", DateTime.Parse(txtRelease.Text));
        sorgu.Parameters.AddWithValue("@rate", txtRate.Text);
        sorgu.Parameters.AddWithValue("@resim", yol.ToString());
        sorgu.Parameters.AddWithValue("@genre", dll_kategori.SelectedValue);
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