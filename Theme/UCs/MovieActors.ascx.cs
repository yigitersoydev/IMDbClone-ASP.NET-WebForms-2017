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

public partial class Theme_UCs_MovieActors : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        veritabani baglan = new veritabani();

        string actorid = Page.RouteData.Values["ID"] as string;
        string actorname = Page.RouteData.Values["FirstName"] as string;

        string movieid = Page.RouteData.Values["ID"] as string;
        string moviebaslik = Page.RouteData.Values["Title"] as string;

    
        DataTable dt = baglan.veriCek("SELECT * FROM Actors A INNER JOIN ActorMovie ACM ON ACM.ActorID = A.ID INNER JOIN Movies M ON M.ID = ACM.MovieID WHERE MovieID="+movieid+" ORDER BY FirstName");

        rptr_MovieActors.DataSource = dt;
        rptr_MovieActors.DataBind();
    }
    protected string WriteUrl(string ActorID, string ActorBaslik)
    {
        string tempUrl = UrlSeo(ActorBaslik);
        //return Page.GetRouteUrl("MovieDetail", new { ID = MovieID, Title = tempUrl });
        return Page.GetRouteUrl("ActorDetail", new { ID = ActorID, NewTitle = tempUrl });

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