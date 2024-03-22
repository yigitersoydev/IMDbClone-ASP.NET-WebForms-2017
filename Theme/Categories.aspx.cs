using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Theme_Categories : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control CategoriesUC2 = (Control)Page.LoadControl("UCs/Categories.ascx");
        ph_Categories.Controls.Add(CategoriesUC2);
    }
}