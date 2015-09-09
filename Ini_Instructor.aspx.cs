using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ini_Instructor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id_instru"] != null)
            if (Session["id_instru"].ToString() == "")
            {
                Response.Redirect("Login_Admin.aspx");
            }
            else
            {
                Label2.Text = Session["id_instru"].ToString();
            }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("reporteinstructor.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Programar_Clase.aspx");
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cambiar_Contraseña_Instructor.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Session["id_Aprendiz"] = "";
        Response.Redirect("Login_Instructor.aspx");
    }
}