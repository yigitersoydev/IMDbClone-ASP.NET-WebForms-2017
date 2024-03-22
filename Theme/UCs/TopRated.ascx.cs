using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Theme_UCs_TopRated : System.Web.UI.UserControl
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = baglan.veriCek("select TOP 50 * from Movies ORDER BY Rate DESC");

        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 6;
        int sayfa;

        
        rptr_TopRated_Movies.DataSource = dt;
        rptr_TopRated_Movies.DataBind();
    }
    protected string WriteUrl(string MovieID, string MovieBaslik)
    {
        string tempUrl = UrlSeo(MovieBaslik);
        //return Page.GetRouteUrl("MovieDetail", new { ID = MovieID, Title = tempUrl });
        return Page.GetRouteUrl("MovieDetail", new { ID = MovieID, NewTitle = tempUrl });

    }
    public static string UrlSeo(string Metin)
    {
        string deger = Metin;
        deger = deger.Replace("'", "");
        deger = deger.Replace(".", "");
        deger = deger.Replace(",", "");
        deger = deger.Replace(" ", "-");
        deger = deger.Replace(":", "");
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