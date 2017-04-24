<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="podsumowanie.aspx.cs" Inherits="WebApplication9.podsumowanie" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet6.css" rel="stylesheet" />
    
    <title></title>
</head>
<body background="ost.jpg">
    <form id="form1" runat="server">
                        
     <ol>   
     <li><a href="uwagi.aspx">Uwagi</a></li>
     <li><a href="ciekawostki.aspx">Ciekawostki</a>  </li>
     <li><a href="recenzje.aspx">Dostępność piw</a> </li>

     </ol> 
    <div id="zaw">
    
        <B font-size: 30px>PODSUMOWANIE</B><br />
        <br />
    
        Imię:
        <asp:Label ID="lbimie" runat="server"></asp:Label>
        <br />
        <br />
        Nazwisko:
        <asp:Label ID="lbnazwisko" runat="server"></asp:Label>
        <br />
        <br />
        Rok urodzenia:
        <asp:Label ID="lbrok" runat="server"></asp:Label>
        <br />
        <br />
        E-mail:
        <asp:Label ID="lbemail" runat="server"></asp:Label>
        <br />
        <br />
        Uwagi:
        <asp:Label ID="lbuwagi" runat="server"></asp:Label>
        <br />
        <br />
        Wiadomość została do nas wysłana :)
        <br />
       
        </div>
    </form>
</body>
</html>
