using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Theme_Movies : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control MoviesUC2 = (Control)Page.LoadControl("UCs/Movies.ascx");
        ph_Movies.Controls.Add(MoviesUC2);

    }
}