<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
	
	<title>Transfers - Home</title>
	
	<link rel="stylesheet" href="css/styler.css" />
	<link rel="stylesheet" href="css/theme-pink.css"/>
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/jquery-ui.theme.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/icons.css" />
	<link rel="shortcut icon" href="images/favicon.ico" />
	<script src="js/e808bf9397.js"></script>

</head>
<body class="home">
		<div class="preloader">
			<div id="followingBallsG">
				<div id="followingBallsG_1" class="followingBallsG"></div>
				<div id="followingBallsG_2" class="followingBallsG"></div>
				<div id="followingBallsG_3" class="followingBallsG"></div>
				<div id="followingBallsG_4" class="followingBallsG"></div>
			</div>
		</div>
		<!-- //Preloader -->
		
		<!-- Header -->
		<jsp:include page="Header.jsp"/>
		<!-- //Header -->
	
	<!-- Main -->
	<main class="main" role="main">
		<!-- Intro -->
		<div class="intro">
			<div class="wrap">
				<div class="textwidget">
					<h1 class="wow fadeInDown">Need a ride?</h1>
					<h2 class="wow fadeInUp">You've come to the right place.</h2>
					<div class="actions">
						<a href="#services" title="Our services" class="btn large white wow fadeInLeft anchor">Our services</a>
						<a href="#booking" title="Make a booking" class="btn large color wow fadeInRight anchor">Make a booking</a>
					</div>
				</div>
			</div>
		</div>
		<!-- //Intro -->
		
		<!-- Search -->
		<div class="advanced-search color" id="booking">
			<div class="wrap">
				<form role="form" action="BookingServlet" method="post">
					<!-- Row -->
					<input type="hidden" name="method"  value="page1" />
				
					
					
					<div class="row">
						<div class="form-group datepicker one-third">
							<label for="dep-date">Departure date and time</label>
							<input type="text" class="form-control datepicker" id="dep-date" autocomplete="off"  name="dep_date" required/>
						</div>
						<div class="form-group datepicker one-third">
							<label for="ret-date">Return date and time</label>
							<input type="text" class="form-control datepicker" id="ret-date" autocomplete="off"  name="ret_date" required/>
						</div>
						
						
					</div>
					<!-- //Row -->
					<div class="f-row">
						<div class="form-group select one-third">
							<label>Pick up location</label>
							<input type="text" id="pickup2" name="pickup" required/>
						</div>
						<div class="form-group select one-third">
							<label>Drop off location</label>
							<input type="text" id="drop2" name="drop" required/>
						</div>
					</div>
					
					
					
					<!-- Row -->
					<div class="f-row">
						<div class="form-group spinner">
							<label for="people">How many people <small>(including children)</small>?</label>
							<input type="number" id="people" min="1"  name="people" required/>
						</div>
						<div class="form-group radios">
							<div>
								<input type="radio" name="radio"  value="return" checked />
								<label for="return">Return</label>
							</div>
							<div>
								<input type="radio" name="radio"  value="oneway"  />
								<label for="oneway">One way</label>
							</div>
						</div>
						<div class="form-group right">
							<button type="submit" class="btn large black">Find a transfer</button>
						</div>
					</div>
					<!--// Row -->
				</form>
			</div>
		</div>
		<!-- //Search -->
		
		<!-- Services iconic -->
		<div class="services iconic white">
			<div class="wrap">
				<div class="row">
					<!-- Item -->
					<div class="one-third wow fadeIn">
						<span class="circle"><span class="icon  icon-themeenergy_savings"></span></span>
						<h3>Fixed rates</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn" data-wow-delay=".2s">
						<span class="circle"><span class="icon icon-themeenergy_lockpad"></span></span>
						<h3>Reliable transfers</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn" data-wow-delay=".4s">
						<span class="circle"><span class="icon icon-themeenergy_open-wallet"></span></span>
						<h3>No booking fees</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn">
						<span class="circle"><span class="icon icon-themeenergy_heart"></span></span>
						<h3>Free cancellation</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn" data-wow-delay=".2s">
						<span class="circle"><span class="icon icon-themeenergy_magic-trick"></span></span>
						<h3>Booking flexibility</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn" data-wow-delay=".4s">
						<span class="circle"><span class="icon icon-themeenergy_call"></span></span>
						<h3>24h customer service</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn">
						<span class="circle"><span class="icon icon-themeenergy_cup"></span></span>
						<h3>Award winning service</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn" data-wow-delay=".2s">
						<span class="circle"><span class="icon icon-themeenergy_attach"></span></span>
						<h3>Benefits for partners</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
					
					<!-- Item -->
					<div class="one-third wow fadeIn" data-wow-delay=".4s">
						<span class="circle"><span class="icon icon-themeenergy_stars"></span></span>
						<h3>Quality vehicles</h3>
						<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy  tinc dolore magna.</p>
					</div>
					<!-- //Item -->
				</div>
			</div>
		</div>
		<!-- //Services iconic -->
		
		
		<!-- Services -->
		<div class="services boxed white" id="services">
			<!-- Item -->
			<article class="one-fourth wow fadeIn">
				<figure class="featured-image">
					<img src="images/uploads/img.jpg" alt="" />
					<div class="overlay">
						<a href="services.html" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="services.html">Private transfers</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<a class="more" title="Read more" href="services.html">Read more</a>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".2s">
				<figure class="featured-image">
					<img src="images/uploads/img4.jpg" alt="" />
					<div class="overlay">
						<a href="services.html" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="services.html">Bus transfers</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<a class="more" title="Read more" href="services.html">Read more</a>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".4s">
				<figure class="featured-image">
					<img src="images/uploads/img2.jpg" alt="" />
					<div class="overlay">
						<a href="services.html" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="services.html">Shuttle transfers</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<a class="more" title="Read more" href="services.html">Read more</a>
				</div>
			</article>
			<!-- //Item -->
			
			<!-- Item -->
			<article class="one-fourth wow fadeIn" data-wow-delay=".6s">
				<figure class="featured-image">
					<img src="images/uploads/img3.jpg" alt="" />
					<div class="overlay">
						<a href="services.html" class="expand">+</a>
					</div>
				</figure>
				<div class="details">
					<h4><a href="services.html">Helicopter transfers</a></h4>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
					<a class="more" title="Read more" href="services.html">Read more</a>
				</div>
			</article>
			<!-- //Item -->			
		</div>
		<!-- //Services -->
		

		
		
		
	</main>
	<!-- //Main -->
	
	<!-- Footer -->
	<jsp:include page="Footer.jsp"/>
	<!-- //Footer -->
	
	 <!-- jQuery -->
    <script src="js/jquery.min.js"></script>
	<script src="js/jquery-ui.min.js"></script>
	<script src="js/jquery-ui-timepicker-addon.min.js"></script>
	<script src="js/jquery.uniform.min.js"></script>
	<script src="js/jquery.slicknav.min.js"></script>
	<script src="js/wow.min.js"></script>
	<script src="js/jquery-ui-sliderAccess.js"></script>
	<script src="js/search.js"></script>
	<script src="js/scripts.js"></script>
	<script type="text/javascript" src="js/required_jquries.js"></script>	
	
	
	
	
	<!-- TEMPLATE STYLES -->

	<script src="js/styler.js"></script>
	
	
	<script type="text/javascript">
	 $('#dep-date').datetimepicker({
			dateFormat: 'yy-mm-dd',
			minDate:"0",
		    onSelect: function(dateText, inst){
		        $('#ret-date').datepicker('option','minDate', new Date(dateText));
		    },
		});
	 $('#ret-date').datetimepicker({
			dateFormat: 'yy-mm-dd',
			minDate:"0",
		    onSelect: function(dateText, inst){
		        $('#dep-date').datepicker('option','minDate', new Date(dateText));
		    },
		});
	
	
	</script>
	
	
	
	
	
  </body>
</html>