using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net;
using System.Net.Mail;

public partial class Contactenos : System.Web.UI.Page
{
   
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://www.facebook.com/pages/SENA-Centro-Dise%C3%B1o-y-Metrolog%C3%ADa/120186268060083");
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("http://disenometrologia.blogspot.com/");
    }
    protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("https://twitter.com/senacomunica");
    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        
    }
}