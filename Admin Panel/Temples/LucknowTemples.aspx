<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LucknowTemples.aspx.cs" Inherits="Admin_Panel_Temples_Temples" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="en" xmlns="http://www.w3.org/1999/xhtml" class="desktop landscape">

	
	<head>
	<title>Temples</title>
	<meta charset="utf-8">
	<meta name = "format-detection" content = "telephone=no" />
	<link rel="icon" href="images/favicon.ico" type="image/x-icon">
    <link href="css/grid.css" rel="stylesheet" type="text/css" />
	<link href="css/style.css" rel="stylesheet" type="text/css" />
	<script src="js/jquery.js"></script>
	<script src="js/touchTouch.jquery.js"></script>
	<script src="js/jquery-migrate-1.2.1.js"></script>
	<script src="js/script.js"></script>
	<script src="js/packery.pkgd.min.js"></script>
	<!--[if (gt IE 9)|!(IE)]><!-->
	<script src="js/jquery.mobile.customized.min.js"></script>
	<script src="js/wow.js"></script>
	<script>
	    $(document).ready(function () {
	        if ($('html').hasClass('desktop')) {
	            new WOW().init();
	        }
	    });
	</script>

	</head>
<body class="index-2">
<div id="header">
    <div class="row" style=" background-color:rgba(128, 128, 128,0.4); margin-top:0px; padding:8px;height:auto;">
       <div class="col-sm-2" ><a href="../../index.aspx"><img src="../../banners/logo.jpg" alt="Puja" style="border: 0px;border-color: #ddd;margin-left:5px; width: 180px; height:65px;"></a></div>
       <div class="col-sm-10">
		<h1><a href="LucknowTemples.aspx" style="font-size:"medium";>Temples</a></h1>
		</div></div>
            <div class="full-width-container block-1">
		<div class="container">
			<div class="row">
				<div class="grid_12">
					<header>
						<h2><span>In Lucknow</span></h2>
					</header>
				</div>
				<div id="touch_gallery">
					<div class="grid_4">
						<div class="img_block"><a href="BalajiLKO.aspx"><img src="img/Bala-Ji-Temple.jpg" alt="Services"/><i></i></a></div>
						<article>
							<h4>Bala Ji Temple</h4>
							<p>Balaji Temple in Lucknow is a newly-constructed shrine, built on the pattern of the famous Tirupati Balaji Temple in south India.there are beautifully carved idols of Lord Venketeshwar, Goddess Andal, Goddess Padmavathi and Lord Hanuman.</p>
						    
                        </article>
					</div>
					<div class="grid_4">
						<div class="img_block"><a href="AliganjHanuman.aspx"><img src="img/Aliganj%20Hunuman-temple.jpg" alt="Services"/><i></i></a></div>
						<article>
							<h4>Aliganj Hunuman Mandir</h4>
							<p>This temple is situated near Kapoor Thala, Aliganj. Famous ‘Bara Mangal’ festival of Lucknow is held in Lucknow each year in Jeth month and is associated mainly with this ancient temple.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_block"><a href="MankameshwarLKO.aspx"><img src="img/mankameshwar-mandir3.jpg" alt="Services"/><i></i></a></div>
						<article>
							<h4>Mankameswar Mandir</h4>
							<p>Mankameshwar temple lies in the banks of river Yamuna, near Saraswathi Ghat. The temple is dedicated to Lord Shiva.Mondays in the Sawan month (Hindu calendar) is considered auspicious and devotees pay visit to the temple during this time.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_block"><a href="ChandrikaLKO.aspx"><img src="img/chindrika.jpg" alt="Services"/><i></i></a></div>
						<article>
							<h4>Chandrika Devi Mandir</h4>
							<p>Located on the banks of the Gomti River on Sitapur Road, Chandrika Devi Temple is an ancient temple from the Ramayana era.The temple is visited by a pool of devotees every day; especially during the time of Navratras, which is a prominent Hindu festival.</p>
						</article>
					</div>
					<div class="grid_4">
						<div class="img_block"><a href="HanumanSetuLKO.aspx"><img src="img/HanumanSetu.jpg" alt="Services"/><i></i></a></div>
						<article>
							<h4>Hanuman Setu Mandir</h4>
							<p>Inaugurated in 1966, January. This ashram has 2 murtis Neem Karoli Baba, 2 and 2 murtis Hanuman Shiva Linga. This temple makes an important service in the distribution Prasad Maharaj-ji in Lucknow, and seems to be one of the most visited temples in the city.</p></article>
					</div>
                    <div class="grid_4">
						<div class="img_block"><a href="RamKrishnaMathLKO.aspx"><img src="img/ram-krishna-math.jpg" alt="Services"><i></i></a></div>
						<article>
							<h4>Ram Krishna Math</h4>
							<p>The Ramakrishna Math started functioning in Nirlanagar seven decades ago. Made of marble and located amidst a garden, the math contains idols of Sri Ramakrishna, Holy Mother Sarada Devi and Swami Vivekananda.</p>
						</article>
					</div>
				</div>
					<%--<div class="pagination">
                    <a href="#" class="active">1</a>
                    <a href="#">2</a>
                    </div>--%>
			</div>
		</div>
	</div>		
</div>
<section id="content">
</section>
<a href="#" id="toTop" class="fa fa-angle-up" style="display: block;"></a>
</body>
</html>