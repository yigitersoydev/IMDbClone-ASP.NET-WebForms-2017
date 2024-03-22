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

public partial class Theme_UCs_Movie_Detail : System.Web.UI.UserControl
{
  
    protected void Page_Load(object sender, EventArgs e)
    {
        veritabani baglan = new veritabani();

        string movieid = Page.RouteData.Values["ID"] as string;
        string moviebaslik = Page.RouteData.Values["Title"] as string;
        
        Page.Title = moviebaslik;
        Page.MetaDescription = moviebaslik;
        //string haberID = Request.QueryString["NewID"].ToString();


        DataTable dt = baglan.veriCek("select * from Movies where ID=" + movieid);
        //DataTable dt2 = baglan.veriCek("SELECT a.ActorID,a.FirstName,a.LastName,m.Title FROM Actors AS a INNER JOIN Bridge AS b ON a.ActorID = b.ActorID INNER JOIN Movies AS m ON b.MovieID = m.MovieID ORDER BY a.ActorID");

        //DataTable dt2 = baglan.veriCek("SELECT FirstName, LastName FROM Actors WHERE ActorID IN(SELECT ActorID FROM Bridge WHERE MovieID IN(SELECT MovieID FROM Movies WHERE MovieID="+movieid+"))");
        
        //DataTable dt2 = baglan.veriCek("SELECT Actors.FirstName, Actors.LastName FROM Movies INNER JOIN Actors ON Movies.MovieID = Actors.ActorID");
        
        //DataTable dt2 = baglan.veriCek("SELECT a.FirstName,a.LastName FROM Bridge b INNER JOIN Actors a on a.ActorID = b.ActorID INNER JOIN Movies m on b.MovieID = m.MovieID");
        
        //DataTable dt2 = baglan.veriCek("select FirstName, LastName from Actors where ActorID IN(Select ActorID from Bridge where MovieID=(select MovieID from Movies where MovieID="+movieid+"))");
        
        //DataTable dt2 = baglan.veriCek("select * from Actors, Movies, Bridge where Bridge.MovieID = Movies.MovieID AND Movies.MovieID=" + movieid + "");
        

        rptr_Movie_Detail.DataSource = dt;
        rptr_Movie_Detail.DataBind();
        //rptr_Movie_Detail_Cast.DataSource = dt2;
        //rptr_Movie_Detail_Cast.DataBind();



    }
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