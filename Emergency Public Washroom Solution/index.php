<?php
require 'db.php';
session_start();


if(array_key_exists('send', $_POST)){
	$name = $_POST['name'];
	$email = $_POST['email'];
	$phone = $_POST['phone'];
	$message = $_POST['message'];
	
	$mysqli->query("INSERT INTO feedback (name, email, phone, message) VALUES ('$name', '$email', '$phone', \"$message\")");
}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Finding Toilet | Home </title>
<link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen"/>

<!-- Custom CSS Rules -->
<link rel="stylesheet" href="css/custom.css" type="text/css" media="screen"/>

<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Progress Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<script src="js/modernizr.custom.97074.js"></script>
<script src="js/jquery-1.8.3.min.js"></script>
<!---->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
 <script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event){		
				event.preventDefault();
				$('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
			});
		});
	</script>
<!---->

</head>	
<!--banner-->
<div id="home" class="banner">	 
	 <div class="header">
		 <div class="container">
			 <div class="logo">
				 <h1><a href="#">ToiletIndicator</a></h1>
			 </div>
		 </div>
	 </div>
	 <div class="top-menu">
		 <div class="container">
			 <nav class="cl-effect-1">
				<span class="menu"><img src="images/nav-icon.png" alt=""/></span>
			 <ul>
				 <li><a class="scroll" href="#home">Home</a></li>
				 
				 <li><a class="scroll" href="#service">Services</a></li>
				 
				 <li><a class="scroll" href="#contact">Contact Us</a></li>
				 
				
				 <li><a class="scroll" href="#about">About</a></li>
			 </ul>
			 </nav>
		 </div>		 
		 <!-- script-for-menu -->
		 <script>					
					$("span.menu").click(function(){
						$(".top-menu ul").slideToggle("slow" , function(){
						});
					});
		 </script>
		 <!-- script-for-menu -->	

	 </div>
	 <div class="banner-info">
		 <div class="container">
			 <h1 class="custom-h1" style="font-size: 4em;">WANNA FIND A WASHROOM!?</h1>
		 </div>
	 </div>
	 <div class="banner-form">
		 <div class="container">
			<!-- <form>
				<input type="text" value="" placeholder="Search By Area">
				
				<input type="submit" value="Search" href="second.php">
			</form> -->
			
			<form action="second.php" method="post" autocomplete="off">
            <div class="field-wrap">
				<label>Search </label>
				<input type="text" list="areas" required autocomplete="off" name="search" placeholder="Search By Area"/>
				 <datalist id="areas">
                    <option value="Bashundhara">
                    <option value="Dhanmondi">
                    <option value="Narinda">
                    <option value="United International University">
                    <option value="Mohammadpur">
                    <option value="Badda">
                    <option value="Mohakhali">
                </datalist>
			</div>
		    </form>
			
		 </div>
		 <p>Public Washrooms of Dhaka on your Nearest Region..</p>
	 </div>
</div>
<!---->
<div id="about" class="about">
	 <div class="container">		 
		 <h3 class="abt">About</h3>
		 <div class="about-top">
			 <h4>“How the idea came about!?”.</h4>
			
			<p> If a thought or idea strikes you, it suddenly comes into your mind: Please read it at least for once. 
			I saw many 'passenger trains' or 'launch'  has toilet facilities, often at the ends of carriages or rooms. Toilets suitable for this. But in the outdoor, it is difficult to find out a toilet surely. Suppose, you go on a tour at that time you've all the facilities for the journey by authority. But whenever you'll go out on a street side and you've to pee, then it might become a confusion to find out a toilet instantly. Then I think if there is anything to solve these problems in a glimpse. And for this ideas, there are also some sub-conditions which I have to fulfill. In Database course, I've known that for this kind of solution you've to keep all the user's data on a database. And the output is for all the people who've to pee!! That time also it was just a thought. </p>
				
		 </div>
		 <div class="about-grids">
			 <div class="col-md-6 about-grid-info">
			     <h3>How does it work?</h3>
				 <h4>First one, it's FREE!!</h4>
				 <p> You might've go on a market or mosque. And our duty is to find you a place for done this. </p>
				 
				 <h4>Second one, Here are also PAYABLE system for this.</h4>
				 <p>Some kinds of 'Mobile Toilet' by Dhaka City Corporation or Private Toilets. But the conditon is you've to PAY. It depend's on your choice!!</p>
			 </div>
			 <div class="col-md-6 about-pic">
				 <img src="images/img1.jpg" class="img-responsive" alt=""/>
			 </div>
			 <div class="clearfix"></div>
		 </div>
	 </div>
</div>
<!---->
<div id="service" class="service">
	 <div class="container">
		 <h3 class="ser">Services</h3>
		 
		 <div class="service-grids">
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s1.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3>Live Washroom Support</h3>
					 <p>Our duty is to rapidly find a toilet like this.</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 
			 
			 
			  <div class="service-grids">
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3>Mosque Washroom Support</h3>
					 <p>There's so many mosques in Dhaka City. And they've toilet facilities for all the people. We'd love to find you toilet facility like this for your EMERGENCY!!</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
	
	
				 
			 </div>
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s2.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3>Portable Washroom Support</h3>
					 <p>And providing mobile toilet service within a reasonable distance if there's any.</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
			 
			 
			  <div class="service-grids">
			 <div class="service-grid">
				 <div class="col-md-4 service-pic">
					 <img src="images/s3.jpg" class="img-responsive" alt=""/>
				 </div>
				 <div class="col-md-8 service-info">
					 <h3>Shopping Mall Washroom Support</h3>
					 <p> Also there are large number of malls in Dhaka City. And they've toilet facilities for all the people. We'd love to find you toilet facility like this for your EMERGENCY!!</p>
				 </div>
				 <div class="clearfix"></div>
			 </div>
	
	
			 
		 </div>
	 </div>
