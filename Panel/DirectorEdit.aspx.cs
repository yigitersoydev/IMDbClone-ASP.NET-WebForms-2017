using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Panel_DirectorEdit : System.Web.UI.Page
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

                SqlCommand komut = new SqlCommand("select * from Directors where ID=" + edit, baglanti);
                SqlDataReader oku = komut.ExecuteReader();



                if (oku.Read())
                {
                    txtAd.Text = oku["FirstName"].ToString();
                    txtSoyad.Text = oku["LastName"].ToString();
                    txtNation.Text = oku["Nation"].ToString();
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

            int sonucx = DB.sorgu("update Directors SET FirstName='" + txtAd.Text + "', LastName='" + txtSoyad.Text + "', Nation= '" + txtNation.Text + "' where ID=" + Request.QueryString["edit"].ToString() + "");
            if (sonucx == 1)
            {
                success.Visible = true;
            }
            else
            {
                error.Visible = true;
            }

        }

        catch (Exception istisna)
        {

            Response.Redirect("../Error.aspx?hata=" + istisna.Message);
        }
    }
}