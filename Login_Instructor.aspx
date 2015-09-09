<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Login_Instructor.aspx.cs" Inherits="Login_Instructor" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 51%;
            margin-left: 270px;
        }
        .style11
        {
            text-align: right;
        }
        .style10
        {
            font-size: small;
            font-family: Arial;
            color: #000000;
        }
        .style12
        {
            text-align: right;
        }
        .style9
        {
            font-size: small;
            font-family: Arial;
            color: #000000;
        }
        .style14
        {
            text-align: center;
        }
        .style13
        {
            color: #3333CC;
            font-size: small;
            font-family: arial;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:ImageButton ID="ImageButton1" runat="server" 
            ImageUrl="~/Botones/Boton_Instructor.png" onclick="ImageButton1_Click" />
        <br />
    </p>
    <p>
        &nbsp;</p>
    <table class="style6">
        <tr>
            <td class="style11">
                <asp:Label ID="Label1" runat="server" CssClass="style10" Height="25px" 
                    Text="Usuario" Width="150px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" style="color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
            </td>
            <td>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Solo números" 
                    
                    style="font-size: small; color: #FF0000; font-family: Arial, Helvetica, sans-serif" 
                    ValidationExpression="^[1-9]+\d*$" ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style12">
                <asp:Label ID="Label2" runat="server" CssClass="style9" Height="25px" 
                    Text="Contraseña:" Width="150px"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                <br />
            </td>
            <td>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" style="color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
            </td>
            <td style="text-align: left">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                <asp:HyperLink ID="HyperLink1" runat="server" CssClass="style13" 
                    NavigateUrl="~/Imagenes/Manual de usuario Proyecto Program-Art.docx">¿Necesitas ayuda?</asp:HyperLink>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                <asp:HyperLink ID="HyperLink2" runat="server" CssClass="style13" 
                    NavigateUrl="~/Recu_Contra.aspx">¿Has olvidado tu contraseña?</asp:HyperLink>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="style14" colspan="2">
                <asp:Label ID="Label3" runat="server" CssClass="style13" ForeColor="Red"></asp:Label>
            </td>
            <td class="style14">
                &nbsp;</td>
            <td class="style14">
                &nbsp;</td>
        </tr>
    </table>
    <p>
    </p>
    <p>
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton3_Click" />
            &nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Botones/Boton_Iniciar.png" onclick="ImageButton2_Click" 
                    ValidationGroup="Necesario" />
            &nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/Botones/Boton_Limpiar.png" onclick="ImageButton4_Click" />
    </p>
    </asp:Content>

