<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Modificar_Usuario.aspx.cs" Inherits="Modificar_Usuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">


        .style6
        {
            width: 66%;
            margin-left: 187px;
            height: 562px;
        }
        .style26
        {
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
    </p>
    <table class="style6">
        <tr>
            <td class="style26" colspan="2">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="style8" 
                    Text="Modificar Usuarios"></asp:Label>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="White" 
                    BorderStyle="None" ForeColor="White" onclick="Button1_Click1" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style26">
                &nbsp;</td>
            <td class="style17">
                <asp:DropDownList ID="DropDownList1" runat="server" Height="25px" Width="150px" 
                    Visible="False">
                    <asp:ListItem>Seleccionar...</asp:ListItem>
                    <asp:ListItem>1</asp:ListItem>
                    <asp:ListItem>2</asp:ListItem>
                    <asp:ListItem>3</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label2" runat="server" CssClass="style14" Height="25px" 
                    Text="Número de documento:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox1" runat="server" CssClass="style17" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:Label ID="Label11" runat="server" 
                    style="color: #000000; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:Label>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" 
                    style="color: #CC0000; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label3" runat="server" CssClass="style14" Height="25px" 
                    Text="Tipo de documento:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:DropDownList ID="DropDownList3" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>Seleccionar...</asp:ListItem>
                    <asp:ListItem>Cedula de ciudadania</asp:ListItem>
                    <asp:ListItem>Cedula de extranjeria</asp:ListItem>
                    <asp:ListItem>Tarjeta de identidad</asp:ListItem>
                    <asp:ListItem>Pasaporte</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label4" runat="server" CssClass="style14" Height="25px" 
                    Text="Tipo de usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>Seleccionar...</asp:ListItem>
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Instructor</asp:ListItem>
                    <asp:ListItem>Aprendiz</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label5" runat="server" CssClass="style14" Height="25px" 
                    Text="Nombre usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox2" runat="server" CssClass="style17" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" 
                    style="color: #CC0000; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Solo letras" 
                    style="color: #FF0000; font-size: small; font-family: Arial, Helvetica, sans-serif" 
                    ValidationExpression="^[A-Z_a-z_áéíóú\s]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label6" runat="server" CssClass="style14" Height="25px" 
                    Text="Apellido usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox3" runat="server" CssClass="style17" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" 
                    style="color: #CC0000; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Solo letras" 
                    style="color: #FF0000; font-size: small; font-family: Arial, Helvetica, sans-serif" 
                    ValidationExpression="^[A-Z_a-z_áéíóú\s]*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label7" runat="server" CssClass="style14" Height="25px" 
                    Text="Teléfonos usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox4" runat="server" CssClass="style17" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*" 
                    style="color: #CC0000; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Solo números" 
                    style="color: #FF0000; font-size: small; font-family: Arial, Helvetica, sans-serif" 
                    ValidationExpression="^[1-9]+\d*$"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style26">
                <asp:Label ID="Label8" runat="server" CssClass="style14" Height="25px" 
                    Text="Correo usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style17">
                <asp:TextBox ID="TextBox5" runat="server" CssClass="style17" Height="25px" 
                    Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" 
                    style="color: #CC0000; font-family: Arial, Helvetica, sans-serif; font-size: small"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Correo no valido" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:Label ID="Label9" runat="server" 
                    style="font-family: Arial; font-size: small; color: #00CC00"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <asp:Label ID="Label10" runat="server" 
                    style="font-family: Arial; font-size: small; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style26" colspan="2">
                <br />
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton2_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/Botones/Boton_Modificar_Usuario.png" onclick="ImageButton4_Click" />
            </td>
        </tr>
        </table>
    </asp:Content>

