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

public partial class Theme_UCs_Director_Detail : System.Web.UI.UserControl
{
    protected void Page_Load(object sender, EventArgs e)
    {
        veritabani baglan = new veritabani();

        string directorid = Page.RouteData.Values["ID"] as string;
        string directorname = Page.RouteData.Values["FirstName"] as string;

        string movieid = Page.RouteData.Values["ID"] as string;
        string moviebaslik = Page.RouteData.Values["Title"] as string;

        Page.Title = directorname;
        Page.MetaDescription = directorname;

        DataTable dt = baglan.veriCek("select * from Directors where ID=" + directorid);

        rptr_Director_Detail.DataSource = dt;
        rptr_Director_Detail.DataBind();
    }
}