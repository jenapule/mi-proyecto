using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Ini_Admin : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id_admin"] != null)
            if (Session["id_admin"].ToString() == "")
            {
                Response.Redirect("Login_Admin.aspx");
            }
            else
            {
                Label2.Text = Session["id_admin"].ToString();
            }
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Crear_Instructor.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
        Response.Redirect("Crear_Aprendiz.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Crear_Usuario.aspx");
    }
    protected void ImageButton10_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Eliminar_Usuario.aspx");
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Modificar_Usuario.aspx");
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Cambiar_Contraseña_Admin.aspx");
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Buscar_Usuario.aspx");
    }
    protected void ImageButton11_Click(object sender, ImageClickEventArgs e)
    {
        Session["id_Aprendiz"] = "";
        Response.Redirect("Login_Admin.aspx");
    }
    protected void ImageButton12_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Tipo_Reporte.aspx");
    }
}