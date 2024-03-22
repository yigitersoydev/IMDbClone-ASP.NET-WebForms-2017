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

public partial class Theme_UCs_Categories : System.Web.UI.UserControl
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {

        DataTable dt = baglan.veriCek("select * from Genres ORDER BY ID ASC");
        rptr_Categories.DataSource = dt;
        rptr_Categories.DataBind();
        
    }
   /* public void Listedoldur()
    {
        // bağlantı cümlemiz
        string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
   
        // veritabanı bağlantısı yapılıyor  
        using (SqlConnection baglanti = new SqlConnection(bag_str))
            try
            {
                // bağlantı açıldı  
                baglanti.Open();

                // Sorgumuz
                SqlCommand mySqlCommand = new SqlCommand("Select GenreName from Genres", baglanti);
                SqlDataAdapter mySqlDataAdapter = new SqlDataAdapter(mySqlCommand);
                DataSet myDataSet = new DataSet();
                mySqlDataAdapter.Fill(myDataSet);
                DropDownList1.DataSource = myDataSet;
                DropDownList1.DataTextField = "GenreName";
                DropDownList1.DataBind();

            }
            catch (Exception ex)
            {
                Label1.Text = ex.Message;
            }
            finally
            {
            
                baglanti.Close();
            }
        }
    
}*/
    protected string WriteUrl(string GenreID, string GenreName)
    {
        string tempUrl = UrlSeo(GenreName);
        return Page.GetRouteUrl("Categories", new { ID = GenreID, NewTitle = tempUrl });

    }
    public static string UrlSeo(string Metin)
    {
        string deger = Metin;
        deger = deger.Replace("'", "");
        deger = deger.Replace(".", "");
        deger = deger.Replace(",", "");
        deger = deger.Replace(" ", "-");
        deger = deger.Replace("<", "-");
        deger = deger.Replace(">", "-");
        deger = deger.Replace("&", "-");
        deger = deger.Replace("[", "-");
        deger = deger.Replace("!", "");
        deger = deger.Replace("?", "");
        deger = deger.Replace("]", "-");
        deger = deger.Replace("ı", "i");
        deger = deger.Replace("ö", "o");
        deger = deger.Replace("ü", "u");
        deger = deger.Replace("ş", "s");
        deger = deger.Replace("ç", "c");
        deger = deger.Replace("ğ", "g");
        deger = deger.Replace("İ", "i");
        deger = deger.Replace("Ö", "o");
        deger = deger.Replace("Ü", "u");
        deger = deger.Replace("Ş", "s");
        deger = deger.Replace("Ç", "c");
        deger = deger.Replace("Ğ", "g");

        return deger;
    }
  
}