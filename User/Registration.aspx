<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Registration.aspx.cs" Inherits="Registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration</title>
    <link href="Registration.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .style1
        {
            font-weight: bold;
            font-style: italic;
            color: #FF0000;
        }
        .style3
        {
            width: 225px;
        }
        .style4
        {
            width: 142px;
        }
        .style5
        {
            height: 36px;
        }
        .style6
        {
            width: 142px;
            height: 36px;
        }
        .style7
        {
            width: 225px;
            height: 36px;
        }
        .style9
        {
            width: 300px;
        }
        .style10
        {
            width: 778px;
        }
        .style11
        {
            height: 52px;
        }
        .style12
        {
            color: #FF6666;
            font-size: x-large;
        }
        .style13
        {
            width: 300px;
            height: 58px;
        }
        .style14
        {
            width: 778px;
            height: 58px;
        }
    </style>



    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template"/>
    <meta name="author" content="GeeksLabs"/>
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal"/>
    <link rel="shortcut icon" href="img/favicon.png"/>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.min.css" rel="stylesheet" />    
    <!-- full calendar css-->
    <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
	<link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
    <!-- easy pie chart-->
    <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen"/>
    <!-- owl carousel -->
    <link rel="stylesheet" href="css/owl.carousel.css" type="text/css"/>
	<link href="css/jquery-jvectormap-1.2.2.css" rel="stylesheet"/>
    <!-- Custom styles -->
	<link rel="stylesheet" href="css/fullcalendar.css"/>
	<link href="css/widgets.css" rel="stylesheet"/>
    <link href="css/style.css" rel="stylesheet"/>
    <link href="css/style-responsive.css" rel="stylesheet" />
	<link href="css/xcharts.min.css" rel=" stylesheet"/>	
	<link href="css/jquery-ui-1.10.4.min.css" rel="stylesheet"/>


 </head>
