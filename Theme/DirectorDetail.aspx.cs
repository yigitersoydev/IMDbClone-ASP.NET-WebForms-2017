using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Theme_DirectorDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control DirectorUC2 = (Control)Page.LoadControl("UCs/Director_Detail.ascx");
        ph_DirectorDetail.Controls.Add(DirectorUC2);

        Control DirectorMovieUC2 = (Control)Page.LoadControl("UCs/DirectorMovies.ascx");
        ph_DirectorMovies.Controls.Add(DirectorMovieUC2);
    }
}