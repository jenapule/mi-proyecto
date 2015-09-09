using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Program_Art_ProyectoModel;

public partial class Modificar_Usuario : System.Web.UI.Page
{

    Program_Art_ProyectoEntities conectar;

    protected void Page_Load(object sender, EventArgs e)
    {
        Label3.Visible = false;
        Label4.Visible = false;
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        TextBox2.Visible = false;
        TextBox3.Visible = false;
        TextBox4.Visible = false;
        TextBox5.Visible = false;
        TextBox1.Focus();

        try
        {
            //Inicializar el objeto de la base de datos
            conectar = new Program_Art_ProyectoEntities();
        }
        catch (Exception ex)
        {
            Label10.Text = "Error de conexión con la base de datos." + ex.Message;
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ini_Admin.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(TextBox1.Text);


            Usuario Modificar_Usuario = conectar.Usuario.FirstOrDefault
                (a => a.Id_Usuario == id);



            Modificar_Usuario.Tipo_Documento = DropDownList3.Text;
            Modificar_Usuario.Nombre_Usuario = TextBox2.Text;
            Modificar_Usuario.Apellidos_Usuario = TextBox3.Text;
            Modificar_Usuario.Telefono_Usuario = TextBox4.Text;
            Modificar_Usuario.Correo_Usuario = TextBox5.Text;


            conectar.SaveChanges();
            
            Label9.Text = "Registro modificado";
        }
        catch(Exception ex)
        {
            Label10.Text = "El registro no se ha modificado" + ex.Message;
        }
        
    }
    protected void Button1_Click1(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(TextBox1.Text);

            Tipo_Usuario Buscar_Tipo = conectar.Tipo_Usuario.FirstOrDefault
                (a => a.Id_Usuario == id);

            Usuario Buscar_Usuario = conectar.Usuario.FirstOrDefault
                (a => a.Id_Usuario == id);

            if (Buscar_Usuario != null)
            {
                TextBox1.Visible = true;
                DropDownList3.Visible = true;
                TextBox1.Visible = false;
                Label2.Visible = true;
                Label3.Visible = true;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                TextBox2.Visible = true;
                TextBox3.Visible = true;
                TextBox4.Visible = true;
                TextBox5.Visible = true;
                Label11.Text = Buscar_Usuario.Id_Usuario.ToString();
                DropDownList1.Text = Buscar_Tipo.Id_Tipo.ToString();
                DropDownList2.Text = Buscar_Tipo.Desc_Tipo_Usu.ToString();
                DropDownList3.Text = Buscar_Usuario.Tipo_Documento.ToString();
                TextBox2.Text = Buscar_Usuario.Nombre_Usuario.ToString();
                TextBox3.Text = Buscar_Usuario.Apellidos_Usuario.ToString();
                TextBox4.Text = Buscar_Usuario.Telefono_Usuario.ToString();
                TextBox5.Text = Buscar_Usuario.Correo_Usuario.ToString();
                ImageButton4.Visible = true;

            }
        }
        catch (Exception ex)
        {
            Label10.Text = "El registro no se pudo encontrar" + ex.Message;
        }
    }
}