<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Contactenos.aspx.cs" Inherits="Contactenos" %>

<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
    <style type="text/css">
    .style6
    {
        font-size: 45pt;
        font-family: impact;
    }
        .style7
        {
            width: 100%;
        }
        .style8
        {
            text-align: center;
        }
        .style9
        {
            text-align: center;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<p class="style6">
    ...CONTACTENOS...</p>
    <table class="style7">
        <tr>
            <td class="style9">
                <asp:ImageButton ID="ImageButton2" runat="server" Height="40px" 
                    ImageUrl="~/Imagenes/Logo_Facebook_Mini.png" onclick="ImageButton2_Click" 
                    Width="40px" />
            </td>
            <td class="style9">
                <asp:ImageButton ID="ImageButton3" runat="server" Height="40px" 
                    ImageUrl="~/Imagenes/Logo_Twitter_Mini.png" onclick="ImageButton3_Click" 
                    Width="40px" />
            </td>
            <td class="style9">
                <asp:ImageButton ID="ImageButton4" runat="server" Height="40px" 
                    ImageUrl="~/Imagenes/Logo_Blogspot_Mini.png" onclick="ImageButton4_Click" 
                    Width="40px" />
            </td>
        </tr>
        <tr>
            <td class="style8" colspan="3">
                <!-- Do not change the code! -->
<a id="foxyform_embed_link_236450" href="http://es.foxyform.com/"></a>
<script type="text/javascript">
    (function (d, t) {
        var g = d.createElement(t),
       s = d.getElementsByTagName(t)[0];
        g.src = "http://es.foxyform.com/js.php?id=236450&sec_hash=f2e477d622c&width=350px";
        s.parentNode.insertBefore(g, s);
    } (document, "script"));
</script>
<!-- Do not change the code! -->&nbsp;</td>
        </tr>
        </table>
    <p>
        &nbsp;</p>
<p>
</p>
</asp:Content>

