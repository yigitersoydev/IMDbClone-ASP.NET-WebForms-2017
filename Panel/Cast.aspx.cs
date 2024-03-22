﻿using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Panel_Cast : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        DataTable dt = baglan.veriCek("Select * From Actors order by ID desc");

        PagedDataSource pds = new PagedDataSource();
        pds.DataSource = dt.DefaultView;
        pds.AllowPaging = true;
        pds.PageSize = 10;
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
            hyper.NavigateUrl = "/Panel/Cast.aspx?sayfa=" + i.ToString();

            pnlsyf.Controls.Add(hyper);
        }

        newsgrid.DataSource = pds;
        newsgrid.DataBind();

        string edit = Request.QueryString["edit"];
        string del = Request.QueryString["del"];
        //  Response.Write("<script>alert("+q+"); </script>");
        if (del != null)
        {
            baglan.sorgu("delete from Actors where ID=" + del);
            Response.Redirect("Cast.aspx");

        }
        if (edit != null)
        {
            Response.Redirect("CastEdit.aspx?edit=" + edit);
        }
    }
}