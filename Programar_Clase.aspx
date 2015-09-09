<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Programar_Clase.aspx.cs" Inherits="Programar_Clase" %>



<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style6
        {
            width: 68%;
        }
        .style11
        {
            font-family: Arial;
            font-size: small;
        }
        #minutos
        {
            font-family: Arial;
            color: #000000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
        <br />
    </p>
    <table align="center" class="style6">
        <tr>
            <td class="style2" colspan="2">
                <asp:Button ID="Button1" runat="server" BackColor="White" BorderColor="White" 
                    BorderStyle="None" ForeColor="White" Height="22px" onclick="Button1_Click" 
                    Text="Button" />
            </td>
        </tr>
        <tr>
            <td class="style2">
                <asp:Calendar ID="Calendar1" runat="server" BackColor="#FFFFCC" 
                    BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" 
                    Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" 
                    onselectionchanged="Calendar1_SelectionChanged" ShowGridLines="True" 
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
            <td class="style2" style="text-align: center">
&nbsp;<asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Fecha:" CssClass="style11"></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:ImageButton ID="ImageButton8" runat="server" Height="20px" 
                    ImageUrl="~/Botones/Boton_Calendario.png" onclick="ImageButton7_Click" 
                    Width="20px" />
&nbsp;<asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                    ControlToValidate="TextBox1" ErrorMessage="*" 
                    
                    style="font-size: small; font-family: Arial, Helvetica, sans-serif; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                &nbsp;&nbsp;
                &nbsp;<br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <br />
		        <asp:ImageButton ID="ImageButton9" runat="server" 
                    ImageUrl="~/Botones/Boton_Cronometro.png" onclick="ImageButton9_Click" />
		        <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2">
                &nbsp;</td>
            <td class="style2">
                <asp:Label ID="Label2" runat="server" ForeColor="Black" Text="Aprendiz:" 
                    CssClass="style11"></asp:Label>
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="*" 
                    
                    style="font-size: small; font-family: Arial, Helvetica, sans-serif; color: #FF0000" 
                    ValidationGroup="Necesario"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
                    ControlToValidate="TextBox2" ErrorMessage="Solo números" 
                    style="color: #FF0000; font-size: small; font-family: Arial, Helvetica, sans-serif" 
                    ValidationExpression="^[1-9]+\d*$"></asp:RegularExpressionValidator>
                <br />
                <br />
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label3" runat="server" 
                    style="color: #009933; font-size: small; font-family: Arial, Helvetica, sans-serif"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label4" runat="server" 
                    style="font-size: small; font-family: Arial, Helvetica, sans-serif; color: #FF0000"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <asp:Label ID="Label5" runat="server" 
                    style="font-size: small; font-family: Arial, Helvetica, sans-serif; color: #000000; font-weight: 700" 
                    Text="Tipo de documento:"></asp:Label>
&nbsp;
                <asp:Label ID="Label6" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif"></asp:Label>
                <br />
                <asp:Label ID="Label7" runat="server" 
                    style="font-size: small; font-family: Arial, Helvetica, sans-serif; color: #000000; font-weight: 700" 
                    Text="Numero de documento:"></asp:Label>
&nbsp;
                <asp:Label ID="Label8" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif"></asp:Label>
                <br />
                <asp:Label ID="Label9" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif; font-weight: 700">Tipo de usuario:</asp:Label>
&nbsp;
                <asp:Label ID="Label10" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif"></asp:Label>
                <br />
                <asp:Label ID="Label11" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif; font-weight: 700">Nombres:</asp:Label>
&nbsp;
                <asp:Label ID="Label12" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif"></asp:Label>
                <br />
                <asp:Label ID="Label13" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif; font-weight: 700">Apellidos:</asp:Label>
&nbsp;
                <asp:Label ID="Label14" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif"></asp:Label>
                <br />
                <asp:Label ID="Label15" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif; font-weight: 700">Correo:</asp:Label>
&nbsp;
                <asp:Label ID="Label16" runat="server" 
                    style="color: #000000; font-size: small; font-family: Arial, Helvetica, sans-serif"></asp:Label>
            </td>
        </tr>
        <tr>
            <td class="style2" colspan="2">
                <br />
                <asp:ImageButton ID="ImageButton4" runat="server" 
                    ImageUrl="~/Botones/Boton_Regresar.png" onclick="ImageButton4_Click" />
&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:ImageButton ID="ImageButton7" runat="server" 
                    ImageUrl="~/Botones/Boton_Guardar.png" 
                    onclick="ImageButton7_Click1" ValidationGroup="Necesario" />
                &nbsp;&nbsp;&nbsp;&nbsp;
                <asp:ImageButton ID="ImageButton6" runat="server" 
                    ImageUrl="~/Botones/Boton_Limpiar.png" onclick="ImageButton6_Click" />
            </td>
        </tr>
    </table>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
</asp:Content>

