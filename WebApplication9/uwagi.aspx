<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="uwagi.aspx.cs" Inherits="WebApplication9.uwagi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="StyleSheet3.css" rel="stylesheet" />
    <title></title>
</head>
<body background="uwagi.jpg">
    <div id="strona">
          <ol>   
     <li><a href="uwagi.aspx">Uwagi</a></li>
     <li><a href="ciekawostki.aspx">Ciekawostki</a>  </li>
     <li><a href="recenzje.aspx">Dostępność piw</a> </li>

     </ol> 
    <form id="form1" runat="server">
    <div>
     <div id="ob_bledow">
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" Font-Size="15pt" BackColor="Firebrick" ForeColor="white"  align="left" CssClass="ob_bledow" />
        </div>
        <br />
        <div id="zawartosc">
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
        Jeżeli masz jakieś uwagi dotyczące treści zawartych na stronie, chciałbyś razem z nami rozbudowywać aplikację lub chcesz wyrazić po prostu swoją opinię, wypełnij poniższy formularz :) <br />
        <br />
           <br />
             
        Wybierz widok(uzupełnij każdy z nich!):
            <asp:DropDownList ID="ddlwidok" runat="server" Height="16px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" Width="128px" AutoPostBack="True" style="margin-left: 14px; margin-top: 0px">
            <asp:ListItem>-----</asp:ListItem>
            <asp:ListItem Value="V1">Widok 1</asp:ListItem>
            <asp:ListItem Value="V2">Widok 2</asp:ListItem>
            <asp:ListItem Value="V3">Widok 3</asp:ListItem>
        </asp:DropDownList>
           
            </div>
           
        <br />
        <br />
        <br />
    </div>
 <div>
          <asp:MultiView ID="MultiView1" runat="server" OnActiveViewChanged="MultiView1_ActiveViewChanged">
            <asp:View ID="V1" runat="server">
                <div class="v_naglowek">    
        Imię:&nbsp;
        <asp:TextBox ID="tbimie" runat="server" OnTextChanged="TextBox1_TextChanged" Height="25px"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Pole 'Imie' jest obowiazkowe" ControlToValidate="tbimie" CssClass="err_sign" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ErrorMessage="Niepoprawny format imienia" ControlToValidate="tbimie"  CssClass="err_sign" ValidationExpression="^[a-zA-ZąćęłńóśżźĄĆĘŁŃÓŚŻŹ ]+$" Display="Dynamic" ForeColor="Red">*</asp:RegularExpressionValidator>
                 <br />
                    <br />
        Nazwisko:
        <asp:TextBox ID="tbnazwisko" runat="server" Height="25px" OnTextChanged="tbnazwisko_TextChanged"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Pole 'Nazwisko' jest obowiazkowe" ControlToValidate="tbnazwisko" CssClass="err_sign" ForeColor="Red">*</asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Niepoprawny format nazwiska" ControlToValidate="tbnazwisko"  CssClass="err_sign" ValidationExpression="^[a-zA-ZąćęłńóśżźĄĆĘŁŃÓŚŻŹ ]+$" Display="Dynamic" ForeColor="Red">*</asp:RegularExpressionValidator>
                    <br />
                 <br />
                    Rok urodzenia: <asp:TextBox ID="tbrok" runat="server" OnTextChanged="tbimie_TextChanged" Height="25px" Width="128px"></asp:TextBox>
                <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Rok urodzenia wykracza poza zakres" CssClass="err_sign" ControlToValidate="tbrok" MaximumValue="2017" MinimumValue="1900" Type="Integer" Display="Dynamic" ForeColor="Red">*</asp:RangeValidator>

                 <br />
                <br />
                    </div>
                  </asp:View>
                        <asp:View ID="V2" runat="server">
            <div class="v_naglowek">
        <br />
        e-mail: <asp:TextBox ID="tbemail" runat="server" Height="25px" OnTextChanged="tbemail_TextChanged"></asp:TextBox>
                 <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Niepoprawny format adresu email" ControlToValidate="tbEmail"  CssClass="err_sign" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" ForeColor="Red">*</asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Pole 'Email' jest obowiazkowe" ControlToValidate="tbemail" CssClass="err_sign" ForeColor="Red">*</asp:RequiredFieldValidator>
                           </div>
</asp:View>
                 <asp:View ID="V3" runat="server">
            <div class="v_naglowek">
       
        Uwagi:
        
                <br />
                <asp:TextBox ID="tbuwagi" runat="server" Height="358px" OnTextChanged="TextBox1_TextChanged1" Width="443px" TextMode="MultiLine"></asp:TextBox>
        
                </div>
                   </asp:View>
                </asp:MultiView>
        <br />
        <br />
        <asp:Button CSSClass="button" ID="Button1" runat="server" OnClick="Button1_Click" Text="Dalej" Height="30px" Width="120px" style="margin-left: 50px" />
        <br />
        <br />
        <br />
    
    
    
       </div>
        
  
    </form>
        </div>
</body>
</html>
