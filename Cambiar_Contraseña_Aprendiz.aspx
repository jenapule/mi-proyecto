<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cambiar_Contraseña_Aprendiz.aspx.cs" Inherits="Cambiar_Contraseña_Aprendiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">




        .style6
        {
            width: 53%;
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
        .style14
        {
            color: #000000;
            font-size: small;
            font-family: Arial;
            text-align: right;
        }
        .style17
        {
            text-align: left;
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
                    Text="Cambiar contraseña"></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label5" runat="server" CssClass="style14" Height="25px" 
                    Text="Contraseña actual:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" 
                    style="color: #FF0000; font-family: Arial; font-size: small" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label6" runat="server" CssClass="style14" Height="25px" 
                    Text="Nueva contraseña:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="150px" 
                    TextMode="Password"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label7" runat="server" CssClass="style14" Height="25px" 
                    Text="Confirmar contraseña:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="150px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" 
                    style="color: #FF0000; font-family: Arial; font-size: small" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox2" ControlToValidate="TextBox3" 
                    ErrorMessage="Las contraseñas no coinciden" 
                    style="color: #FF0000; font-family: Arial; font-size: small" 
                    ValidationGroup="Necesario"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:Label ID="Label9" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #009933"></asp:Label>
                <br />
                <asp:Label ID="Label8" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #FF0000"></asp:Label>
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
                    ImageUrl="~/Botones/Boton_Cambiar_Contraseña.png" 
                    ValidationGroup="Necesario" onclick="ImageButton3_Click" />
            </td>
        </tr>
        </table>
    <p>
    </p>
</asp:Content>

