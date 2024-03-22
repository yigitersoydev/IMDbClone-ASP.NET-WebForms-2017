using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class Theme_Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control NewlyUC = (Control)Page.LoadControl("UCs/Newly_Added.ascx");
        ph_NewlyAdded.Controls.Add(NewlyUC);

        Control CategoriesUC = (Control)Page.LoadControl("UCs/Categories.ascx");
        ph_Categories.Controls.Add(CategoriesUC);

        Control YearMoviesUC = (Control)Page.LoadControl("UCs/YearMovies.ascx");
        ph_YearMovies.Controls.Add(YearMoviesUC);
    }
}