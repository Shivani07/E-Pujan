<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PanditBooking.aspx.cs" Inherits="PanditBooking" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
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
    <link href="css/calendar-blue.css" rel="stylesheet" type="text/css" />
    <script src="js/jquery-1.4.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.dynDateTime.min.js" type="text/javascript"></script>
    <script src="js/calendar-en.min.js" type="text/javascript"></script>
    

   <script  type="text/javascript">
       var num = 0;
       var i = 0;
       var s;
       var PArr = new Array();
       function addCard(p) {

           var v = $(p).parent().find(".pid").text();
           $(p).attr("disabled", true);
           $("#id01").show();
           s=v;
       }

//       $(document).ready(function () {
//           $("#btnSave").click(function () {
//               var c = $("#<%=TextBox1.ClientID %>");
//               window.location.href = "User/SaveData.aspx?pand=" + s + "," + c; ;
//           });
//       });
                  
         $(".w3-container").ready(function () {
        $("#<%=TextBox1.ClientID %>").dynDateTime({
            showsTime: true,
            ifFormat: "%Y/%m/%d %H:%M",
            daFormat: "%l;%M %p, %e %m, %Y",
            align: "BR",
            electric: false,
            singleClick: false,
            displayArea: ".siblings('.dtcDisplayArea')",
            button: ".next()"
        });
    });
   </script>
     <style>
            .calendar 
            {
                z-index:100;
            }
     </style>
    <title>Book Pandit</title>  
</head>
<body style="background-image:url('banners/179098.jpg');">
      <div class="container-fluid" >
       <div class="row" style=" background-color:rgba(128, 128, 128,0.4);padding:8px;height:80px; border:solid rgba(256, 256, 256,0.4);">
       <div class="col-sm-10" ><a href="index.aspx"><img src="banners/logo.jpg" alt="Puja" style="border: 1px;border-style: solid;border-color: #ddd;margin-left:15px; width: 180px; height:65px;"></a></div>
       <div class="col-sm-2">
       </div>
       </div>
       		<div id="id01" class="w3-modal" style="display: none;">
  			<form method="POST" runat="server">
  					<div class="w3-modal-content w3-center">
  					 <div class="w3-panel w3-red">
  					   <span class="w3-left"><b>Enter Booking Date and Time</b></span>
  					   <button onclick="document.getElementById('id01').style.display= 'none'" class=" w3-btn w3-red w3-circle w3-right">X</button>
  					 </div>
    					<div class="w3-container w3-red w3-center">
                            Select Date(yyyy/mm/dd) and Time(hh/mm):<asp:TextBox ID="TextBox1" runat="server" ReadOnly = "true" ForeColor="Black"></asp:TextBox><img src="banners/calender.png" />
    					</div>
                         <asp:Button ID="btnSave" runat="server" Text="Save" onclick="btnSave_Click" />
    					<%--<button class="w3-btn w3-black" type="submit" id="submit" formaction="" disabled >Done</button>--%>
  					</div>
  				 </form>
		</div>

       <div class="row" style="margin-top:0%;"> 
       <div class="col-sm-12">
       <h2 style="color:White;">Select your Pandit</h2>
         <asp:Label ID="LblRecord" runat="server" />
 
        </div>
    </div>
</div>
    </form>
</body>
</html>
