using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Panel_ContactUs : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = baglan.veriCek("Select * From Contact");
        contactgrid.DataSource = dt;
        contactgrid.DataBind();
        string q = Request.QueryString["q"];
        //  Response.Write("<script>alert("+q+"); </script>");
        if (q != null)
        {
            baglan.sorgu("delete from Contact where ID=" + q);
            Response.Redirect("ContactUs.aspx");
        }
    }
         protected void Button1_Click(object sender, EventArgs e)
    {
        baglan.sorgu("delete from Contact");
        
        
    }
}