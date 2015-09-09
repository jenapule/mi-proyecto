using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Cambiar_Contraseña_Instructor : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ini_Instructor.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            Cambio_Contra_AdminTableAdapters.UsuarioTableAdapter ob = new Cambio_Contra_AdminTableAdapters.UsuarioTableAdapter();
            decimal Id_Usuario = 0;
            string usuario = Session["Instru_id"].ToString();
            Decimal.TryParse(usuario, out Id_Usuario);
            string actual = (TextBox2.Text);
            string contraUsu = ob.contra(Id_Usuario).ToString();
            if (!contraUsu.Equals(""))
            {

                String nueva_contra = (TextBox3.Text);
                String confi_contra = (TextBox4.Text);
                if (nueva_contra == confi_contra)
                {
                    ob.Cambio(nueva_contra, Id_Usuario).ToString();
                    Label9.Text = "La contraseña se ha modificado";
                }
                else
                {
                    Label8.Text = "Las contraseñas no coinciden";
                    TextBox3.Focus();
                }
            }
        }
        catch (Exception ex)
        {
            Label8.Text = "Ha ocurrido un error. " + ex.Message;
        }

    }
}