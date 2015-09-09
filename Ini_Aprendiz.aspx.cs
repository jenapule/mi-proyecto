using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ini_Aprendiz : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id_aprendiz"] != null)
            if (Session["id_aprendiz"].ToString() == "")
            {
                Response.Redirect("Login_Admin.aspx");
            }
            else
            {
                Label2.Text = Session["id_aprendiz"].ToString();
            }

    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cambiar_Contraseña_Aprendiz.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("reporteAprendiz.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["id_Aprendiz"] = "";
        Response.Redirect("Login_Aprendiz.aspx");
    }
}