using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Instructor : System.Web.UI.Page
{
    public void Limpiar()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox1.Focus();
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ingresar.aspx");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Limpiar();
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ingresar.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            int user;
            LoginInstructorTableAdapters.Tipo_UsuarioTableAdapter objeto = new LoginInstructorTableAdapters.Tipo_UsuarioTableAdapter();
            user = int.Parse(TextBox1.Text);
            string NomUsu = objeto.instructor(user, TextBox2.Text).ToString();
            if (!NomUsu.Equals(""))
            {
                Session["id_instru"] = NomUsu;
                Session["instru_id"] = user;
                Response.Redirect("Ini_Instructor.aspx");
            }
        }
        catch (Exception ex)
        {
            Label3.Text = ("Los datos son incorrectos. ") + ex.Message;
        }
    }
}