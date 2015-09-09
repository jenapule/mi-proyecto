<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Ini_Admin.aspx.cs" Inherits="Ini_Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 100%;
        }
        .style7
        {
        }
        .style8
        {
            font-family: arial;
            font-size: medium;
            font-weight: 700;
            color: #000000;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style7" style="text-align: center">
                <p>
&nbsp;</p>
                <p>
&nbsp;<asp:Label ID="Label1" runat="server" CssClass="style8" Text="Bienvenido"></asp:Label>
                &nbsp;
                <asp:Label ID="Label2" runat="server" CssClass="style8" 
                        Text="Administrador"></asp:Label>
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
        &nbsp;</p>
    <p>
&nbsp;<asp:ImageButton ID="ImageButton6" runat="server" 
            ImageUrl="~/Botones/Boton_Crear_Usuario.png" 
            onclick="ImageButton6_Click" />
&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ImageButton10" runat="server" 
            ImageUrl="~/Botones/Boton_Eliminar_Usuario.png" 
            onclick="ImageButton10_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton9" runat="server" 
            ImageUrl="~/Botones/Boton_Modificar_Usuario.png" 
            onclick="ImageButton9_Click" />
    </p>
    <p>
        &nbsp;<asp:ImageButton ID="ImageButton8" runat="server" 
            ImageUrl="~/Botones/Boton_Cambiar_Contraseña.png" 
            onclick="ImageButton8_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton7" runat="server" 
            ImageUrl="~/Botones/Boton_Buscar_Usuario.png" 
            onclick="ImageButton7_Click" />
    &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton11" runat="server" 
            ImageUrl="~/Botones/Boton_Cerrar_Sesion.png" 
            onclick="ImageButton11_Click" />
    </p>
    <p>
        <asp:ImageButton ID="ImageButton12" runat="server" 
            ImageUrl="~/Botones/Boton_Generar_Repote.png" onclick="ImageButton12_Click" />
        <br />
    </p>
    <p>
    </p>
</asp:Content>

