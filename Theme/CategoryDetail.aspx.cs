using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Theme_CategoryDetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control CategoryUC3 = (Control)Page.LoadControl("UCs/CategoryDetail.ascx");
        ph_CategoryDetail.Controls.Add(CategoryUC3);
    }
}