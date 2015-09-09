<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Crear_Usuario.aspx.cs" Inherits="Crear_Aprendiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 61%;
            margin-left: 195px;
            height: 595px;
        }
        .style8
        {
            font-family: arial;
            font-size: x-large;
            font-weight: 700;
            color: #000000;
            text-align: center;
        }
        .style9
        {
            font-family: Arial;
            font-size: small;
            color: #000000;
            text-align: right;
        }
        .style16
        {
            text-align: center;
        }
        .style10
        {
            font-family: Arial;
            font-size: small;
            color: #000000;
            text-align: right;
        }
        .style14
        {
            color: #000000;
            font-size: small;
            font-family: Arial;
            text-align: right;
        }
        .style25
        {
            width: 100%;
        }
        .style27
        {
            font-family: Arial;
            color: #009900;
            font-size: small;
        }
        .style28
        {
            font-family: Arial;
            font-size: small;
            text-align: left;
            color: #000000;
        }
        .style30
        {
            font-family: Arial;
            font-size: small;
            color: #FF0000;
        }
        .style32
        {
            text-align: left;
            width: 349px;
        }
        .style33
        {
            font-size: small;
            font-family: Arial;
            color: #000000;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table class="style6">
        <tr>
            <td class="style16" colspan="2">
                <br />
                <asp:Label ID="Label1" runat="server" CssClass="style8" Text="Datos Personales"></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style16" colspan="2">
                <asp:Label ID="Label16" runat="server" CssClass="style33" 
                    Text="Los campos que aparecen con un (*) son requeridos"></asp:Label>
                <br />
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label14" runat="server" CssClass="style28" 
                    Text="Número de tipo de usuario:" Visible="False"></asp:Label>
            </td>
            <td class="style32">
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
            <td class="style16">
                <asp:Label ID="Label2" runat="server" CssClass="style10" Height="25px" 
                    Text="Tipo de usuario:" Width="150px"></asp:Label>
            </td>
            <td class="style32">
                <asp:DropDownList ID="DropDownList2" runat="server" Height="25px" Width="150px">
                    <asp:ListItem>Seleccionar...</asp:ListItem>
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Instructor</asp:ListItem>
                    <asp:ListItem>Aprendiz</asp:ListItem>
                </asp:DropDownList>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label3" runat="server" CssClass="style10" Height="25px" 
                    Text="Tipo de documento:" Width="150px"></asp:Label>
            </td>
            <td class="style32">
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
            <td class="style16">
                <asp:Label ID="Label4" runat="server" CssClass="style14" Height="25px" 
                    Text="Número de documento:" Width="150px"></asp:Label>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="Solo números" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationExpression="^[1-9]+\d*$" ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label5" runat="server" CssClass="style9" Height="25px" 
                    Text="Nombres:" Width="150px"></asp:Label>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox2" runat="server" Height="25px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Solo letras" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationExpression="^[A-Z_a-z_áéíóú\s]*$" ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label6" runat="server" CssClass="style9" Height="25px" 
                    Text="Apellidos:" Width="150px"></asp:Label>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox3" runat="server" Height="25px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="*" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
                    ControlToValidate="TextBox3" ErrorMessage="Solo letras" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationExpression="^[A-Z_a-z_áéíóú\s]*$" ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label8" runat="server" CssClass="style10" Height="25px" 
                    Text="Teléfonos:" Width="150px"></asp:Label>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox4" runat="server" Height="25px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="*" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
                    ControlToValidate="TextBox4" ErrorMessage="Solo números" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationExpression="^[1-9]-?\d*" ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label9" runat="server" CssClass="style10" Height="25px" 
                    Text="Correo electrónico:" Width="150px"></asp:Label>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox5" runat="server" Height="25px" Width="150px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="*" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" 
                    ControlToValidate="TextBox5" ErrorMessage="Correo no valido" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" 
                    ValidationGroup="Necesario"></asp:RegularExpressionValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label11" runat="server" CssClass="style10" Height="18px" 
                    Text="Contraseña:" Width="145px"></asp:Label>
            &nbsp;
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox6" runat="server" Height="25px" Width="150px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" 
                    ControlToValidate="TextBox6" ErrorMessage="*" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td class="style16">
                <asp:Label ID="Label12" runat="server" CssClass="style10" Height="23px" 
                    Text="Confirmar contraseña:" Width="147px"></asp:Label>
            </td>
            <td class="style32">
                <asp:TextBox ID="TextBox7" runat="server" Height="25px" Width="150px" 
                    TextMode="Password"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                    ControlToValidate="TextBox7" ErrorMessage="*" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="CompareValidator1" runat="server" 
                    ControlToCompare="TextBox6" ControlToValidate="TextBox7" 
                    ErrorMessage="Las contraseñas no coinciden" 
                    style="font-family: Arial; font-size: small; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:CompareValidator>
            </td>
        </tr>
        <tr>
            <td class="style16" colspan="2">
                <asp:Label ID="Label13" runat="server" CssClass="style27"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16" colspan="2">
                <asp:Label ID="Label15" runat="server" CssClass="style30"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style16" colspan="2">
                <br />
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton2_Click1" />
&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Botones/Boton_Guardar.png" onclick="ImageButton1_Click" 
                    ValidationGroup="Necesario" />
            </td>
        </tr>
        </table>
    <p>
    </p>
    <table class="style25">
        </table>
    <p>
    </p>
</asp:Content>

