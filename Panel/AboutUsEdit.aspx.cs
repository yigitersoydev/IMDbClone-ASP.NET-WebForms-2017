using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

public partial class Panel_AboutUsEdit : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack)
        {


            try
            {

                string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
                SqlConnection baglanti = new SqlConnection(bag_str);
                baglanti.Open();

                string edit = Request.QueryString["edit"];

                SqlCommand komut = new SqlCommand("select * from about where ID=" + edit, baglanti);
                SqlDataReader oku = komut.ExecuteReader();



                if (oku.Read())
                {
                    txtBaslik.Text = oku["AboutTitle"].ToString();
                    CKEditor1.Text = oku["AboutContent"].ToString();

                }
                else
                {
                    error.Visible = true;
                }
                baglanti.Close();
                baglanti.Dispose();

            }
            catch (Exception ex)
            {

                Response.Redirect("../Error.aspx?hata=" + ex.Message);
            }
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        string query = Request.QueryString["edit"].ToString();
        try
        {
            veritabani DB = new veritabani();
            if (chk_timeUpdate.Checked)
            {
                int sonucx = DB.sorgu("update about SET AboutTitle='" + txtBaslik.Text + "', AboutContent= '" + CKEditor1.Text + "', AboutDate= '" + DateTime.Now.ToShortDateString() + "' where ID=" + Request.QueryString["edit"].ToString() + "");
                if (sonucx == 1)
                {
                    success.Visible = true;
                }
                else
                {
                    error.Visible = true;
                }
            }
            else
            {
                int sonuc = DB.sorgu("update about SET AboutTitle='" + txtBaslik.Text + "', AboutContent= '" + CKEditor1.Text + "' where ID=" + Request.QueryString["edit"].ToString() + "");
                if (sonuc == 1)
                {
                    success.Visible = true;
                }
                else
                {
                    error.Visible = true;
                }
            }
        }





        catch (Exception istisna)
        {

            Response.Redirect("../Error.aspx?hata=" + istisna.Message);
        }



    }
}