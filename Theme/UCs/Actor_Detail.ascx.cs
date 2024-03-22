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

public partial class Theme_UCs_Actor_Detail : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        veritabani baglan = new veritabani();
     /*
        SqlDataAdapter da;
        string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(bag_str);
        */
        string actorid = Page.RouteData.Values["ID"] as string;
        string actorname = Page.RouteData.Values["FirstName"] as string;
        string movieid = Page.RouteData.Values["ID"] as string;
        string moviebaslik = Page.RouteData.Values["Title"] as string;

        Page.Title = actorname;
        Page.MetaDescription = actorname;
   /*
        DataSet ds = new DataSet();
        DataTable dtOyuncular = new DataTable();
        DataTable dtFilmler = new DataTable();
        DataTable dtBridge = new DataTable();
    
        da = new SqlDataAdapter("SELECT * FROM Actors",baglanti);
        da.Fill(dtOyuncular);
        dtOyuncular.PrimaryKey = new DataColumn[] { dtOyuncular.Columns["ActorID"]};
        ds.Tables.Add(dtOyuncular);

        da = new SqlDataAdapter("SELECT * FROM Movies",baglanti);
        da.Fill(dtFilmler);
        ds.Tables.Add(dtFilmler);

        da = new SqlDataAdapter("SELECT * FROM Bridge",baglanti);
        da.Fill(dtBridge);
        ds.Tables.Add(dtBridge);

        ds.Relations.Add("Actor_Bridge", dtOyuncular.Columns["ActorID"], dtBridge.Columns["ActorID"], false);
        ds.Relations.Add("Movies_Bridge", dtFilmler.Columns["MovieID"], dtBridge.Columns["MovieID"], false);

    --------- */
        //string haberID = Request.QueryString["NewID"].ToString();
        DataTable dt = baglan.veriCek("select * from Actors where ID=" + actorid);
        //DataTable dt2 = baglan.veriCek("select Title,Poster,ReleaseDate,Rate from Movies where MovieID IN(Select MovieID from Bridge where ActorID IN(select ActorID from Actors where ActorID=" + actorid + "))");
        //DataTable dt2 = baglan.veriCek("SELECT Title FROM Movies WHERE MovieID IN(SELECT * FROM Bridge WHERE MovieID = (SELECT MovieID FROM Movies WHERE MovieID=18) AND ActorID = ( SELECT ActorID FROM Actors WHERE ActorID=" + actorid + "))");
       
       
        rptr_Actor_Detail.DataSource = dt;
        rptr_Actor_Detail.DataBind();
        //rptr_Actor_Detail_Movies.DataSource = dt2;
       // rptr_Actor_Detail_Movies.DataBind();
        
    }
}