<body background="User/47106760-background-hd.jpg">
    <form id="form1" runat="server">
    <div>
    
    <table>
     
     <tr>
     <td class="style13" colspan="2">
         <a href="../index.aspx"><img src="../banners/logo.jpg" style="height:50px; width:100px; border:black solid;"/></a>
      
     </tr>
     
     <tr>
     <td class="style9"></td>
     <td class="style10">
         <asp:Button ID="RegUser"  Height="50px" 
             Text="Register Yourself" runat="server" class="btn btn-primary" 
             Font-Bold="True" Font-Names="Footlight MT Light" Font-Size="X-Large" 
             onclick="RegUser_Click" CausesValidation="False" />
       &nbsp;<asp:Button ID="RegAsPandit" Text="Register Pandit/Mandali" Height="50px" 
             runat="server" class="btn btn-primary" Font-Bold="True" 
             Font-Names="Footlight MT Light" Font-Size="X-Large" onclick="RegAsPandit_Click" 
             CausesValidation="False" />
       </td> 
     </tr>
     <tr>
     <td class="style9"></td>
     <td align="center" class="style10">

     <asp:Panel ID="RegisterUrselfpnl" runat="server" Height="500" Width="800" 
             BackColor="White">
    <table cellpadding="5px" style="padding: 20px 20px 20px 90px; border: thick double #008000; border-spacing: 10px; border-color:Black; width: 800px; height: 500px;" 
             bgcolor="White"  >
  
    <tr><td align="center" colspan="3" class="style11">&nbsp;<h4 class="style12">You are Registering Yourself as User.</h4></td>
        </tr>
        <tr>
            <td>
                <strong>Full Name:</strong></td>
            <td class="style4">
                <asp:TextBox ID="TxtName" runat="server" class="form-control" Height="30px" 
                    Width="220px" />
            </td>
            <td class="style3">
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                    ControlToValidate="TxtName" CssClass="style1" 
                    ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator>
            </td>
        </tr>
    <tr><td class="style5"><strong>E-mail Id:</strong></td>
        <td class="style6"><asp:TextBox ID="email" runat="server" class="form-control" EnableTheming="False" Height="30px" Width="220px"  /></td>
        <td class="style7">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" 
                runat="server" ControlToValidate="email" CssClass="style1" 
                ErrorMessage="*Invalid ID" 
                ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                ControlToValidate="email" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
    <tr><td style="font-weight: 700">Gender:</td>
        <td class="style4"><asp:RadioButton ID="RadioButton1" GroupName="gender"  Checked="true"  runat="server" Text="Male" />
            &nbsp;&nbsp;<asp:RadioButton ID="RadioButton2" GroupName="gender" runat="server" Text="Female" /></td>
        <td class="style3">&nbsp;</td></tr>
    <tr><td><strong>Mobile No.:</strong></td>
        <td class="style4"><asp:TextBox ID="TxtMobile" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
        <td class="style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" 
                runat="server" ControlToValidate="TxtMobile" CssClass="style1" 
                ErrorMessage="*Invalid Mobile Number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" 
                ControlToValidate="TxtMobile" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
        
    <tr><td><strong>Address.:</strong></td>
        <td class="style4"><asp:TextBox ID="TxtAddress" TextMode="MultiLine" runat="server" Width="220px" class="form-control"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" 
                runat="server" ControlToValidate="TxtAddress" CssClass="style1" 
                ErrorMessage="*FieldCannot be Empty"></asp:RequiredFieldValidator></td></tr>
    <tr><td><strong>New Password:</strong></td><td class="style4"><asp:TextBox ID="TxtPass" 
            runat="server" Height="30px" Width="220px" class="form-control" 
            TextMode="Password"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" 
                runat="server" ControlToValidate="TxtPass" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
    <tr><td><strong>Confirm Password</strong>:</td>
        <td class="style4"><asp:TextBox ID="TxtPass1" runat="server" Height="30px" 
                Width="220px" class="form-control" TextMode="Password" /></td>
        <td class="style3">
            <asp:CompareValidator ID="CompareValidator1" runat="server" 
                ControlToCompare="TxtPass" ControlToValidate="TxtPass1" 
                ErrorMessage="*Password Does Not Match" 
                style="font-weight: 700; font-style: italic; color: #FF0000"></asp:CompareValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" 
                ControlToValidate="TxtPass1" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
   <tr><td><strong>Profile Picture:</strong></td>
       <td class="style4"><asp:FileUpload ID="profilpic" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
       <td class="style3">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator7" 
               runat="server" ControlToValidate="profilpic" CssClass="style1" 
               ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
   <tr><td></td>
        <td class="style4"><asp:Button ID="btn1" Text="Submit" runat="server"  OnClick="btn1_Click" Height="44px" style="font-weight: 700" Width="102px" class="btn btn-primary"/>
            <asp:Button ID="btn2" runat="server" class="btn btn-primary" Height="44px" 
                OnClick="btn2_Click" style="font-weight: 700" Text="Reset" Width="102px" 
                CausesValidation="False" />
       </td>
       <td class="style3">&nbsp;</td></tr>
    </table>
    </asp:Panel>
    
    
    <asp:Panel ID="RegPanditpnl" runat="server" Height="500" Width="800" 
             BackColor="White">
    <table cellpadding="5px" style="padding: 20px 20px 20px 90px; border: thick double #008000; border-spacing: 10px; border-color:Black; width: 800px; height: 500px;" 
             bgcolor="White"  >
  <tr><td align="center" colspan="3" class="style11">&nbsp;<h4 class="style12">You are Registering Yourself as Pandit/Mandali.</h4></td>
        </tr>
    <tr><td><strong>Full Name:</strong></td>
        <td class="style4"><asp:TextBox ID="TxtPandit" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" 
                runat="server" ControlToValidate="TxtPandit" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
        <tr><td align="center"><strong>Occupation(Category):</strong></td>
        <td class="style4"><asp:TextBox ID="TxtType" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator15" 
                runat="server" ControlToValidate="TxtType" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
    <tr><td><strong>Mobile No.:</strong></td>
        <td class="style4"><asp:TextBox ID="txtMoPandit" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
        <td class="style3">
            <asp:RegularExpressionValidator ID="RegularExpressionValidator4" 
                runat="server" ControlToValidate="txtMoPandit" CssClass="style1" 
                ErrorMessage="*Invalid Mobile Number" ValidationExpression="\d{10}"></asp:RegularExpressionValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" 
                ControlToValidate="txtMoPandit" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
    <tr><td><strong>Address.:</strong></td>
        <td class="style4"><asp:TextBox ID="txtAddPandit" TextMode="MultiLine" runat="server" Width="220px" class="form-control"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" 
                runat="server" ControlToValidate="txtAddPandit" CssClass="style1" 
                ErrorMessage="*FieldCannot be Empty"></asp:RequiredFieldValidator></td></tr>
    <tr><td><strong>New Password:</strong></td><td class="style4"><asp:TextBox ID="txtPassPandit" TextMode="Password" runat="server" Height="30px" Width="220px" class="form-control"/></td>
        <td class="style3">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" 
                runat="server" ControlToValidate="txtPassPandit" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
    <tr><td><strong>Confirm Password</strong>:</td>
        <td class="style4"><asp:TextBox ID="TxtConfPass" runat="server" Height="30px" 
                Width="220px" class="form-control" TextMode="Password" /></td>
        <td class="style3">
            <asp:CompareValidator ID="CompareValidator2" runat="server" 
                ControlToCompare="txtPassPandit" ControlToValidate="TxtConfPass" 
                ErrorMessage="*Password Does Not Match" 
                style="font-weight: 700; font-style: italic; color: #FF0000"></asp:CompareValidator>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator13" runat="server" 
                ControlToValidate="TxtConfPass" CssClass="style1" 
                ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
   <tr><td><strong>Profile Picture:</strong></td>
       <td class="style4"><asp:FileUpload ID="PanditProfile" runat="server" Height="30px" Width="220px"  class="form-control"/></td>
       <td class="style3">
           <asp:RequiredFieldValidator ID="RequiredFieldValidator14" 
               runat="server" ControlToValidate="PanditProfile" CssClass="style1" 
               ErrorMessage="*Field Cannot be Empty"></asp:RequiredFieldValidator></td></tr>
   <tr><td></td>
        <td class="style4"><asp:Button ID="RegPanditBtn" Text="Submit" runat="server"  OnClick="RegPanditBtn_Click" Height="44px" style="font-weight: 700" Width="102px" class="btn btn-primary"/>
            <asp:Button ID="ResetBtn" runat="server" class="btn btn-primary" Height="44px" 
                style="font-weight: 700" Text="Reset" Width="102px" 
                onclick="ResetBtn_Click" CausesValidation="False" />
       </td>
       <td class="style3">&nbsp;</td></tr>
    </table>
    </asp:Panel></td>
    </tr>
    </table>
   
     </div>

    </form>

</body>
</html>
