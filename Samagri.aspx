<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Samagri.aspx.cs" Inherits="Samagri" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.min.css" rel="stylesheet" type="text/css" />
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/npm.js" type="text/javascript"></script>
    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
    .thumbnail{background-color:transparent;}
    </style>
   <script  type="text/javascript">
       var num = 0;
       var i = 0;
       var PArr = new Array();
       function addCard(p) {

           var v = $(p).parent().find(".pid").text();
           
           PArr[i] = v;
           i++;
           num = num + 1;
           $("#cno").html(num);
           $(p).attr("disabled",true);
       }
       $(document).ready(function () {
           $("#cno").html(num);
       });
       $(document).ready(function () {
           $("#Span1").click(function () {
           window.location.href = "SessionCheck.aspx";
       });
   });
       $(document).ready(function () {
           $("#mcart").click(function () {
               if (num != 0) {
                  
                   window.location.href = "User/MyCart.aspx?pid=" + PArr;
               }
               else {
                   $("#id01").show();
               }
           });
       });
//       $(document).ready(function () {
//           $(".uli").hide();
//           $("#sp1").click(function () {
//               var op = $(this).text();
//               if (op == "+") {
//                   $(".uli").show("slow");
//                   $(this).text("-");
//               }
//               else {
//                   $(".uli").hide("slow");
//                   $(this).text("+");
//               }
//           });
//       });

   </script>
   <span onclick="document.getElementById('id01').style.display='none'" class="">
		<div id="id01" class="w3-modal" style="display: none;">
  			<div class="w3-modal-content">
  				<div class="w3-container w3-green w3-center">
      				<p>Sorry!! You have no items added in your Cart.</p>
    			</div>
    			
  			</div>
		</div>
		</span>
    <title>Buy Samagri</title>
</head>
<body>
    <form id="form1" runat="server">
    <div class="container-fluid" style="background-image:url('banners/179098.jpg');">
       <div class="row" style=" background-color:rgba(128, 128, 128,0.4);padding:8px;height:80px; border:solid rgba(256, 256, 256,0.4);">
       <div class="col-sm-8" ><a href="index.aspx"><img src="banners/logo.jpg" alt="Puja" style="border: 1px;border-style: solid;border-color: #ddd;margin-left:15px; width: 180px; height:65px;"></a></div>
       <div class="col-sm-2">
           <a href="ViewOrder.aspx" style="text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 20px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; line-height: 80px; color:#D8AA46;">View your Orders</a>
       </div>
       <div class="col-sm-2">
       <button type="button" id="mcart"  style="margin-top: 20px; margin-left: 40px;" class="btn btn-default">
        <span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"></span> Cart(<span id="cno"></span>)
       </button>
        </div>
       </div>
       <!--Cart header end-->

       <div class="row" style="margin-top:0%;"> 
       <div class="col-sm-12">
       <!-- while Loop Starts-->
       <h2 style="color:White;">Select from a variety of Products</h2>
         <asp:Label ID="LblRecord" runat="server" />
 
  <!-- While Loop ends-->
        </div>
    </div>
</div>
</form>
</body>
</html>
 <%--<h2><span id="sp1" style='cursor:pointer;font-size:20pt;'>+</span> Single Item</h2>--%>
