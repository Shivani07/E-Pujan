<%@ Page Language="C#" AutoEventWireup="true" CodeFile="MyCart.aspx.cs" Inherits="User_MyCart" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>My Cart</title>
     <link href="../css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="../css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <script src="../js/bootstrap.js" type="text/javascript"></script>
    <script src="../js/bootstrap.min.js" type="text/javascript"></script>
    <script src="../js/npm.js" type="text/javascript"></script>
    <script src="../js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <link href="../w3.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
table { border-collapse: collapse; }
tr:nth-child { border: solid thin; }
td { padding-left:20px;}
th{ width:auto;
    height:10px;}
td,th{ text-align:center;}
        .style2
        {
            width: 12px;
        }
        .style1
        {
            padding:5px;
            word-spacing:1px;
        }
        </style>
        <script  type="text/javascript">
            $(document).ready(function () {
                $('#b1').on('click', function () {
                    $('#id01').show();
                });
            });
        </script>
       
</head>
<body>
    <form id="form1" runat="server">
     <div class="container-fluid" style="background-image:url('../banners/124.jpeg');">
       <div class="row" style=" background-color:rgb(44,44,44)<%--rgb(74, 28, 2)--%>;padding:8px;height:80px; border:solid rgba(256, 256, 256,0.4);">
       <a href="../index.aspx"><img src="../banners/logo.jpg" alt="Puja" style="border: 1px;border-style: solid;border-color: #ddd;margin-left:15px; width: 180px; height:65px;"></a>
       <ul class="nav navbar-nav navbar-right navbar navbar-fixed-top" style="background-color:transparent; padding-left:1000px; padding-top:20px;">
        <li class="w3-hover-black w3-round-large">
             <a href="../ViewOrder.aspx" style="text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 20px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; line-height: 40px; color:#D8AA46;">View your Orders</a>
        </li>
        <li class="w3-hover-black w3-round-large">
            <a href="../Logout.aspx""  style="text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 20px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; line-height: 40px; color:#D8AA46; ">Logout</a>
        </li></ul></div>
     <span onclick="document.getElementById('id01').style.display='none'" class="">
		<div id="id01" class="w3-modal" style="display: none;">
  			<div class="w3-modal-content">
  				<div class="w3-container w3-green w3-center">
      				<p>Your order is placed successfully!!</p><p> You will soon recieve a mail confirming it<br /> and your order will be delivered in an estimated time of 1 day.</p>
    			</div>
    			
  			</div>
		</div>
		</span>
   <div class="row">
   <div class="col-sm-9">
        <h1 style="margin-top:70px;">Your shopping cart</h1>
   </div>
   <div class="col-sm-3" style="margin-top:30px;">
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="../Samagri.aspx" 
            Text="Cancel Order and go back >" Style="margin-top:30px; text-align:right;" 
            Forecolor="#3366FF" Width="300px" Font-Size="Large"></asp:HyperLink>
   </div>
   </div>
    <div class="row">
    <div class="col-sm-9">
        <asp:PlaceHolder ID="PlaceHolder1" runat="server"></asp:PlaceHolder> 
        <table style="margin-left:400px ;"><tr><td class="style2"></td>
        <td ><asp:Label ID="Label1101" runat="server" BorderStyle="Solid" 
                BorderColor="Black" Font-Bold="True" ForeColor="Red" CssClass="style1"></asp:Label></td></tr></table>
     </div>
      <div class="col-sm-3">
          <asp:PlaceHolder ID="PlaceHolder2" runat="server"></asp:PlaceHolder>
      </div>
     </div>
    <%--PlaceHolder1.Controls.Add(new Literal { Text = "<tr><td></td><td></td><td><td></td><td>" });
                    PlaceHolder1.Controls.Add(Label1101);
                    PlaceHolder1.Controls.Add(new Literal { Text = "</td></tr></div>" });--%>
      <%--<asp:ScriptManager ID="ScriptManager1" runat="server">
      </asp:ScriptManager>
      <asp:UpdatePanel ID="UpdatePanel1" runat="server">
      <ContentTemplate>
<asp:Panel ID="EmptyCart"  runat="server" Visible="false">
<div style="text-align: center;">
<br />
<br />
<br />
<br />
<br />
<asp:Image ID="img4" runat="server" ImageUrl=" " Width="500px" />
<br />
<br />
<br />
<br />
</div>
</asp:Panel>
<asp:Panel ID="OrderPlaced" runat="server" Visible="false">
<div style="text-align: center;">
<asp:Image ID="img5" runat="server" ImageUrl="" Width="500px" />
<br />
<br />
<label>Order Placed Successfully</label>
<br />
Transaction Details Are Sent At EmailId Provided By You.
<br />
<br />
<asp:Label ID="TransactionNo" runat="server" Style="font-weight:700"></asp:Label>
<br />
<br />
<br />
<a href="TrackYourOrder.aspx" target="_blank">TrackYourTransactionDetailsHere</a>
<br />
<br />
<br />
</div>

</asp:Panel>

      </ContentTemplate>
      <div id="footer" style="border:thin ridge grey">
&nbsp; &copy; <a href="#">E-Puja.com</a>
|| <a href="../Admin%20Panel/AdminLogin.aspx">AdminPanel</a> || <a href="TrackYourOder.aspx" target="_blank">Track Your Order</a>
</div>
      </asp:UpdatePanel>--%>

    </div>
    </form>
</body>
</html>
