<%@page import="com.booking.BookingDTO"%>
<%@page import="java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Transfers - Search results</title>
	<link rel="stylesheet" href="css/styler.css" />
	<link rel="stylesheet" href="css/theme-pink.css" />
	<link rel="stylesheet" href="css/jquery-ui.css">
	<link rel="stylesheet" href="css/jquery-ui.theme.css" />
	<link rel="stylesheet" href="css/style.css" />
	<link rel="stylesheet" href="css/animate.css" />
	<link rel="stylesheet" href="css/icons.css" />
	<link rel="shortcut icon" href="images/favicon.ico">
	<script src="js/e808bf9397.js"></script>
</head>
<body>
	<!-- Preloader -->
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
	<%
	String pickup_datetime="",ret_datetime="",pickup_from="",drop_to="",ride_type="";
	int number_of_people=0;	
	
	%>
	<!-- Main -->
	<main class="main" role="main">
		<!-- Search -->
		<div class="advanced-search color">
			<div class="wrap">
				<%List<BookingDTO> aplList= (List<BookingDTO>)request.getAttribute("data");
				
				 for(BookingDTO apl:aplList){         	
					 
					  pickup_datetime =apl.getPickup_datetime();
					  ret_datetime = apl.getRet_datetime();
					  pickup_from= apl.getPickup_from();
					  drop_to= apl.getDrop_to();
					  ride_type= apl.getRide_type();
					  number_of_people = apl.getNumber_of_people();
 				}
        	%>
				
				
			</div>
		</div>
		<!-- //Search -->
		
		<div class="wrap">
		<form role="form" action="BookingServlet" method="post">
				
				
					<input type="text" name="dep_date" value="<%=pickup_datetime %>"/>
					<input type="text" name="ret_date" value="<%=ret_datetime %>"/>
					<input type="text" name="pickup" value="<%=pickup_from %>"/>
					<input type="text" name="drop" value="<%=drop_to %>"/>
					<input type="text" name="type" value="<%=ride_type %>"/>
					<input type="text" name="people" value="<%=number_of_people %>"/>
					<input type="text" name="method" value="page2"/>
			<div class="row">
				<!--- Content -->
				<div class="full-width content">
					<h2>Select transfer type for your DEPARTURE</h2>
					
					<div class="results">
						<!-- Item -->
						<article class="result">
							<div class="one-fourth heightfix"><img src="images/uploads/car.jpg" alt="" /></div>
							<div class="one-half heightfix">
								<h3>Private car <a href="javascript:void(0)" class="trigger color" title="Read more">?</a></h3>
								<ul>
									<li>
										<span class="icon icon-themeenergy_user-3"></span>
										<p>Max <strong>3 people</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_travel-bag"></span>
										<p>Max <strong>3 suitcases</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_clock"></span>
										<p>Estimated time <br /><strong>50 mins</strong></p>
									</li>
								</ul>
							</div>
							<div class="one-fourth heightfix">
								<div>
									<div class="price"><i class="fa fa-inr" aria-hidden="true"></i>13</div>
									<span class="meta">per kilometer</span>
									<input type="text" name="vehicle" value="swift" />
									<input type="submit" class="btn grey large" value="select" />
									
								</div>
							</div>
							
							
							
							<div class="full-width information">	
								<a href="javascript:void(0)" class="close color" title="Close">x</a>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							</div>
						</article>
						<!-- //Item -->
						
						<!-- Item -->
						<article class="result">
							<div class="one-fourth heightfix"><img src="images/uploads/van.jpg" alt="" /></div>
							<div class="one-half heightfix">
								<h3>Private shuttle <a href="javascript:void(0)" class="trigger color" title="Read more">?</a></h3>
								<ul>
									<li>
										<span class="icon icon-themeenergy_user-3"></span>
										<p>Max <strong>3 people</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_travel-bag"></span>
										<p>Max <strong>3 suitcases</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_clock"></span>
										<p>Estimated time <br /><strong>50 mins</strong></p>
									</li>
								</ul>
							</div>
							<div class="one-fourth heightfix">
								<div>
									<div class="price"><i class="fa fa-inr" aria-hidden="true"></i>13</div>
									<span class="meta">per kilometer</span>
									<input type="text" name="vehicle" value="scorpio" />
									<input type="submit" class="btn grey large" value="select" />
									
								</div>
							</div>
							<div class="full-width information">	
								<a href="javascript:void(0)" class="close color" title="Close">x</a>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							</div>
						</article>
						<!-- //Item -->
						
						<!-- Item -->
						<article class="result">
							<div class="one-fourth heightfix"><img src="images/uploads/van.jpg" alt="" /></div>
							<div class="one-half heightfix">
								<h3>Shared shuttle <a href="javascript:void(0)" class="trigger color" title="Read more">?</a></h3>
								<ul>
									<li>
										<span class="icon icon-themeenergy_user-3"></span>
										<p>Max <strong>3 people</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_travel-bag"></span>
										<p>Max <strong>3 suitcases</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_clock"></span>
										<p>Estimated time <br /><strong>50 mins</strong></p>
									</li>
								</ul>
							</div>
							<div class="one-fourth heightfix">
								<div>
									<div class="price"><i class="fa fa-inr" aria-hidden="true"></i>13</div>
									<span class="meta">per kilometer</span>
									<input type="text" name="vehicle" value="van" />
									<input type="submit" class="btn grey large" value="select" />
									
								</div>
							</div>
							<div class="full-width information">	
								<a href="javascript:void(0)" class="close color" title="Close">x</a>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							</div>
						</article>
						<!-- //Item -->
						
						<!-- Item -->
						<article class="result">
							<div class="one-fourth heightfix"><img src="images/uploads/bus.jpg" alt="" /></div>
							<div class="one-half heightfix">
								<h3>Private bus <a href="javascript:void(0)" class="trigger color" title="Read more">?</a></h3>
								<ul>
									<li>
										<span class="icon icon-themeenergy_user-3"></span>
										<p>Max <strong>3 people</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_travel-bag"></span>
										<p>Max <strong>3 suitcases</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_clock"></span>
										<p>Estimated time <br /><strong>50 mins</strong></p>
									</li>
								</ul>
							</div>
							<div class="one-fourth heightfix">
								<div>
									<div class="price"><i class="fa fa-inr" aria-hidden="true"></i>13</div>
									<span class="meta">per kilometer</span>
									<input type="text" name="vehicle" value="bus" />
									<input type="submit" class="btn grey large" value="select" />
									
								</div>
							</div>
							<div class="full-width information">	
								<a href="javascript:void(0)" class="close color" title="Close">x</a>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							</div>
						</article>
						<!-- //Item -->
						
						<!-- Item -->
						<article class="result">
							<div class="one-fourth heightfix"><img src="images/uploads/heli.jpg" alt="" /></div>
							<div class="one-half heightfix">
								<h3>Private helicopter <a href="javascript:void(0)" class="trigger color" title="Read more">?</a></h3>
								<ul>
									<li>
										<span class="icon icon-themeenergy_user-3"></span>
										<p>Max <strong>3 people</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_travel-bag"></span>
										<p>Max <strong>3 suitcases</strong> <br />per vehicle</p>
									</li>
									<li>
										<span class="icon icon-themeenergy_clock"></span>
										<p>Estimated time <br /><strong>50 mins</strong></p>
									</li>
								</ul>
							</div>
							<div class="one-fourth heightfix">
								<div>
									<div class="price"><i class="fa fa-inr" aria-hidden="true"></i>13</div>
									<span class="meta">per kilometer</span>
									<input type="text" name="vehicle" value="helicopter" />
									<input type="submit" class="btn grey large" value="select" />
									
								</div>
							</div>
							<div class="full-width information">	
								<a href="javascript:void(0)" class="close color" title="Close">x</a>
								<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
							</div>
						</article>
						<!-- //Item -->
					</div>
					
					
				</div>
				<!--- //Content -->
			</div>
			
			</form>
		</div>
	</main>
	<!-- //Main -->
	
	<!-- Footer -->
	<footer class="footer black" role="contentinfo">
		<div class="wrap">
			<div class="row">
				<!-- Column -->
				<article class="one-half">
					<h6>About us</h6>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy.</p>
				</article>
				<!-- //Column -->
				
				<!-- Column -->
				<article class="one-fourth">
					<h6>Need help?</h6>
					<p>Contact us via phone or email:</p>
					<p class="contact-data"><span class="icon icon-themeenergy_call"></span> +1 555 555 555</p>
					<p class="contact-data"><span class="icon icon-themeenergy_mail-2"></span> <a href="mailto:help@transfers.com">help@transfers.com</a></p>
				</article>
				<!-- //Column -->
				
				<!-- Column -->
				<article class="one-fourth">
					<h6>Follow us</h6>
					<ul class="social">
						<li><a href="#" title="facebook"><i class="fa fa-fw fa-facebook"></i></a></li>
						<li><a href="#" title="twitter"><i class="fa fa-fw fa-twitter"></i></a></li>
						<li><a href="#" title="gplus"><i class="fa fa-fw fa-google-plus"></i></a></li>
						<li><a href="#" title="linkedin"><i class="fa fa-fw fa-linkedin"></i></a></li>
						<li><a href="#" title="pinterest"><i class="fa fa-fw fa-pinterest-p"></i></a></li>
						<li><a href="#" title="vimeo"><i class="fa fa-fw fa-vimeo"></i></a></li>
					</ul>
				</article>
				<!-- //Column -->
			</div>
			
			<div class="copy">
				
				<nav role="navigation" class="foot-nav">
					<ul>
						<li><a href="#" title="Home">Home</a></li>
						<li><a href="#" title="Blog">Blog</a></li>
						<li><a href="#" title="About us">About us</a></li>
						<li><a href="#" title="Contact us">Contact us</a></li>
						<li><a href="#" title="Terms of use">Terms of use</a></li>
						<li><a href="#" title="Help">Help</a></li>
						<li><a href="#" title="For partners">For partners</a></li>
					</ul>
				</nav>
			</div>
		</div>
	</footer>
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
	
	<!-- TEMPLATE STYLES -->
	
	<script src="js/styler.js"></script>
  </body>
</html>