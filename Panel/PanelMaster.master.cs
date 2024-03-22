using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Panel_PanelMaster : System.Web.UI.MasterPage
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] == null)
        {
            Response.Redirect("~/Login.aspx");
        }
        else
        {


        }


        DataRow dizi = baglan.DataRowGetir("select COUNT(*) as sayi from Contact");
        lblCountMessage.Text = dizi["sayi"].ToString();
        headerMessageCount.Text = dizi["sayi"].ToString();
        _headerMessageCount.Text = dizi["sayi"].ToString();


        DataTable dt = baglan.veriCek("Select TOP 5 * From Contact ORDER BY ID DESC");
        rptr_message.DataSource = dt;
        rptr_message.DataBind();
    }
    protected void btnCikis_Click(object sender, EventArgs e)
    {

        Session.Abandon();
        Response.Redirect("~/Login.aspx");

    }
}
