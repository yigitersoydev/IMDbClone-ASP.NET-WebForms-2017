using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;
using System.Web.Configuration;
using System.Data.SqlClient;

public partial class Panel_Library : System.Web.UI.Page
{
    veritabani baglan = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["url"] = Request.Url.Authority;



        DataTable dt = baglan.veriCek("Select * From Library");
        librarygrid.DataSource = dt;
        librarygrid.DataBind();

        string q = Request.QueryString["q"];
        //  Response.Write("<script>alert("+q+"); </script>");
        if (q != null)
        {


            string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
            SqlConnection baglanti = new SqlConnection(bag_str);
            baglanti.Open();
            SqlCommand sorgum = new SqlCommand("select LibraryContent from Library where ID=" + q.ToString(), baglanti);
            SqlDataReader dr = sorgum.ExecuteReader();
            if (dr.Read())
            {
                string Yol = dr["LibraryContent"].ToString();
                File.Delete(Request.PhysicalApplicationPath + "Library/" + Yol);
                baglan.sorgu("delete from Library where LibraryID=" + q);
                Response.Redirect("Library.aspx");

                _success.Visible = true;
            }
            else
            {
                _error.Visible = true;
            }



        }
    }
}