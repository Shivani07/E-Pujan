<%@ Page Language="C#" AutoEventWireup="true" CodeFile="index.aspx.cs" Inherits="index" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <meta charset="utf-8">
    
    <title>E-PujaLko</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link href="http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" />
    <link href="css/bootstrap-theme.css" rel="stylesheet" type="text/css" />
    <link href="css/normalize.min.css" rel="stylesheet" type="text/css" />
    <link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="css/animate.css" rel="stylesheet" type="text/css" />
    <link href="css/templatemo_misc.css" rel="stylesheet" type="text/css" />
    <link href="css/templatemo_style.css" rel="stylesheet" type="text/css" />
    <script src="js/vendor/modernizr-2.6.2.min.js" type="text/javascript"></script>
    <script src="js/bootstrap.js" type="text/javascript"></script>
    <script src="js/bootstrap.min.js" type="text/javascript"></script>
    <script src="js/npm.js" type="text/javascript"></script>
    <script src="js/jquery-3.1.1.min.js" type="text/javascript"></script>
    <link href="w3.css" rel="stylesheet" type="text/css" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#btnlog").click(function () {
//                $.ajax({
//                    type: "POST",
//                    url: "index.aspx/Logout",
//                    data: "",
//                    contentType: "application/json; charset=utf-8",
//                    dataType: "json",
//                    success: function (response) {
//                        alert(response.d);
//                    }
//                });

                window.location.href = "logout.aspx";

            });
        });
    </script>
    <style type="text/css">

        a:hover
        {
           color:rgb(0, 0, 0);
        }
    </style>
