using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Panel_CategoryAdd : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Page.IsPostBack)
        {
            Button1.Enabled = false;
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {

        try
        {
            string GenreName = TextBox1.Text;
            baglan.sorgu("insert into Genres(GenreName) values ('" + GenreName + "')");
            success.Visible = true;
        }
        catch (Exception)
        {
            success.Visible = false;
            error.Visible = true;
        }
    }
}