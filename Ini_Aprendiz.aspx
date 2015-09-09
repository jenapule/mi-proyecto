<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Ini_Aprendiz.aspx.cs" Inherits="Ini_Aprendiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 100%;
        }
        .style7
        {
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <table class="style6">
        <tr>
            <td class="style7" style="text-align: center">
                <p>
                <asp:Label ID="Label1" runat="server" 
                    style="font-size: medium; font-family: Arial; font-weight: 700; color: #000000; text-align: right" 
                    Text="Bienvenido Aprendiz"></asp:Label>
&nbsp;
                    <asp:Label ID="Label2" runat="server"></asp:Label>
                </p>
            </td>
        </tr>
        <tr>
            <td style="text-align: center">
                <br />
            </td>
        </tr>
    </table>
    <p>
        <asp:ImageButton ID="ImageButton3" runat="server" 
            ImageUrl="~/Botones/Boton_Generar_Repote.png" 
            onclick="ImageButton3_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton4" runat="server" 
            ImageUrl="~/Botones/Boton_Cambiar_Contraseña.png" 
            onclick="ImageButton4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" 
            ImageUrl="~/Botones/Boton_Cerrar_Sesion.png" 
            onclick="ImageButton2_Click" />
    </p>
    <p>
        <br />
    </p>
    </asp:Content>

