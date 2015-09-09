<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Ingresar.aspx.cs" Inherits="Ingresar" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 75%;
            margin-left: 120px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <table class="style6">
        <tr>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/Botones/Boton_Admin.png" onclick="ImageButton3_Click" />
            </td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/Botones/Boton_Instructor.png" onclick="ImageButton4_Click" />
            </td>
            <td style="text-align: center">
                <asp:ImageButton ID="ImageButton5" runat="server" 
                    ImageUrl="~/Botones/Boton_Aprendiz.png" onclick="ImageButton5_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    </asp:Content>

