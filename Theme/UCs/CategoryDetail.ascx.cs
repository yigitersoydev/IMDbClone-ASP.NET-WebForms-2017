using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Web.Routing;
using System.Data.SqlClient;

public partial class Theme_UCs_CategoryDetail : System.Web.UI.UserControl
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        string genreid = Page.RouteData.Values["ID"] as string;

        DataTable dt = baglan.veriCek("SELECT * FROM Movies M INNER JOIN GenreMovie GM ON GM.MovieID = M.ID INNER JOIN Genres G ON G.ID = GM.GenreID WHERE GenreID=" + genreid + " ORDER BY Title");

        rptr_CategoryDetail.DataSource = dt;
        rptr_CategoryDetail.DataBind();

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
        deger = deger.Replace("=", "");
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