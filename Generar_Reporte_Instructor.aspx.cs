using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Generar_Reporte_Instructor : System.Web.UI.Page
{
    public void Limpiar()
    {
        TextBox1.Text = "";
        TextBox2.Text = "";
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Calendar1.Visible = false;
        Calendar2.Visible = false;
    }
    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            TextBox1.Text = Calendar1.SelectedDate.ToShortDateString();
            Calendar1.Visible = false;

        }
    }
    protected void Calendar2_SelectionChanged(object sender, EventArgs e)
    {
        if (IsPostBack)
        {
            TextBox2.Text = Calendar2.SelectedDate.ToShortDateString();
            Calendar2.Visible = false;

        }
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        Calendar1.Visible = true;
    }
    protected void ImageButton8_Click(object sender, ImageClickEventArgs e)
    {
        Calendar2.Visible = true;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ini_Instructor.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        Limpiar();
    }
    protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
    {

    }
}