</div>
<!---->
<!--script-->
<script src="js/jquery.chocolat.js"></script>		
		<!--light-box-files -->
		<script type="text/javascript">
		$(function() {
			$('.gallery a').Chocolat();
		});
		</script>
<!--script-->



<div id="testi" class="pricing">
	 <div class="container">
		 <div class="pricing-text">			
			<h3>Reviews</h3>				
		 </div>
		 <!-- start slider -->	
		 <div class="pricing-grids">
			 <div class="slider">
				 <ul class="rslides" id="slider2">
					 <li>						 
					     <div class="col-md-6 pricing-plans">
							  <p>Very pleased with the service and the quality of the washrooms would most definitely use again great company. Thanks!!</p>
							  <div class="pic1">
								 <img src="images/m1.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
								<h5 class = "font">Ishtiak Hossain Linkon</h5>
									<a href="#">UIU, Dept. Of CSE</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>
						 <div class="col-md-6 pricing-plans">
							  <p>Great site easy to use lovely bathrooms. Very helpful when I searched with location. Also an easy website to navigate.</p>
							  <div class="pic1">
								 <img src="images/m2.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5  class = "font">Habibur Rahman Sifat</h5>
									<a href="#">UIU, Dept. Of CSE</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>						
					      <div class="clearfix"></div>						  
					  </li>	
					  <li>						    
						 <div class="col-md-6 pricing-plans">
							  <p>Suspendisse potenti. Nulla facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m2.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>	
						  <div class="col-md-6 pricing-plans">
							  <p>Fusce ultrices, arcu nec semper facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m1.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>
					      <div class="clearfix"></div>						  
					  </li>
					  <li>						 
					     <div class="col-md-6 pricing-plans">
							  <p>Duis eget urna ultricies facilisi In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae enim sit amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m1.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>
						 <div class="col-md-6 pricing-plans">
							  <p>Suspendisse potenti. Nulla facilisi. In imperdiet lacinia venenatis. Nulla justo nunc, fermentum vitae enim amet, 
							  condimentum dapibus urna. Nam eget purus sed.</p>
							  <div class="pic1">
								 <img src="images/m3.jpg" alt=""/>
							  </div>
							  <div class="pic-info">
									<h5>John Doe</h5>
									<a href="#">CEO, THE RIVERS COMPANY</a>
							  </div>
							  <div class="clearfix"></div>
						 </div>						
					      <div class="clearfix"></div>						  
					  </li>	
				  </ul>
			   </div>
			   <!-- end slider -->
		  </div>  	
	 </div>
</div>
<!---->
<div id="contact" class="contact">
	 <div class="container">
		 <h3>Contact Us</h3>
		 
		 <div style="width: 100%"><iframe width="100%" height="400" src="https://maps.google.com/maps?width=100%&amp;height=600&amp;hl=en&amp;coord=23.798715634020667, 90.45239210128786&amp;q=united%20international%20university+(Solution%20Finder%20Office)&amp;ie=UTF8&amp;t=&amp;z=14&amp;iwloc=B&amp;output=embed" frameborder="0" scrolling="no" marginheight="0" marginwidth="0"><a href="https://www.maps.ie/create-google-map/">Add map to website</a></iframe></div><br />
		  
		  
		  <form method="post" autocomplete="off">
		  <p>Feedback</p>
			 <div class="col-md-6 contact-left">
					<input name="name" type="text" placeholder="Name" required/>
					<input name="email" type="text" placeholder="Email" required/>
					<input name="phone" type="text" placeholder="Phone" required/>
			 </div>
			 <div class="col-md-6 contact-right">
				 <textarea name="message" placeholder="Message"></textarea>
				 <input name="send" type="submit" value="SEND"/>
			 </div>
			 <div class="clearfix"></div>
		 </form>	
	 </div>
</div>
<!---->
<div class="footer">
	 <div class="container">
		 <div class="copywrite">
			 <p> © 2018 Progress. All rights reserved | Design by <a href="http://w3layouts.com/">Washroom Solution Team</a></p>
		 </div>
		 <div class="social">							
				<a href="#"><i class="facebook"></i></a>
				<a href="#"><i class="twitter"></i></a>
				<a href="#"><i class="dribble"></i></a>	
				<a href="#"><i class="google"></i></a>	
				<a href="#"><i class="youtube"></i></a>	
		 </div>
		 <div class="clearfix"></div>
	 </div>
</div>
<!---->
<script type="text/javascript">
		$(document).ready(function() {
				/*
				var defaults = {
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
				*/
		$().UItoTop({ easingType: 'easeOutQuart' });
});
</script>
<a href="#to-top" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!----> 
</body>
</html>
