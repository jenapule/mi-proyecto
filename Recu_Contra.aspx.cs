using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

public partial class Recu_Contra : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
    {
        try
        {
            if (DropDownList1.SelectedItem.Value == "Administrador")
            {
                int cuadro;
                Recu_Contra_AdminTableAdapters.Tipo_UsuarioTableAdapter obj = new Recu_Contra_AdminTableAdapters.Tipo_UsuarioTableAdapter();
                cuadro = int.Parse(TextBox1.Text);
                string nomUsuario = obj.contra(cuadro).ToString();

                if (!nomUsuario.Equals(""))
                {
                    byte[] bytes1 = new byte[5];
                    Random NuevaClave = new Random();
                    NuevaClave.NextBytes(bytes1);
                    string NuevaConstraseña = "";
                    for (int i = bytes1.GetLowerBound(0); i <= bytes1.GetUpperBound(0); i++)
                        NuevaConstraseña += bytes1[i];
                    obj.ModiContra(NuevaConstraseña, cuadro);
                    EnviarCorreo(nomUsuario, NuevaConstraseña);

                }

            }
            if (DropDownList1.SelectedItem.Value == "Instructor")
            {
                int cuadro;
                Recu_Contra_InsTableAdapters.Tipo_UsuarioTableAdapter obj = new Recu_Contra_InsTableAdapters.Tipo_UsuarioTableAdapter();
                cuadro = int.Parse(TextBox1.Text);
                string nomUsuario = obj.contra(cuadro).ToString();

                if (!nomUsuario.Equals(""))
                {
                    byte[] bytes1 = new byte[5];
                    Random NuevaClave = new Random();
                    NuevaClave.NextBytes(bytes1);
                    string NuevaConstraseña = "";
                    for (int i = bytes1.GetLowerBound(0); i <= bytes1.GetUpperBound(0); i++)
                        NuevaConstraseña += bytes1[i];
                    obj.ModiContra(NuevaConstraseña, cuadro);
                    EnviarCorreo(nomUsuario, NuevaConstraseña);

                }

            }
            if (DropDownList1.SelectedItem.Value == "Aprendiz")
            {
                int cuadro;
                Recu_Contra_CorreoTableAdapters.UsuarioTableAdapter obj = new Recu_Contra_CorreoTableAdapters.UsuarioTableAdapter();
                cuadro = int.Parse(TextBox1.Text);
                string nomUsuario = obj.Contra(cuadro).ToString();

                if (!nomUsuario.Equals(""))
                {
                    byte[] bytes1 = new byte[5];
                    Random NuevaClave = new Random();
                    NuevaClave.NextBytes(bytes1);
                    string NuevaConstraseña = "";
                    for (int i = bytes1.GetLowerBound(0); i <= bytes1.GetUpperBound(0); i++)
                        NuevaConstraseña += bytes1[i];
                    obj.ModiContra(NuevaConstraseña, cuadro);
                    EnviarCorreo(nomUsuario, NuevaConstraseña);

                }

            }
        }
        catch (Exception)
        {
            Label3.Text = "El usuario no existe";
        }


    }
    public void EnviarCorreo(string para, string contraseña)
    {
        MailMessage mail = new MailMessage();
        SmtpClient SmtpServer = new SmtpClient("smtp.gmail.com");
        mail.From = new MailAddress("nathaliia.pte@gmail.com");
        mail.To.Add(para);
        mail.Subject = "Se ha modificado la contraseña Program-Art";
        mail.Body = "Su nueva contraseña es:  " + contraseña;

        System.Net.Mail.Attachment attachment;
        // attachment = new System.Net.Mail.Attachment("c:/textfile.txt");
        //mail.Attachments.Add(attachment);

        SmtpServer.Port = 587;
        SmtpServer.Credentials = new System.Net.NetworkCredential("nathaliia.pte@gmail.com", "bartolomeleon");
        SmtpServer.EnableSsl = true;
        try
        {
            SmtpServer.Send(mail);
        }
        catch (Exception ex)
        {
            Label3.Text = "La contraseña no se ha podido enviar al correo" + ex.Message;
        }
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Ingresar.aspx");
    }
}