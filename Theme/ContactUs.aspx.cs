using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.OleDb;
using System.Web.Configuration;
using System.IO;
using System.Net.Mail;
using System.Net;

public partial class Theme_ContactUs : System.Web.UI.Page
{
    veritabani bagla = new veritabani();
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnClear_Click(object sender, EventArgs e)
    {
        txtAd.Text = "";
        txtEmail.Text = "";
        txtMesaj.Text = "";
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        string ad = txtAd.Text;
        string email = txtEmail.Text;
        string mesaj = txtMesaj.Text;
        try
        {
            bagla.sorgu("insert into contact(ContactName,ContactEmail,ContactMessage) values ('" + ad + "','" + email + "','" + mesaj + "')");

            MailMessage Mail = new MailMessage();
            Mail.From = new MailAddress("SENDER_MAIL");
            Mail.To.Add("YOUR_MAIL");
            Mail.Subject = "Blog İletişim Mesajı";
            Mail.IsBodyHtml = true;
            Mail.BodyEncoding = System.Text.Encoding.UTF8;
            Mail.Body = "Gönderen Adı: " + ad + "<br />" + "Gönderen E-Posta: " + email + "<br />" + "<br />" + "Mesajı: " + mesaj;
            SmtpClient smpt = new SmtpClient();
            smpt.Credentials = new NetworkCredential("SENDER_MAIL", "SENDER_PASSWORD");
            smpt.Port = 587;
            smpt.Host = "smtp.gmail.com";
            smpt.EnableSsl = true;
            smpt.Send(Mail);
            success.Visible = true;

        }
        catch (Exception a)
        {

            error.Visible = true;
            Response.Write(a.Message);
        }

    }
}