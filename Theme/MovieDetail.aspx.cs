using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Theme_MovieDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control MoviesUC2 = (Control)Page.LoadControl("UCs/Movie_Detail.ascx");
        ph_MovieDetail.Controls.Add(MoviesUC2);

        Control MovieDirectorUC2 = (Control)Page.LoadControl("UCs/MovieDirector.ascx");
        ph_MovieDirector.Controls.Add(MovieDirectorUC2);

        Control MovieActorUC2 = (Control)Page.LoadControl("UCs/MovieActors.ascx");
        ph_MovieActors.Controls.Add(MovieActorUC2);
    }
}