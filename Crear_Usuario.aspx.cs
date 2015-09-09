using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Program_Art_ProyectoModel;


public partial class Crear_Aprendiz : System.Web.UI.Page
{

    Program_Art_ProyectoEntities conectar;
     

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            //Inicializar el objeto de la base de datos
            conectar = new Program_Art_ProyectoEntities();
        }
        catch(Exception ex)
        {
            Label15.Text = "Error de conexión con la base de datos." + ex.Message;
        }
    }

    public void Limpiar()
    {
        DropDownList1.Text = "Seleccionar...";
        DropDownList2.Text = "Seleccionar...";
        DropDownList3.Text = "Seleccionar...";
        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";
        TextBox5.Text = "";
        TextBox6.Text = "";
        TextBox7.Text = "";
        Label13.Text = "";
        Label15.Text = "";
    }
    
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        //Boton regresar, redirecciona a la pagina de inicio del administrador.
        Response.Redirect("Ini_Admin.aspx");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            
           
            if(DropDownList2.SelectedIndex==1){DropDownList1.SelectedIndex=1;};
            if(DropDownList2.SelectedIndex==2){DropDownList1.SelectedIndex=2;};
            if(DropDownList2.SelectedIndex==3){DropDownList1.SelectedIndex=3;};

            Usuario Nuevo_Usuario = new Usuario
            {                
                Tipo_Documento = DropDownList3.Text,
                Id_Usuario = Convert.ToInt64(TextBox1.Text),
                Nombre_Usuario = TextBox2.Text,
                Apellidos_Usuario = TextBox3.Text,
                Telefono_Usuario = TextBox4.Text,
                Correo_Usuario = TextBox5.Text,
                Contraseña_Usuario = TextBox6.Text
            };
             
            //Guardar cambios
            conectar.AddToUsuario(Nuevo_Usuario);
            conectar.SaveChanges();

            Tipo_Usuario Nuevo_Tipo = new Tipo_Usuario
            {
                Id_Tipo = Convert.ToInt32(DropDownList1.Text),
                Id_Usuario = Convert.ToInt64(TextBox1.Text),
                Desc_Tipo_Usu = DropDownList2.Text,


            };

            conectar.AddToTipo_Usuario(Nuevo_Tipo);
            conectar.SaveChanges();
            Limpiar();
            Label13.Text = "El usuario se creó correctamente.";
        }
        catch (Exception ex)
        {
            Label15.Text = "El usuario no se pudo crear correctamente." + ex.InnerException;
        }
     
    }
    
}