</head>
<body>    

  <div class="bg-overlay"></div>
    <nav id="mainNav" class="navbar navbar-default navbar-fixed-top">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header" >
        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
            <span class="sr-only">Toggle navigation</span> Menu <i class="fa fa-bars"></i>
        </button>
        </div>

        <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1" style="background-color:rgba(125, 125, 125, 0.5); border-color: solid 2px White;">
        <ul class="nav navbar-nav navbar-right">
        <li class="w3-hover-black w3-round-large">
             <a href="index.aspx" style="text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 20px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; line-height: 40px; color: #FF0000;">Home</a>
        </li>
        <li class="w3-hover-black w3-round-large">
            <a href="Samagri.aspx"  style="text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 20px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; line-height: 40px; color:#D8AA46; ">Buy Samagri</a>
        </li>
        <li class="w3-hover-black w3-round-large">
            <a href="PanditBooking.aspx"  style="text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 20px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; line-height: 40px; color: #D8AA46;">Book Pandit/Mandali</a>
        </li>
       	<li class="w3-hover-black w3-round-large">
            <a href="Admin%20Panel/Temples/LucknowTemples.aspx"  style="text-align: center; border-style: hidden; border-color: #AA0000; padding: 2px; font-size: 20px; font-weight: bold; text-transform: capitalize; font-family: Georgia; margin-right: 20px; color: #D8AA46; line-height: 40px;">Temples</a>
        </li>
		<li class="w3-hover-black w3-round-large" style="text-align:center;">
           <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
        </li>
        <li class="w3-hover-black w3-round-large" style="text-align:center;">
           <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </li>
        </ul>
        <asp:Label ID="Label3" runat="server" Text="" ForeColor="Black" Font-Size="X-Large"></asp:Label>
       </div> 
   </nav>

        <div class="row" ></div>
            <br />
            <div class="row" style="margin-top:4%; margin-left:5%;">
            <div class="col-md-4 col-sm-12">
                <div class="sidebar-menu">
                    
                    <div class="logo-wrapper">
                        <h1 class="logo">
                            <a href="#"><img src="banners/logo.jpg" alt="Puja"/>
                            <span>One Stop for all Pujas</span></a>
                        </h1>
                    </div> <!-- /.logo-wrapper -->
                    
                    <div class="menu-wrapper">
                        <ul class="menu">
                            <li><a class="show-3" href="#">Home</a></li>
                            <li><a class="show-1" href="#">About Us</a></li>
                            <li><a class="show-2" href="#">Our Services</a></li>
                            <li><a class="show-4" href="#" onclick="templatemo_map();">Contact</a></li>
                        </ul> <!-- /.menu -->
                        <a href="#" class="toggle-menu"><i class="fa fa-bars"></i></a>
                    </div> <!-- /.menu-wrapper -->

                    <!--Arrow Navigation-->
                    <a id="prevslide" class="load-item"><i class="fa fa-angle-left"></i></a>
                    <a id="nextslide" class="load-item"><i class="fa fa-angle-right"></i></a>

                </div> <!-- /.sidebar-menu -->
            </div> <!-- /.col-md-4 -->

            <div class="col-md-8 col-sm-12">
                
                <div id="menu-container">

                    <div id="menu-1" class="about content">
                        <div class="row">
                            <ul class="tabs">
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab1" class="icon-item" style="font-size:medium;font-weight: bold;"><span>Our History</span><br />
                                    </a> <!-- /.icon-item -->
                                </li>
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab2" class="icon-item" style="font-size:medium;font-weight: bold;"><span>What We Do</span><br />
                                    </a> <!-- /.icon-item -->
                                </li>
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab3" class="icon-item" style="font-size:medium;font-weight: bold;"><span>Our Support</span><br />
                                    </a> <!-- /.icon-item -->
                                </li>
                            </ul> <!-- /.tabs -->
                            <div class="col-md-12 col-sm-12">
                                <div class="toggle-content text-center" id="tab1">
                                    
                                    <p>ePuja is Lucknow’s first online portal that offers access to religious ceremonies and remedy rituals across most temples in Lucknow. Easy access to divine interaction and accountability of transactions differentiate ePuja’s services including a wide network, online ecommerce facilitation and credibility.
                                      <br><br> Given the fact that Indians are now wide spread across the globe and even when in the country are hard pressed for time, knowledge and resources to complete their religious aspirations. They are restricted by lack of information or options in terms of an easy solution when required the most.As a result, many of us have lost touch with the divine and are increasingly moving away from our roots of spiritual absolutions, essential to our identity.
                                    <br><br>
                                   
                                </div>

                                <div class="toggle-content text-center" id="tab2">
                                    
                                    <p>ePuja offers not just an access to remedy rituals and religious ceremonies, but also aims to educate Hindus about the significance of the same, in order to help rebuild faith and encourage the younger generation to actively participate and know more about their significance in a carefully crafted, yet engaging ecosystem.
                                        <br><br>It is our endeavor to provide our customers with a high-quality, comprehensive and secure portal to help fulfill religious aspirations, where they can avail ceremonies conducted daily across 3600 temples in India akin to a One Stop Divinity Portal for their frequent, varied, vital services and religious requirements whenever and wherever they may need it.
                                        <br><br>ePuja is a portal dedicated to make your path to Divinity easy and convenient. Seeking divine intervention and paying homage to the powers of the Almighty, now available at the tips of your fingers. It is HIS way of ensuring that you stay in touch with HIS Divinity always, through us at ePuja. Be it information about Temples or Legends that make our Gods so endearing to seek answers to your problems through Remedy Pujas and fulfill your spiritual needs by Booking Pujas across over 3600 temples in India. Be it for your wellbeing or to gift divine blessings to a loved one, we assure you that we will have it conducted for you in person on the day you seek, with the offerings couriered to you, anywhere in the world. 
                                </div>

                                <div class="toggle-content text-center" id="tab3">
                                     
                                    <p>We offer individual help as well as you can also progress with a business in this by becoming a franchisee or a supplier to our portal.<br /><br />
                                    For Becoming A Franchisee Call :    
                                    <br />Ms. Shivani Chaurasia : +91 9892132730
                                    <br />
                                    Ms. Srishti Pandey : +91 8088226466
                                    <br />
                                    Email: partner@ePuja.co.in                               </div>
                            </div> <!-- /.col-md-12 -->
                        </div> <!-- /.row -->

                      
                    </div> <!-- /.about -->

                    <div id="menu-2" class="services content">
                        <div class="row">
                            <ul class="tabs">
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab4" class="icon-item" style="font-size:medium; font-weight: bold;">
                                    <span>Sell Products</span><br />
                                    </a> <!-- /.icon-item -->
                                </li>
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab5" class="icon-item" style="font-size:medium; font-weight: bold;">
                                    <span>Service Booking</span>
                                    </a> <!-- /.icon-item -->
                                </li>
                                <li class="col-md-4 col-sm-4">
                                    <a href="#tab6" class="icon-item" style="font-size:medium;font-weight: bold;">
                                    <span>View Temples</span>
                                    </a> <!-- /.icon-item -->
                                </li>
                            </ul> <!-- /.tabs -->
                            <div class="col-md-12 col-sm-12">
                                <div class="toggle-content text-center" id="tab4">
                                    <h3>Our Products</h3>
                                    <p>Our products contain all essential single as well as ready-made kits for important pujas. You can just buy a single product or also choose from a variety of bundles available.</p>
                                </div>

                                <div class="toggle-content text-center" id="tab5">
                                   <h3>Find your Pandit/Mandali to Perform Puja</h3>
                                    <p>Just a stop to save your time in searching a suitable pandit according to your requirements and availability. You can search through a range, select and book a pandit after your satisfaction of information.</p>
                                </div>

                                <div class="toggle-content text-center" id="tab6">
                                    <h3>Temples Nearby</h3>
                                    <p> Difficulty in finding a temple?? You can just visit our website and look for all temples nearby, know its history and find its exact location on the map.</p>
                                </div>
                            </div> <!-- /.col-md-12 -->
                        </div> <!-- /.row -->
                    </div> <!-- /.services -->

                    <div id="menu-4" class="contact content">
                        <div class="row">
                            <div class="col-md-12 col-md-12">
                                <div class="toggle-content text-center spacing">
                                    <h3>Contact Us</h3>
                                    <p><b>Thank you for visiting our website. We hope that we have provided you with the best of our materials and fulfiled all you requirements regarding the holy rituals.We would be glad if you reply us with your precious feedback or any other queries or suggestions are also welcomed.</b>
                                    <br><br><strong>Address:</strong> 2, Rana Pratap Marg, Hazratganj, Lucknow.
                                    <br><strong>Email:</strong> info@company.com | <strong>Tel:</strong> +91 889-020-0340</p>
                                </div>
                            </div> 
                            <div class="col-md-12">
                                <div class="contact-form">
                                    <div class="row">
                                    	<form action="#" method="post" runat="server">
                                            <fieldset class="col-md-4">
                                            <asp:TextBox ID="TxtName" runat="server" placeholder="Name" />
                                            </fieldset>
                                            <fieldset class="col-md-4">
                                                <asp:TextBox ID="TxtMail" runat="server" placeholder="Email"/>
                                            </fieldset>
                                            <fieldset class="col-md-4">
                                                <asp:TextBox ID="TxtSub" runat="server" placeholder="Subject"/>
                                            </fieldset>
                                            <fieldset class="col-md-12">
                                                <asp:TextBox ID="TxtMes" runat="server" placeholder="Message" TextMode="MultiLine"/>
                                            </fieldset>
                                            <fieldset class="col-md-12">
                                                <asp:Button ID="submit" class="button" Text="Submit" runat="server"  OnClick="send_Click"/>
                                            </fieldset>
                                        </form>
                                    </div> <!-- /.row -->
                                </div> <!-- /.contact-form -->
                            </div> <!-- /.col-md-12 -->
                        </div> <!-- /.row -->
                    </div> <!-- /.contact -->

                </div> <!-- /#menu-container -->

            </div> <!-- /.col-md-8 -->

        </div> <!-- /.row -->
    </div> <!-- /.container-fluid -->
    
    <div class="container-fluid">   
        <div class="row">
            <div class="col-md-12 footer">
                <p id="footer-text">
                
                	Copyright &copy; 2017 Developed by
                 	
                    | Shivani<a href="Admin%20Panel/AdminLogin.aspx"> Admin</a>
                 
                 </p>
            </div><!-- /.footer --> 
        </div>
    </div> <!-- /.container-fluid -->

    <script src="js/vendor/jquery-1.10.1.min.js"></script>
    <script>        window.jQuery || document.write('<script src="js/vendor/jquery-1.10.1.min.js"><\/script>')</script>
    <script src="js/jquery.easing-1.3.js"></script>
    <script src="js/bootstrap.js"></script>
    <script src="js/plugins.js"></script>
    <script src="js/main.js"></script>
    <script type="text/javascript">

        jQuery(function ($) {

            $.supersized({

                // Functionality
                slide_interval: 7000, // Length between transitions
                transition: 6, // 0-None, 1-Fade, 2-Slide Top, 3-Slide Right, 4-Slide Bottom, 5-Slide Left, 6-Carousel Right, 7-Carousel Left
                transition_speed: 700, // Speed of transition
               //fit_always:1,
                // Components                           
                slide_links: 'blank', // Individual links for each slide (Options: false, 'num', 'name', 'blank')
                slides: [ // Slideshow Images

                    {
                      image: 'banners/maxresdefault.jpg'
                    },
                    {
                        image: 'banners/thumb-1920-466469.jpg'
                    }, {
                        image: 'banners/christmas_light.jpg'
                    },  {
                        image: 'banners/snowflake-lantern-on-wooden-floor-With-yellow-candle-light.jpg'
                    }, {
                        image: 'banners/Burning-incense-Asian-culture.jpg'
                    }, {
                        image: 'banners/1%20(1).jpg'
                    }
                    //{
                        //image: 'images/templatemo-slide-4.jpg'
                    //}
                    ]

            });
        });
            
    </script>
    
    	<!-- Google Map -->
        <script src="http://maps.google.com/maps/api/js?sensor=true" type="text/javascript"></script>
        <script src="js/vendor/jquery.gmap3.min.js" type="text/javascript"></script>
        <!-- Google Map Init-->
        <script type="text/javascript">
            function templatemo_map() {
                $('.google-map').gmap3({
                    marker: {
                        address: '16.8496189,96.1288854'
                    },
                    map: {
                        options: {
                            zoom: 15,
                            scrollwheel: false,
                            streetViewControl: true
                        }
                    }
                });
            }
        </script>
</body>
</html>
