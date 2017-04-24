<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="stronaglowna.aspx.cs" Inherits="WebApplication9.stronaglowna" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet5.css" rel="stylesheet" />
    <title></title>
</head>
<body background="tlo18.jpg">
    <form id="form1" runat="server">
    <div id="tresc">
    
        <h2>CZY MASZ UKOŃCZONE 18 LAT?</h2>
    
        
        
        
    
    </div>
       <br />
        <br />
        <asp:Button  CSSClass="button" ID="Button1" runat="server" OnClick="Button1_Click" Text="Tak"  Height="30px" style="margin-left: 606px" Width="50px" />
       
        
&nbsp;<asp:Button CSSClass="button" ID="Button2" runat="server" OnClick="Button2_Click" Text="Nie"  Height="30px" style="margin-right: 606px; margin-left:25px" Width="50px" />
        
            </form>
</body>
</html>
