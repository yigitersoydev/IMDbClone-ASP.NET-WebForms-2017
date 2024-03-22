using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Theme_ActorDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control CastUC2 = (Control)Page.LoadControl("UCs/Actor_Detail.ascx");
        ph_ActorDetail.Controls.Add(CastUC2);

        Control ActorMovieUC2 = (Control)Page.LoadControl("UCs/ActorMovies.ascx");
        ph_ActorMovies.Controls.Add(ActorMovieUC2);
    }
}