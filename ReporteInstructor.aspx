<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="ReporteInstructor.aspx.cs" Inherits="ReporteInstructor" %>

<%@ Register assembly="Microsoft.ReportViewer.WebForms, Version=10.0.0.0, Culture=neutral, PublicKeyToken=b03f5f7f11d50a3a" namespace="Microsoft.Reporting.WebForms" tagprefix="rsweb" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style4
        {
            width: 47%;
        }
        .style5
        {
            width: 129px;
        }
        .style6
        {
            width: 287px;
        }
        .style7
        {
            font-size: small;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <asp:ScriptManager ID="ScriptManager1" runat="server">
        </asp:ScriptManager>
        <br />
        <table align="center" class="style4">
            <tr>
                <td align="right" colspan="4" style="text-align: center">
                    <asp:Label ID="Label4" runat="server" 
                        style="font-family: Impact; font-size: x-large" Text="Reporte Instructor"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="4" style="text-align: center">
                    <asp:Label ID="Label3" runat="server" 
                        style="text-align: center; font-size: small" 
                        Text="El formato fecha debe ser el siguente: dd/mm/aaaa"></asp:Label>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Label ID="Label1" runat="server" Text="Fecha inicio" CssClass="style7"></asp:Label>
                </td>
                <td align="left" colspan="2">
                    <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="right" colspan="2">
                    <asp:Label ID="Label2" runat="server" Text="Fecha fin" CssClass="style7"></asp:Label>
                </td>
                <td align="left" colspan="2">
                    <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="style5">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:ImageButton ID="ImageButton1" runat="server" 
                        ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton1_Click" />
                </td>
                <td class="style6" colspan="2">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <br />
                    <asp:ImageButton ID="ImageButton2" runat="server" 
                        ImageUrl="~/Botones/Boton_Imprimir_Reporte.png" onclick="ImageButton2_Click" />
                </td>
                <td>
                    <br />
                    <asp:ImageButton ID="ImageButton3" runat="server" 
                        ImageUrl="~/Botones/Boton_Limpiar.png" onclick="ImageButton3_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="4">
                    <rsweb:ReportViewer ID="ReportViewer1" runat="server" Width="640px">
                    </rsweb:ReportViewer>
                </td>
            </tr>
        </table>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
</asp:Content>

