using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Program_Art_ProyectoModel;

public partial class Programar_Clase : System.Web.UI.Page
{
    Program_Art_ProyectoEntities conectar;

    public void Limpiar()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
        Label3.Text = "";
        Label4.Text = "";
        Label5.Text = "";
        Label6.Text = "";
        Label7.Text = "";
        Label8.Text = "";
        Label9.Text = "";
        Label10.Text = "";
        Label11.Text = "";
        Label12.Text = "";
        Label13.Text = "";
        Label14.Text = "";
        Label15.Text = "";
        Label16.Text = "";
    }
    
    protected void Page_Load(object sender, EventArgs e)
    {
        Label5.Visible = false;
        Label6.Visible = false;
        Label7.Visible = false;
        Label8.Visible = false;
        Label9.Visible = false;
        Label10.Visible = false;
        Label11.Visible = false;
        Label12.Visible = false;
        Label13.Visible = false;
        Label14.Visible = false;
        Label15.Visible = false;
        Label16.Visible = false;
        Calendar1.Visible = false;
        try
        {
            //Inicializar el objeto de la base de datos
            conectar = new Program_Art_ProyectoEntities();
        }
        catch (Exception ex)
        {
            Label4.Text = "Error de conexión con la base de datos." + ex.Message;
        }
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;

        }
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ini_Instructor.aspx");
    }
    protected void ImageButton7_Click1(object sender, ImageClickEventArgs e)
    {
        try
        {
            registro Nueva_Registro = new registro
            {
                fecha_registro = DateTime.Parse(TextBox1.Text),
                Id_Usuario = Convert.ToInt64(TextBox2.Text),
                asistencia = true
            };
            conectar.AddToregistro(Nueva_Registro);
            conectar.SaveChanges();
            Label3.Text = "La asistencia se guardó correctamente";
            TextBox2.Text = "";
        }
        catch (Exception ex)
        {
            Label4.Text = "La asistencia no se pudo guardar" + ex.Message;
        }
    }
    protected void ImageButton9_Click(object sender, ImageClickEventArgs e)
    {
        Response.Write("<script language=javascript>child=window.open('Cronometro.aspx');</script>");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            int id = Convert.ToInt32(TextBox2.Text);

            Tipo_Usuario Buscar_Tipo = conectar.Tipo_Usuario.FirstOrDefault
                (a => a.Id_Usuario == id);

            Usuario Buscar_Usuario = conectar.Usuario.FirstOrDefault
                (a => a.Id_Usuario == id);

            if (Buscar_Usuario != null)
            {
                Calendar1.Visible = false;
                Label5.Visible = true;
                Label6.Visible = true;
                Label7.Visible = true;
                Label8.Visible = true;
                Label9.Visible = true;
                Label10.Visible = true;
                Label11.Visible = true;
                Label12.Visible = true;
                Label13.Visible = true;
                Label14.Visible = true;
                Label15.Visible = true;
                Label16.Visible = true;
                Label6.Text = Buscar_Usuario.Tipo_Documento.ToString();
                Label8.Text = Buscar_Usuario.Id_Usuario.ToString();
                Label10.Text = Buscar_Tipo.Desc_Tipo_Usu.ToString();
                Label12.Text = Buscar_Usuario.Nombre_Usuario.ToString();
                Label14.Text = Buscar_Usuario.Apellidos_Usuario.ToString();
                Label16.Text = Buscar_Usuario.Correo_Usuario.ToString();
                Label3.Text = "";
            }
            else
            {
                Label4.Text = "El usuario no existe";
            }
        }
        catch(Exception ex)
        {
           

        }
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Limpiar();
    }

}