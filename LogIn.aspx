<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LogIn.aspx.cs" Inherits="LogIn" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template"/>
    <meta name="author" content="GeeksLabs"/>
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal"/>
    <link rel="shortcut icon" href="img/favicon.png">

    <title>User | Login Page</title>

    <!-- Bootstrap CSS -->    
    <link href="Admin%20Panel/css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <!-- bootstrap theme -->
    <link href="Admin%20Panel/css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <!--external css-->
    <!-- font icon -->
    <link href="Admin%20Panel/css/elegant-icons-style.css" rel="stylesheet" type="text/css" />
    
    <link href="Admin%20Panel/css/font-awesome.css" rel="stylesheet" type="text/css" />
    <!-- Custom styles -->
    <link href="Admin%20Panel/css/style.css" rel="stylesheet" type="text/css" />
    <link href="Admin%20Panel/css/style-responsive.css" rel="stylesheet" type="text/css" />


    <script type="text/javascript">
        $(document).ready(function () {
            $("#Button1").click(function () {
                window.location.href = "MyCart.aspx?pid=" + PArr;
            });
        });
    </script>

</head>

  <body class="login-img3-body">
  <a href="index.aspx"><img src="banners/logo.jpg" style="height:50px; width:80px"/><br />Back</a>
    <div class="container">
        <form id="form1" runat="server" class="login-form">
           
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              
              <asp:TextBox ID="TxtID" runat="server" class="form-control" placeholder="Username/Email" ></asp:TextBox>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                 <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                    placeholder="Password" TextMode="Password" ></asp:TextBox>
                <asp:Label ID="Label1" runat="server" BackColor="Transparent"></asp:Label>
                
            </div>
            <asp:HiddenField ID="hid" runat="server" />
             <asp:Button ID="Button1" runat="server" Text="Log In" class="btn btn-primary btn-lg btn-block" onclick="Button1_Click"/>
                Not Yet Registered??<a href="User/Registration.aspx">Sign Up..!!</a><br /><a style="padding-left:0px;" href="User/PanditLogin.aspx">Wanna Login as Pandit?? Click here..</a>            
        </div>
        </form>
    </div>
  </body>
</html>

