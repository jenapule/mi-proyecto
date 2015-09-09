using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Program_Art_ProyectoModel;

public partial class Buscar_Usuario : System.Web.UI.Page
{

    Program_Art_ProyectoEntities conectar;

    protected void Page_Load(object sender, EventArgs e)
    {

       

      Label2.Visible = false;
        Label3.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        TextBox1.Focus();
        
        try
        {
            //Inicializar el objeto de la base de datos
            conectar = new Program_Art_ProyectoEntities();
        }
        catch (Exception ex)
        {
            Label5.Text = "Usuario no encontrado." + ex.Message;
        }


        if (!IsPostBack)
        {
            TextBox1.Attributes.Add
                   ("onKeyPress", "doClick ('" + ImageButton3.ClientID + "', evento)");
        }



       
    }

    protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ini_Admin.aspx");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
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
                TextBox1.Visible = false;
                Label2.Visible = true;
                Label3.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Text = Buscar_Usuario.Id_Usuario.ToString();
                Label12.Text = Buscar_Tipo.Desc_Tipo_Usu.ToString();
                Label13.Text = Buscar_Usuario.Tipo_Documento.ToString();
                Label14.Text = Buscar_Usuario.Nombre_Usuario.ToString();
                Label15.Text = Buscar_Usuario.Apellidos_Usuario.ToString();
                Label16.Text = Buscar_Usuario.Telefono_Usuario.ToString();
                Label17.Text = Buscar_Usuario.Correo_Usuario.ToString();
                Label5.Text = "El usuario se ha encontrado";
            }
            else
            {

                Label6.Text = "El usuario no existe";
            }
        }
        catch(Exception ex)
        {
            Label6.Visible = true;
            Label6.Text = "El usuario no se pudo encontrar" + ex.Message;
        }
            
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Label2.Visible = false;
        Label3.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        TextBox1.Visible = true;
        TextBox1.Text = "";
        Label5.Text = "";
        Label6.Text = "";
        Label11.Text = "";
        Label12.Text = "";
        Label13.Text = "";
        Label14.Text = "";
        Label15.Text = "";
        Label16.Text = "";
        Label17.Text = "";
        TextBox1.Focus();
    }
   
    
   
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        
    }
}