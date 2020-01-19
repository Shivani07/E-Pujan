<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
 </head>
<body>
    <form id="form1" runat="server">
    <div>
     <br /><br />
    <table>
    <tr><td>Full Name:</td><td><asp:TextBox ID="TxtName" runat="server"  /></td></tr>
    <tr><td>E-mail Id:</td><td><asp:TextBox ID="TxtUName" runat="server"  /></td></tr>
    <tr><td>Gender:</td><td><asp:TextBox ID="TxtGender" runat="server"/></td></tr>
    <tr><td>Mobile No.:</td><td><asp:TextBox ID="TxtMobile" runat="server"  /></td></tr>
    <tr><td>Address.:</td><td><asp:TextBox ID="TxtAddress" TextMode="MultiLine" runat="server"/></td></tr>
    <tr><td>Password</td><td><asp:TextBox ID="TxtPass" runat="server"/></td></tr>
    <tr><td>Confirm Password:</td><td><asp:TextBox ID="TxtPass1" runat="server"  /></td></tr>
   
   <tr><td> Profile Picture:</td><td><asp:FileUpload ID="profilpic" runat="server"  /></td></tr>
   <tr><td></td><td><asp:Button ID="btn1" Text="Submit" runat="server"  OnClick="btn1_Click" /></td></tr>
    </table>
 </div>

    </form>

</body>
</html>
