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

public partial class Theme_UCs_DirectorMovies : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        veritabani baglan = new veritabani();

        string directorid = Page.RouteData.Values["ID"] as string;
        string directorname = Page.RouteData.Values["FirstName"] as string;

        DataTable dt = baglan.veriCek("SELECT * FROM Movies M INNER JOIN DirectorMovie DM ON DM.MovieID = M.ID INNER JOIN Directors D ON D.ID = DM.DirectorID WHERE DirectorID=" + directorid + " ORDER BY ReleaseDate DESC");


        rptr_DirectorMovies.DataSource = dt;
        rptr_DirectorMovies.DataBind();
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