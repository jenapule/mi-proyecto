using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login_Admin : System.Web.UI.Page
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

    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ingresar.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            int user;
            LoginAdminTableAdapters.Tipo_UsuarioTableAdapter obj = new LoginAdminTableAdapters.Tipo_UsuarioTableAdapter();
            user = int.Parse(TextBox1.Text);
            string NomUsu = obj.Admin(user, TextBox2.Text).ToString();
            if (!NomUsu.Equals(""))
            {
                Session["id_admin"] = NomUsu;
                Session["admin_id"] = user;
                Response.Redirect("Ini_Admin.aspx");
            }
        }
        catch (Exception ex)
        {
            Label3.Text = ("Los datos son incorrectos. ") + ex.Message;
        }
    }
    protected void ImageButton4_Click1(object sender, ImageClickEventArgs e)
    {
        Limpiar();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ingresar.aspx");
    }
}