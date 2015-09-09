<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Recu_Contra.aspx.cs" Inherits="Recu_Contra" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 50%;
            height: 296px;
        }
        .style5
        {
        }
        .style6
        {
            width: 180px;
            height: 50px;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            color: #000000;
        }
        .style8
        {
            width: 218px;
        }
        .style9
        {
            clear: both;
            font-family: Arial, Helvetica, sans-serif;
            font-size: small;
            color: #FF0000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <table align="center" class="style4">
        <tr>
            <td align="right">
                <asp:Label ID="Label1" runat="server" CssClass="style6" Text="Rol"></asp:Label>
            </td>
            <td class="style8">
                <asp:DropDownList ID="DropDownList1" runat="server">
                    <asp:ListItem>seleccione...</asp:ListItem>
                    <asp:ListItem>Administrador</asp:ListItem>
                    <asp:ListItem>Instructor</asp:ListItem>
                    <asp:ListItem>Aprendiz</asp:ListItem>
                </asp:DropDownList>
                <br />
            </td>
        </tr>
        <tr>
            <td align="right">
                <asp:Label ID="Label2" runat="server" CssClass="login" Text="Usuario" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #000000"></asp:Label>
            </td>
            <td class="style8">
                <asp:TextBox ID="TextBox1" runat="server" Height="25px" Width="150px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="style5" colspan="2">
                <asp:Label ID="Label4" runat="server" 
                    style="font-family: Arial, Helvetica, sans-serif; font-size: small; color: #009933"></asp:Label>
                <br />
                <asp:Label ID="Label3" runat="server" CssClass="style9"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style5">
                <br />
                <br />
                <asp:ImageButton ID="ImageButton1" runat="server" Height="50px" 
                    ImageUrl="~/Botones/Boton_Enviar.png" onclick="ImageButton1_Click" 
                    Width="180px" />
                <br />
            </td>
            <td class="style8">
                <br />
                <br />
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton2_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

