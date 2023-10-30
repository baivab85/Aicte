<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.Connection"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.*"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.*"%>

<%@ page language="java"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="css/style2.css">
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />
  
   
    <title>Workshop for All</title>
    
    
    
   
</head>
<body>
 
    <!-- header -->
	<div class="header-w3ls-agileinfo">

		<div class="wthree_agile_top_header">
			<div class="logo-agileits">
				<h1>
					<a href="index.html"><span>A</span>icte <i
						class="fa fa-graduation-cap" aria-hidden="true"></i></a>
				</h1>
			</div>

			<c:if test="${not empty failedMsg}">
				<h5 class="text-center text-danger">${failedMsg}</h5>
				<c:remove var="failedMsg" scope="session" />
			</c:if>

			<c:if test="${not empty succMsg}">
				<h5 class="text-center text-success">${succMsg}</h5>
				<c:remove var="succMsg" scope="session" />
			</c:if>

			<div class="agileits_w3layouts_sign_in">

				<ul>


					<c:if test="${not empty userobj}">
						<li><a class="active" >${userobj.name}</a></li>
						<li><a href="logout">Logout</a></li>
					</c:if>
					<c:if test="${empty userobj}">
						<li><a class="active" href="#" data-toggle="modal"
							data-target="#myModal2">Sign In</a></li>
						<li><a href="#" data-toggle="modal" data-target="#myModal3">Sign
								Up</a></li>
					</c:if>



				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="container">
			<div class="w3layouts_agileits_nav_section">
				<nav class="navbar navbar-default">
					<div class="navbar-header navbar-left">
						<button type="button" class="navbar-toggle collapsed"
							data-toggle="collapse"
							data-target="#bs-example-navbar-collapse-1">
							<span class="sr-only">Toggle navigation</span> <span
								class="icon-bar"></span> <span class="icon-bar"></span> <span
								class="icon-bar"></span>
						</button>
					</div>
					<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="w3ls__agileinfo_search">
						<form action="#" method="post">
							<input type="search" name="Search" placeholder="Search here..."
								required=""> <input type="submit" value=" ">
						</form>
					</div>
					<div class="collapse navbar-collapse navbar-right"
						id="bs-example-navbar-collapse-1">

						<nav>
							<ul class="nav navbar-nav">
								<li class="active"><a href="index.jsp">Home</a></li>

								<li><a href="#about" class="hvr-rectangle-out scroll">About
										Us</a></li>
								<li><a href="#services" class="hvr-rectangle-out scroll">Objectives</a></li>
								<li><a href="#team" class="hvr-rectangle-out scroll">Teachers</a></li>
								<li><a href="#news" class="hvr-rectangle-out scroll">News</a></li>
								<li><a href="#gallery" class="hvr-rectangle-out scroll">Gallery</a></li>
								<li><a href="#contact" class="hvr-rectangle-out scroll">Feedback</a></li>
							</ul>

						</nav>
					</div>
				</nav>
			</div>
		</div>
	</div>
	<!-- //header -->
  <!-- Bootstrap -->
  <div class="modal video-modal fade" id="myModal" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<h3 class="agileinfo_sign">
							<b>AICTE WEB DEV BOOTCAMP</b>
						</h3>
						<img src="images/w11.jpg" alt=" " class="img-responsive" />
						<p>
						    <i>Date: 16th September 2023 </i>
						    <i>Timings:3:40pm</i>
							Details:The logic of html, css ,javascript discussed at the start of
							the session and at last some concepts of ReactJs is discussed including hooks concept in ReactJs 
						</p>
					</div>
				</section>
				
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal1" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<h3 class="agileinfo_sign">
							<b>AICTE AI ML BOOTCAMP</b>
						</h3>
						<img src="images/w22.png" alt=" " class="img-responsive" />
						<p>
						    <i>Date: 19th September 2023 </i>
						    <i>Timings:4:40pm</i>
							Details:The introductory session happened which focuses on the definition and the utility of ALML in today's world 
							and how will it affect the future concepts. 
						</p>
					</div>
				</section>
				
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal2" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<h3 class="agileinfo_sign">
							<b>AICTE DATA SCIENCE</b>
						</h3>
						<img src="images/w3.jpg" alt=" " class="img-responsive" />
						<p>
						    <i>Date: 19th September 2023 </i>
						    <i>Timings:4:40pm</i>
							Details:The introductory session happened which focuses on the definition and the utility of ALML in today's world 
							and how will it affect the future concepts. 
						</p>
					</div>
				</section>
				
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal3" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<h3 class="agileinfo_sign">
							<b>AICTE ADV DATA SCIENCE</b>
						</h3>
						<img src="images/w4.jpg" alt=" " class="img-responsive" />
						<p>
						    <i>Date: 3rd September 2023 - 20th September</i>
						    <i>Timings:5:30pm</i>
							Details:The advance session focuses on the mathematics ,probability and inferential statistics and Data Visualization with concepts over R programming. 
						</p>
					</div>
				</section>
				
			</div>
		</div>
	</div>
	<div class="modal video-modal fade" id="myModal4" tabindex="-1"
		role="dialog" aria-labelledby="myModal">
		<div class="modal-dialog" role="document">
			<div class="modal-content">
				<div class="modal-header">

					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
				<section>
					<div class="modal-body">
						<h3 class="agileinfo_sign">
							<b>Psychology Bootcamp</b>
						</h3>
						<img src="images/w5.jpg" alt=" " class="img-responsive" />
						<p>
						    <i>Date: 3rd September 2023 - 20th September</i>
						    <i>Timings:5:30pm</i>
							Details:The advance session focuses on the mathematics ,probability and inferential statistics and Data Visualization with concepts over R programming. 
						</p>
					</div>
				</section>
				
			</div>
		</div>
	</div>
	<!-- Modal1 -->
	<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">
						<h3 class="agileinfo_sign">Sign In</h3>


						<div class="login-form">
							<form action="login" method="post">
								<input type="text" name="email" placeholder="E-mail" required="">
								<input type="password" name="password" placeholder="Password"
									required="">
								<div class="tp">
									<input type="submit" value="Sign In">
								</div>
							</form>

						</div>
						<div class="login-social-grids">
							<ul>

								<li><a href="#"><i class="fa fa-facebook"></i></a></li>
								<li><a href="#"><i class="fa fa-twitter"></i></a></li>
								<li><a href="#"><i class="fa fa-rss"></i></a></li>
							</ul>
						</div>
						<p>
							<a href="#" data-toggle="modal" data-target="#myModal3">
								Don't have an account?</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal1 -->
	<!-- Modal2 -->
	<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">
						<h3 class="agileinfo_sign">Sign Up</h3>



						<div class="login-form">
							<form action="register" method="post">
								<input type="text" name="name" placeholder="Username"
									required=""> <input type="email" name="email"
									placeholder="Email" required=""> <input type="password"
									name="password" placeholder="Password" required=""> <input
									type="submit" value="Sign Up">
							</form>
						</div>
						<p>
							<a href="#"> By clicking register, I agree to your terms</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal2 -->
    
    
     <section class="container1">
        <div class="card1">
            <div class="card-image1">
                <img src="images/w11.jpg" alt="">
            </div>
                <h2>Web Development Bootcamp </h2>
                <p>Skills you'll gain: Front-end Coding, Responsive Design,  UX and UI Design

                </p>
                <p>4.8 (240k reviews)</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                </div>   
                <p>Bootcamp Completion Certificate</p> 
                <a href="#" class="hvr-icon-hang" data-toggle="modal" data-target="#myModal">Read More</a>
        </div>
        <div class="card1">
            <div class="card-image1">
                <img src="images/w22.png" alt="">
            </div>
                <h2>AI Ml Bootcamp</h2>
                <p>   </p>
                <p>Skills you'll gain: Data Analysis, Cloud Developer, Solution Architect </p>
                <p>4.5 (420k reviews)</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                </div>   
                <p>Bootcamp Completion Certificate</p> 
                <a href="#" class="hvr-icon-hang" data-toggle="modal" data-target="#myModal1">Read More</a>
           
        </div>
        <div class="card1">
            <div class="card-image1">
                <img src="images/w3.jpg" alt="">
                
            </div>
                <h2>Intro to Data Science </h2>
                <p>Skills you'll gain: Data Mining, Data Analysis, Research Analytics </p>
                <p>4.3 (390k reviews)</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                </div>   
                <p>Bootcamp Completion Certificate</p> 
                <a href="#" class="hvr-icon-hang" data-toggle="modal" data-target="#myModal2">Read More</a>
            
        </div>
        <div class="card1">
            <div class="card-image1"> 
                <img src="images/w4.jpg" alt="">
            </div>
                <h2>Advance Data Science Bootcamp</h2>
                <p>Skills you'll gain: Statictis, Data Visualization, high-level math</p>
                <p>4.8 (380k reviews)</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                </div>   
                <p>Bootcamp Completion Certificate</p> 
                <a href="#" class="hvr-icon-hang" data-toggle="modal" data-target="#myModal3">Read More</a>
           
        </div>
        <div class="card1">
            <div class="card-image1">
                <img src="images/w5.jpg" alt="">
            </div>
                <h2>Psychology Bootcamp</h2>
                <p>Skills you'll gain: Professionality, Flexibility, courtesy, Integrity </p>
                <p>3.9 (227k reviews)</p>
                <div class="rating">
                    <i class="fas fa-star"></i>
                </div>   
                <p>Bootcamp Completion Certificate</p> 
                <a href="#" class="hvr-icon-hang" data-toggle="modal" data-target="#myModal4">Read More</a>
        </div>
       
    </section>

    <!-- Footer -->
    <div class="footer w3ls ft" id="feedback">
        <div class="container">
            <div class="newsletter-agile">
                <form action="#" method="post">
                    <p>Send us Your Mail, we'll make sure You Never Miss a Thing!</p>
                    <input type="email" name="email" size="30" required="" placeholder="Enter your email here...">
                    <input type="submit" value="Subscribe">
                </form>
            </div>
            <div class="footer-main">
                <div class="footer-top">
                    <div class="col-md-4 ftr-grid fg1">
                        <h3><a href="index.html"><span>A</span>icte</a></h3>
                        <p>As defined in the AICTE act 1987, Technical Education means programmes of
                            Education,
                            Research, and training in Engineering and Technology,
                            Architecture, Town Planning, Management, Pharmacy, and Applied Arts and
                            Crafts, and such
                            other programmes or areas as the Central Government may in consultation
                            with the Council,
                            by notification in the official gazette declare.</p>
                    </div>
                    <div class="col-md-4 ftr-grid fg2 mid-gd">
                        <h3>Our Address</h3>
                        <div class="ftr-address">
                            <div class="local">
                                <i class="fa fa-map-marker" aria-hidden="true"></i>
                            </div>
                            <div class="ftr-text">
                                <p> HC66+6FG, LB Block, Sector 3, Bidhannagar, Kolkata, West Bengal
                                    700098.</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="ftr-address">
                            <div class="local">
                                <i class="fa fa-phone" aria-hidden="true"></i>
                            </div>
                            <div class="ftr-text">
                                <p> 033 2335 7459</p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                        <div class="ftr-address">
                            <div class="local">
                                <i class="fa fa-envelope" aria-hidden="true"></i>
                            </div>
                            <div class="ftr-text">
                                <p><a href="mailto:info@example.com">info@example.com</a></p>
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </div>
                    <div class="col-md-4 ftr-grid fg2">
                        <h3>Keep In Touch With Us</h3>
                        <div class="right-w3l">
                            <ul class="top-links">
                                <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                                <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                                <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                            </ul>
                        </div>
                        <div class="right-w3-2">
                            <ul class="text-w3">
                                <li><a href="#">Facebook</a></li>
                                <li><a href="#">Twitter</a></li>
                                <li><a href="#">Google</a></li>
                            </ul>
                        </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="copyrights">
                    <p>&copy; 2023 Aicte. All Rights Reserved | Design by <a href="#" target="_blank">ALGO
                            AVENGERS</a>
                    </p>
                </div>
            </div>
        </div>

    </div>


    <!-- Footer -->

    <!-- start-smoth-scrolling -->

    <!-- js -->
    <!--//pop-up-box -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!--pop-up-box -->
    <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
    <script>
        $(document).ready(function () {
            $('.popup-with-zoom-anim').magnificPopup({
                type: 'inline',
                fixedContentPos: false,
                fixedBgPos: true,
                overflowY: 'auto',
                closeBtnInside: true,
                preloader: false,
                midClick: true,
                removalDelay: 300,
                mainClass: 'my-mfp-zoom-in'
            });

        });
    </script>
    <!-- //pop-up-box -->

    <!-- //js -->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function ($) {
            $(".scroll").click(function (event) {
                event.preventDefault();
                $('html,body').animate({ scrollTop: $(this.hash).offset().top }, 1000);
            });
        });
    </script>
    <!-- start-smoth-scrolling -->

    <script src="js/jzBox.js"></script>

    <!-- Countdown-Timer-JavaScript -->
    <script src="js/simplyCountdown.js"></script>
    <script>
        var d = new Date(new Date().getTime() + 948 * 120 * 120 * 2000);

        // default example
        simplyCountdown('.simply-countdown-one', {
            year: d.getFullYear(),
            month: d.getMonth() + 1,
            day: d.getDate()
        });

        // inline example
        simplyCountdown('.simply-countdown-inline', {
            year: d.getFullYear(),
            month: d.getMonth() + 1,
            day: d.getDate(),
            inline: true
        });

        //jQuery example
        $('#simply-countdown-losange').simplyCountdown({
            year: d.getFullYear(),
            month: d.getMonth() + 1,
            day: d.getDate(),
            enableUtc: false
        });
    </script>
    <!-- //Countdown-Timer-JavaScript -->

    <!-- smooth scrolling -->
    <script type="text/javascript">
        $(document).ready(function () {
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
    <a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;">
        </span></a>
    <!-- //smooth scrolling -->
    <script type="text/javascript" src="js/bootstrap.js"></script>
</body>

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="js/unpkg.com_swiper@10.2.0_swiper-bundle.min.js"></script>
<script src="js/unpkg.com_swiper@8.1.6_swiper-bundle.min.js"></script>
<script src="js/script.js"></script>
<script src="js/script1.js"></script>

</html>