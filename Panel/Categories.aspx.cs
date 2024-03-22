using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Collections.Specialized;
using System.Text;

public partial class Panel_Categories : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = baglan.veriCek("Select * From Genres");

        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 9;
        int sayfa;

        if (Request.QueryString["sayfa"] != null)
        {
            sayfa = Convert.ToInt32(Request.QueryString["sayfa"]);
        }
        else
        {
            sayfa = 1;
        }
        pds.CurrentPageIndex = sayfa - 1;
        for (int i = 1; i <= pds.PageCount; i++)
        {
            HyperLink hyper = new HyperLink();
            hyper.Text = i.ToString();
            hyper.NavigateUrl = "/Panel/Categories.aspx?sayfa=" + i.ToString();

            pnlsyf.Controls.Add(hyper);
        }

        membersgrid.DataSource = pds;
        membersgrid.DataBind();
        string q = Request.QueryString["q"];
        //  Response.Write("<script>alert("+q+"); </script>");
        if (q != null)
        {
            baglan.sorgu("delete from Genres where ID=" + q);
            Response.Redirect("Categories.aspx");

        }
    }
}