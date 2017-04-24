<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="recenzje.aspx.cs" Inherits="WebApplication9.recenzje" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet2.css" rel="stylesheet" />
    <style type="text/css">
        .DetailsView {
            margin-left: 41px;
            margin-top: 15px;
        }
        .GridView {
            margin-right: 0px;
            margin-top: 0px;
        }
    </style>
</head>
<body background="grid.jpg">
    <form id="form1" runat="server">
    <div id="strona">
     <ol>   
     <li><a href="uwagi.aspx">Uwagi</a></li>
     <li><a href="ciekawostki.aspx">Ciekawostki</a>  </li>
     <li><a href="recenzje.aspx">Dostępność piw</a> </li>

     </ol> 
       

    <div id="gridview">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="XmlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" AllowPaging="True" CssClass="GridView" DataKeyNames="ID" Width="501px" Height="120px" >
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
               <asp:TemplateField HeaderText="Nazwa" SortExpression="Nazwa" >
                   
                    <ItemTemplate>
                        <%# XPath("Nazwa") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cena" SortExpression="Cena" >
                    <ItemTemplate>
                        <%# XPath("Cena") %>
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:CommandField SelectText="Szczegóły"  ShowSelectButton="True" >
               
                <ControlStyle CssClass="details" />
                </asp:CommandField>
               
            </Columns>
        </asp:GridView>
    </div>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
            
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" DataSourceID="XmlDataSource2" GridLines="None" Height="100px" OnPageIndexChanging="DetailsView1_PageIndexChanging" Width="501px" CssClass="DetailsView" CellPadding="0" HorizontalAlign="Left" >
            <Fields>
               
                <asp:BoundField DataField="ID" HeaderText="ID:" SortExpression="ID"  HeaderStyle-CssClass="DVnaglowek">
<HeaderStyle CssClass="DVnaglowek"></HeaderStyle>
                </asp:BoundField>
                <asp:TemplateField HeaderText="Nazwa:" HeaderStyle-CssClass="DVnaglowek">
                    <ItemTemplate>
                        <%# XPath("Nazwa") %>
                    </ItemTemplate>

<HeaderStyle CssClass="DVnaglowek"></HeaderStyle>
                </asp:TemplateField>
                
                <asp:TemplateField HeaderText="Producent:" HeaderStyle-CssClass="DVnaglowek">
                    <ItemTemplate>
                        <%# XPath("Producent") %>
                    </ItemTemplate>

<HeaderStyle CssClass="DVnaglowek"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Cena:" HeaderStyle-CssClass="DVnaglowek">
                    <ItemTemplate>
                        <%# XPath("Cena") %>
                    </ItemTemplate>

<HeaderStyle CssClass="DVnaglowek"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Sklepy:" HeaderStyle-CssClass="DVnaglowek">
                    <ItemTemplate>
                        <%# XPath("Wystepowanie") %>
                    </ItemTemplate>

<HeaderStyle CssClass="DVnaglowek"></HeaderStyle>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Recenzja:" HeaderStyle-CssClass="DVnaglowek">
                    <ItemTemplate>
                        <%# XPath("Recenzja") %>
                    </ItemTemplate>

<HeaderStyle CssClass="DVnaglowek"></HeaderStyle>
                </asp:TemplateField>
            </Fields>
        </asp:DetailsView>
        </div>
      
         <asp:XmlDataSource ID="XmlDataSource1" runat="server" DataFile="~/Piwa.xml"></asp:XmlDataSource>
        <div id="detailsview">
            
        </div>
        <asp:XmlDataSource ID="XmlDataSource2" runat="server" DataFile="~/Piwa.xml"></asp:XmlDataSource>
        <br />
        <br />
    </form>
</body>
</html>
