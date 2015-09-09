<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Generar_Reporte_Aprendiz.aspx.cs" Inherits="Generar_Reporte_Aprendiz" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
        .style6
        {
            width: 68%;
        }
        .style8
        {
            font-family: arial;
            font-size: x-large;
            font-weight: 700;
            color: #000000;
            text-align: center;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <table align="center" class="style6">
        <tr>
            <td class="style2" colspan="2" style="text-align: center">
                <asp:Label ID="Label4" runat="server" CssClass="style8" 
                    Text="Generar Reporte"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2" style="text-align: justify">
                <br />
                <asp:Label ID="Label3" runat="server" 
                    style="font-family: Arial; color: #000000; font-size: small; text-align: justify" 
                    
                    
                    Text="Por favor en la fecha inicio seleccione la fecha  desde la que desea hacer la búsqueda. En la fecha fin coloque hasta que fecha desea hacer la búsqueda."></asp:Label>
                <br />
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Calendar ID="Calendar1"  runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px"  DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    onselectionchanged="Calendar1_SelectionChanged" SelectionMode="DayWeekMonth" 
                    ShowGridLines="True" Width="200px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
                <asp:Calendar ID="Calendar2" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    onselectionchanged="Calendar2_SelectionChanged" ShowGridLines="True" 
                    Width="200px">
                    <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                    <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                    <OtherMonthDayStyle ForeColor="#CC9966" />
                    <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                    <SelectorStyle BackColor="#FFCC66" />
                    <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" 
                        ForeColor="#FFFFCC" />
                    <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                </asp:Calendar>
            </td>
            <td class="style2">
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Fecha Inicio:"></asp:Label>
&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
&nbsp;<asp:ImageButton ID="ImageButton7" runat="server" Height="20px" 
                    ImageUrl="~/Botones/Boton_Calendario.png" onclick="ImageButton7_Click" 
                    Width="20px" />
                <br />
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Fecha Fin:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                &nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton8" runat="server" Height="20px" 
                    ImageUrl="~/Botones/Boton_Calendario.png" onclick="ImageButton8_Click" 
                    Width="20px" />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <br />
                <br />
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton4_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton5" runat="server" 
                    ImageUrl="~/Botones/Boton_Imprimir_Reporte.png" 
                    onclick="ImageButton5_Click" />
&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton6" runat="server" 
                    ImageUrl="~/Botones/Boton_Limpiar.png" onclick="ImageButton6_Click" />
            </td>
        </tr>
    </table>
    <p>
    </p>
</asp:Content>

