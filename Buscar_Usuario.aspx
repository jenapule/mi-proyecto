<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Buscar_Usuario.aspx.cs" Inherits="Buscar_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">



        .style6
        {
            width: 66%;
            margin-left: 185px;
            height: 524px;
        }
        .style26
        {
            text-align: center;
        }
        .style8
        {
            font-family: arial;
            font-size: x-large;
            font-weight: 700;
            color: #000000;
            text-align: center;
        }
        .style10
        {
            font-family: Arial;
            font-size: small;
            color: #000000;
            text-align: right;
        }
        .style17
        {
            text-align: left;
        }
        .style14
        {
            color: #000000;
            font-size: small;
            font-family: Arial;
            text-align: right;
        }
        .style27
        {
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <table class="style6">
        <tr>
            <td class="style26" colspan="2">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="style8" 
                    Text="Buscar Usuarios"></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label4" runat="server" CssClass="style14" Height="25px" 
                    Text="Número de documento:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style17" Height="25px" 
                    Width="150px" ontextchanged="TextBox1_TextChanged"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" CssClass="style27" 
                    style="font-size: small; font-family: Arial"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" 
                    style="color: #FF0000; font-size: small; font-family: Arial" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Solo números" 
                    style="font-size: small; font-family: Arial; color: #FF0000" 
                    ValidationExpression="^[1-9]+\d*$" ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label2" runat="server" CssClass="style10" Height="25px" 
                    Text="Tipo de usuario" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:Label ID="Label12" runat="server" CssClass="style27" 
                    style="font-size: small; font-family: Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label3" runat="server" CssClass="style10" Height="25px" 
                    Text="Tipo de documento:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:Label ID="Label13" runat="server" CssClass="style27" 
                    style="font-size: small; font-family: Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label7" runat="server" CssClass="style14" Height="25px" 
                    Text="Nombre Usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:Label ID="Label14" runat="server" CssClass="style27" 
                    style="font-size: small; font-family: Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label8" runat="server" CssClass="style14" Height="25px" 
                    Text="Apellido Usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:Label ID="Label15" runat="server" CssClass="style27" 
                    style="font-size: small; font-family: Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label9" runat="server" CssClass="style14" Height="25px" 
                    Text="Teléfonos Usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:Label ID="Label16" runat="server" CssClass="style27" 
                    style="font-size: small; font-family: Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label10" runat="server" CssClass="style14" Height="25px" 
                    Text="Correo Usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:Label ID="Label17" runat="server" CssClass="style27" 
                    style="font-size: small; font-family: Arial"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:Label ID="Label5" runat="server" 
                    style="font-family: Arial; font-size: small; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:Label ID="Label6" runat="server" 
                    style="font-family: Arial; font-size: small; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/Botones/Boton_Buscar.png" onclick="ImageButton3_Click" 
                    ValidationGroup="Necesario" />
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;<asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton2_Click1" />
                &nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/Botones/Boton_Limpiar.png" onclick="ImageButton4_Click" />
            </td>
        </tr>
        </table>
    <p>
    </p>
</asp:Content>

