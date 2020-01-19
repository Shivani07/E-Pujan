<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminLogin.aspx.cs" Inherits="Admin_Panel_AdminLogin" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
    <meta name="description" content="Creative - Bootstrap 3 Responsive Admin Template"/>
    <meta name="author" content="GeeksLabs"/>
    <meta name="keyword" content="Creative, Dashboard, Admin, Template, Theme, Bootstrap, Responsive, Retina, Minimal"/>
    <link rel="shortcut icon" href="img/favicon.png">

    <title>Admin Login Page</title>

    <!-- Bootstrap CSS -->    
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <!-- bootstrap theme -->
    <link href="css/bootstrap-theme.css" rel="stylesheet"/>
    <!--external css-->
    <!-- font icon -->
    <link href="css/elegant-icons-style.css" rel="stylesheet" />
    <link href="css/font-awesome.css" rel="stylesheet" />
    <!-- Custom styles -->
    <link href="css/style.css" rel="stylesheet"/>
    <link href="css/style-responsive.css" rel="stylesheet" />

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 -->
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
</head>

  <body class="login-img3-body">
  <a href="../index.aspx"><img src="../banners/logo.jpg" style="height:50px; width:80px"/><br />Back</a>
    <div class="container">
        
        <form id="form1" runat="server" class="login-form">
           
        <div class="login-wrap">
            <p class="login-img"><i class="icon_lock_alt"></i></p>
            <div class="input-group">
              <span class="input-group-addon"><i class="icon_profile"></i></span>
              
              <asp:TextBox ID="TextBox1" runat="server" class="form-control" placeholder="Username/Email" ></asp:TextBox>
            </div>
            <div class="input-group">
                <span class="input-group-addon"><i class="icon_key_alt"></i></span>
                 <asp:TextBox ID="TextBox2" runat="server" class="form-control" 
                    placeholder="Password" TextMode="Password" ></asp:TextBox>
                
            </div>
            <label class="checkbox">
                
                <input type="checkbox" value="remember-me"> Remember me
                
           
            </label>
             <asp:Button ID="Button1" runat="server" Text="Log In" 
                class="btn btn-primary btn-lg btn-block" onclick="Button1_Click"/>
                
            
           
        </div>
        </form>

    </div>


  </body>
</html>
