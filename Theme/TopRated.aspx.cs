using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Theme_TopRated : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control TopRatedMoviesUC = (Control)Page.LoadControl("UCs/TopRated.ascx");
        ph_TopRated_Movies.Controls.Add(TopRatedMoviesUC);
    }
}