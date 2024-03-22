using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public partial class Login : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["ID"] != null)
        {
            Response.Redirect("~/Panel/Default.aspx");
        }
    }
    protected void btnGir_Click(object sender, EventArgs e)
    {
        string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(bag_str);
        baglanti.Open();
        SqlCommand sorgu = new SqlCommand("select loginEmail,loginPass,loginName,ID from Login where loginEmail=@Email and loginPass=@pass", baglanti);
        sorgu.Parameters.AddWithValue("@Email", txtEmail.Text);
        sorgu.Parameters.AddWithValue("@pass", txtSifre.Text);
        SqlDataReader oku = sorgu.ExecuteReader();

        if (oku.Read())
        {
            Session["Ad"] = oku["loginName"].ToString();
            Session["ID"] = oku["ID"].ToString();
            Response.Redirect("~/Panel/Default.aspx");
        }
        else
        {
            lblHata.Text = "Giriş Başarısız...";
        }
    }
    protected void btnSiteyeGit_Click(object sender, EventArgs e)
    {
        Response.Redirect("~/Default.aspx");
    }
}