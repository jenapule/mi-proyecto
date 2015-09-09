using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Program_Art_ProyectoModel;

public partial class Eliminar_Usuario : System.Web.UI.Page
{
    Program_Art_ProyectoEntities conectar;
      

    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Focus();
        try
        {
            //Inicializar el objeto de la base de datos
            conectar = new Program_Art_ProyectoEntities();
        }
        catch (Exception ex)
        {
            //mensaje de error
            Label6.Text = "Error de conexion con la base de datos." + ex.Message;
        }        
    }

   

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        //redirecciona a la pagina de inicio del administrador
        Response.Redirect("Ini_Admin.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        
        try
        {
            int id = Convert.ToInt32(TextBox1.Text);

            Tipo_Usuario Eliminar_Tipo = conectar.Tipo_Usuario.FirstOrDefault
                    (a => a.Id_Usuario== id);

            conectar.DeleteObject(Eliminar_Tipo);
            conectar.SaveChanges();

            Usuario Eliminar_Usuario = conectar.Usuario.FirstOrDefault
                    (a => a.Id_Usuario == id);

            conectar.DeleteObject(Eliminar_Usuario);
            conectar.SaveChanges();

            Label5.Text = "El usuario se ha eliminado";
            TextBox1.Focus();
        }
        catch(Exception ex)
        {
            Label6.Text = "El usuario no se ha podido eliminar. " + ex.Message;
        }
    }
}