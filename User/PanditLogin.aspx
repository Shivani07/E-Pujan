<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PanditLogin.aspx.cs" Inherits="User_PanditLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            height: 514px;
            width: 1012px;
        }
        .style1
        {
            width: 313px;
        }
        .style2
        {
            width: 332px;
        }
        .style3
        {
            width: 231px;
        }
        .style4
        {
            height: 136px;
        }
        .style5
        {
            font-weight: bold;
            font-family: "Times New Roman", Times, serif;
            font-size: large;
            color: #66FFFF;
        }
    </style>
</head>
<body background="User/1.jpg" style="background-repeat:no-repeat">
    <form id="form1" runat="server">
    <div>
    <table style="height: 493px; width: 968px">
    <tr><td colspan="2" class="style4"></td></tr>
    <tr><td class="style1"></td><td class="style2">
        <asp:panel ID="fullPnl" runat="server" Width="374px" BorderColor="Black" 
            BorderStyle="Double" BorderWidth="10px" Height="213px" 
            style="margin-left: 0px" >
           <table align="center" style="height: 209px; width: 344px;">
        <tr><td><asp:Label ID="UserLbl" runat="server" Text="UserName" CssClass="style5"></asp:Label></td>
        <td class="style3"><asp:TextBox ID="UserTxt" runat="server" Width="192px"></asp:TextBox></td>
        </tr>
        <tr><td><asp:Label ID="PassLbl" runat="server" Text="Password" CssClass="style5"></asp:Label></td>
        <td class="style3"><asp:TextBox ID="PassTxt" runat="server" Width="192px" 
                TextMode="Password"></asp:TextBox></td>
       </tr>
        <tr><td colspan="2" style="text-align: center">&nbsp;&nbsp;&nbsp; <asp:Button ID="LoginBtn" 
                runat="server" onclick="LoginBtn_Click" Text="LogIn" 
            Width="139px" 
                style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif" />
            <asp:Button ID="NewLogin" runat="server" onclick="NewLogin_Click" 
                style="font-weight: 700; font-size: medium; font-family: Arial, Helvetica, sans-serif" 
                Text="Create New Account" Width="170px" />
            </td></tr> </table>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Label" 
                style="font-weight: 700; font-size: xx-large; color: #99FFCC; font-family: 'Baskerville Old Face'" 
                Visible="False"></asp:Label>
        </asp:panel></td></tr>
    </table>
   
    </div>
    </form>
</body>
</html>
