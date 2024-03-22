using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Theme_AboutUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Control aboutUC2 = (Control)Page.LoadControl("UCs/AboutUs.ascx");
        ph_AboutUs.Controls.Add(aboutUC2);
    }
}