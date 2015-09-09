<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Tipo_Reporte.aspx.cs" Inherits="Tipo_Reporte_Instru" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 76%;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        <br />
    </p>
    <table align="center" class="style4">
        <tr>
            <td>
                <asp:ImageButton ID="ImageButton1" runat="server" 
                    ImageUrl="~/Botones/Boton_Reporte_Ficha.png" 
                    onclick="ImageButton1_Click" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton2" runat="server" 
                    ImageUrl="~/Botones/Boton_Reporte_Instructor.png" 
                    onclick="ImageButton2_Click" />
            </td>
            <td>
                <asp:ImageButton ID="ImageButton3" runat="server" 
                    ImageUrl="~/Botones/Boton_Reporte_Inasistencia.png" 
                    onclick="ImageButton3_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

