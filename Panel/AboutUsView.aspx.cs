using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Panel_AboutUsView : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = baglan.veriCek("Select * From About order by ID ASC");
        aboutgrid.DataSource = dt;
        aboutgrid.DataBind();

        string edit = Request.QueryString["edit"];
        string del = Request.QueryString["del"];
        //  Response.Write("<script>alert("+q+"); </script>");
        if (del != null)
        {
            baglan.sorgu("delete from About where ID=" + del);
            Response.Redirect("AboutUsView.aspx");

        }
        if (edit != null)
        {
            Response.Redirect("AboutUsEdit.aspx?edit=" + edit);
        }
    }
}