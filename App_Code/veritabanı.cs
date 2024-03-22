using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

public class veritabani
{
    public SqlConnection baglan()
    {
        string bag_str = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["baglanti"].ConnectionString;
        SqlConnection baglanti = new SqlConnection(bag_str);
        //baglanti.Open();
        return (baglanti);
    }
    public int sorgu(string DB_Komut)
    {
        SqlConnection baglan = this.baglan();
        SqlCommand sorgu = new SqlCommand(DB_Komut, baglan);
        int sonuc = 0;
        try
        {
            sonuc = sorgu.ExecuteNonQuery();
        }
        catch (SqlException ex)
        {

            throw new Exception(ex.Message);
        }
        sorgu.Dispose();
        baglan.Close();
        baglan.Dispose();
        return (sonuc);
    }
    public DataTable veriCek(string sql)
    {
        SqlConnection baglan = this.baglan();
        SqlDataAdapter adapter = new SqlDataAdapter(sql, baglan);
        DataTable dt = new DataTable();
        try
        {
            adapter.Fill(dt);
        }
        catch (SqlException ex)
        {

            throw new Exception(ex.Message);
        }
        adapter.Dispose();
        baglan.Close();
        baglan.Dispose();
        return dt;
    }
    public DataRow DataRowGetir(string sql)
    {
        DataTable tablo = veriCek(sql);
        if (tablo.Rows.Count == 0) return null;
        return tablo.Rows[0];
    }
    public string CreateRandomPassword() 
    {
        string _allowedChars = "abcdefghijkmnopqrstuvwxyzABCDEFGHJKLMNOPQRSTUVWXYZ0123456789-";
        Random randNum = new Random((int)DateTime.Now.Ticks); 
        char[] chars = new char[7];
     
        for (int i = 0; i < 7; i++)
        {
            chars[i] = _allowedChars[randNum.Next(_allowedChars.Length)];
        }
        return new string(chars);
    }
    public static string UrlSeo(string Metin)
    {
        string deger = Metin;
        deger = deger.Replace("'", "");
        deger = deger.Replace(" ", "-");
        deger = deger.Replace("<", "-");
        deger = deger.Replace(">", "-");
        deger = deger.Replace("&", "-");
        deger = deger.Replace("[", "-");
        deger = deger.Replace("]", "-");
        deger = deger.Replace("ı", "i");
        deger = deger.Replace("ö", "o");
        deger = deger.Replace("ü", "u");
        deger = deger.Replace("ş", "s");
        deger = deger.Replace("ç", "c");
        deger = deger.Replace("ğ", "g");
        deger = deger.Replace("İ", "i");
        deger = deger.Replace("Ö", "o");
        deger = deger.Replace("Ü", "u");
        deger = deger.Replace("Ş", "s");
        deger = deger.Replace("Ç", "c");
        deger = deger.Replace("Ğ", "g");

        return deger;
    }
}