<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Cronometro.aspx.cs" Inherits="Cronometro" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">

        .style12
        {
            font-family: Arial;
            font-weight: 700;
        }
        #minutos
        {
            font-family: Arial;
            color: #000000;
        }
    
        .style6
        {
            width: 68%;
        }
        </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>
    <br />
</p>
    <table align="center" class="style6">
        <tr>
            <td class="style2">
            <center style="font-family: Arial; font-weight: 700; color: #000000; font-size: x-large">
		        <span class="style12">Minutos</span> <span id="minutos">0 </span> Segundos <span id ="segundos">0 </span>
                <br>
		        <br>
                <input type="button" onclick="carga()" 
                    
                    style="border-style: none; background: #FFFFFF url('Botones/Boton_Iniciar_Crono.png') no-repeat scroll center bottom; height: 50px; width: 182px;"/>&nbsp;&nbsp;&nbsp;
		        <input type="button" onclick="Detenerse()" 
                    
                    style="border-style: none; background-image: url('Botones/Boton_Detener_Crono.png'); background-repeat: no-repeat; background-attachment: scroll; background-position: center bottom; height: 50px; width: 181px; background-color: #FFFFFF;"/>		
        </center></td>
        </tr>
    </table>
    <p>
</p>
</asp:Content>

