<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Ent_Product.aspx.cs" Inherits="admin_product_Ent_Product" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <br /><br />
    <table>
    <tr><td>Samagri Name</td><td><asp:TextBox ID="TxtSName" runat="server"/></td></tr>
    <tr><td>Quantity</td><td><asp:TextBox ID="TxtQuantity" runat="server"/></td></tr>
    <tr><td>Price</td><td><asp:TextBox ID="TxtPrice" runat="server"/></td></tr>
    <tr><td>Product Description</td><td><asp:TextBox ID="TxtDescription" TextMode="MultiLine" runat="server" /></td></tr>
   <tr><td> Product Image</td><td><asp:FileUpload ID="file" runat="server"  /></td></tr>
   <tr><td></td><td><asp:Button ID="btn" Text="Submit" runat="server" OnClick="btn_Click" /></td></tr>
    </table>
    </div>
    </form>
</body>
</html>
