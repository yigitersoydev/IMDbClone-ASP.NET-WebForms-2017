using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

public partial class Panel_Settings : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btn_design_Click(object sender, EventArgs e)
    {



        if (fup_logo.HasFile)
        {
            string yukleme = Request.PhysicalApplicationPath + "Images/Logo/";
            string extension = Path.GetExtension(fup_logo.PostedFile.FileName);
            fup_logo.SaveAs(yukleme + "logo" + extension);

        }

        if (fup_fav.HasFile)
        {
            string yukleme = Request.PhysicalApplicationPath + "Images/Favicon/";
            string extension = Path.GetExtension(fup_fav.PostedFile.FileName);
            fup_fav.SaveAs(yukleme + "favicon" + extension);

        }
    }
}