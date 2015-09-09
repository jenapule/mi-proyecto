<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Eliminar_Usuario.aspx.cs" Inherits="Eliminar_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">



        .style6
        {
            width: 50%;
            margin-left: 270px;
            height: 490px;
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
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    <table class="style6">
        <tr>
            <td class="style26" colspan="2">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="style8" 
                    Text="Eliminar Usuarios"></asp:Label>
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
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" 
                    style="color: #FF0000; font-size: small" ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Solo números" style="color: #FF0000; font-size: small;" 
                    ValidationExpression="^[1-9]+\d*$" ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:Label ID="Label5" runat="server" style="font-size: small; color: #009933"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:Label ID="Label6" runat="server" style="font-size: small; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <br />
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton2_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/Botones/Boton_Eliminar_Usuario.png" 
                    onclick="ImageButton3_Click" 
                    onclientclick="return confirm(&quot;Desea Eliminar El usuario&quot;)" 
                    ValidationGroup="Necesario" />
                <br />
                <br />
            </td>
        </tr>
        </table>
    </p>
    <br />
</asp:Content>

