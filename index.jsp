<!--
author: W3layouts
author URL: http://w3layouts.com
License: Creative Commons Attribution 3.0 Unported
License URL: http://creativecommons.org/licenses/by/3.0/
-->
<%@ page import="java.sql.Connection"%>
<%@ page import="com.DB.DBConnect"%>
<%@ page import="com.DAO.*"%>
<%@ page import="java.util.List"%>
<%@ page import="com.entity.*"%>

<%@ page language="java"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>AICTE CURRICULAM PORTAL</title>
<!-- for-mobile-apps -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords"
	content="Brilliance Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript">
	
	
	
	
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 








</script>
<!-- //for-mobile-apps -->
<link href="css/bootstrap.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<!-- js -->
<script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
<!-- //js -->
<!-- pop-up-box -->
<link href="css/popuo-box.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- //pop-up-box -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<link href="//fonts.googleapis.com/css?family=Prata" rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i"
	rel="stylesheet">
<link
	href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
	rel='stylesheet' type='text/css'>
<!-- font-awesome icons -->

<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />

<link rel="stylesheet" href="css/style3.css">
</head>
<script>
	window.embeddedChatbotConfig = {
		chatbotId : "0bz1TdF-MXEcgVVRxoyiu",
		domain : "www.chatbase.co"
	}
</script>
<script src="https://www.chatbase.co/embed.min.js"
	chatbotId="0bz1TdF-MXEcgVVRxoyiu" domain="www.chatbase.co" defer>
	
</script>
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








	<!-- Modal4 -->
	<div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
		<div class="modal-dialog">
			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-header">
					<button type="button" class="close" data-dismiss="modal">&times;</button>

					<div class="signin-form profile">
						<h3 class="agileinfo_sign">Admission Form</h3>
						<div class="login-form">
							<form action="#" method="post">
								<input type="text" name="name"
									placeholder="Name of the Candidate" required=""> <input
									type="text" name="gender" placeholder="Gender" required="">
								<input type="text" name="city" placeholder="City" required="">
								<input type="text" name="phone" placeholder="Phone No"
									required=""> <input type="email" name="email"
									placeholder="Email" required="">
								<div class="address">
									<select class="form-control">
										<option>Select Courses</option>
										<option>BCA</option>
										<option>MCA</option>
										<option>CSE</option>
										<option>ECE</option>
										<option>EE</option>
										<option>Others</option>
									</select> <select class="form-control two">
										<option>Select Campus</option>
										<option>Meghnad Saha Institute of Technology</option>
										<option>Netaji Subhash Engineering College</option>
										<option>Techno Main Salt Lake</option>
										<option>Techno Hoogly</option>
										<option>Techno Rajharhat</option>
										<option>Others</option>
									</select>
									<div class="clearfix"></div>
								</div>
								<div class="address">
									<textarea name="Message" placeholder="Address" required=" "></textarea>
									<textarea name="Message" placeholder="Additional Note"
										required=" "></textarea>
									<div class="clearfix"></div>
								</div>
								<div class="address">
									<input type="submit" value="Admission Now"> <input
										type="reset" value="Clear">
									<div class="clearfix"></div>
								</div>
							</form>
						</div>
						<p>
							<a href="#"> By clicking Admission, I agree to your terms</a>
						</p>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //Modal4 -->


	<!-- banner-->
	<div class="w3ls_banner_section">
		<div class="container">
			<!-- <h2>Education Needs Complete <span>Solution</span></h2>
			<p> for Admission Coming soon</p>-->

			<div class="wthree-counter-agile">
				<!--timer
					<section class="examples">
							<div class="simply-countdown-losange" id="simply-countdown-losange"></div>
							<div class="clearfix"></div>
						</section>
                 -->
				<!--//timer-->

			</div>
			<br> <br> <br> <br> <br> <br> <br>
			<br> <br> <br> <br> <br>
			<div class="agileits_more">
				<ul>
					<li style="background-color: aqua;"><a href="#"
						data-toggle="modal" data-target="#myModal4"
						class="w3ls_banner_more hvr-icon-hang scroll ">Admission</a></li>
					<li style="background-color: black;"><a href="#"
						class="hvr-icon-hang" data-toggle="modal" data-target="#myModal">Read
							More</a></li>
				</ul>
			</div>
		</div>
	</div>
	<!-- //banner -->
	<!-- bootstrap-pop-up -->
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
							<b>AICTE</b>
						</h3>
						<img src="images/aicte_logo_.png" alt=" " class="img-responsive" />
						<p>
							All India Council for Technical Education (AICTE) was set up in
							November 1945 as a national-level Apex Advisory Body to conduct a
							survey on the facilities available for technical education and to
							promote development in the country in a coordinated and
							integrated manner. <i>.The role of AICTE in education is to
								survey, assess and confirm the quality of education offered to
								students in colleges and universities. Thus the ultimate role of
								AICTE is to ensure high-quality education for students.</i>
						</p>
					</div>
				</section>
			</div>
		</div>
	</div>
	<!-- //bootstrap-pop-up -->

	<!-- banner-down-->
	<div class="wthree_banner_grids">
		<div class="container">
			<div class="col-md-3 wthree_banner_grid">
				<i class="fa fa-user" aria-hidden="true"></i>

				<h4>
					<a style="color: black" href="calender.jsp">Holiday List of 2023</a>
				</h4>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 wthree_banner_grid">
				<i class="fa fa-globe" aria-hidden="true"></i>
				<h4>
					<a style="color: black" href="courses_for_fac.jsp">Undergraduate Courses</a>
				</h4>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 wthree_banner_grid">
				<i class="fa fa-book" aria-hidden="true"></i>
				<h4>
					<a style="color: black" href="courses_for_stud.jsp">Postgraduate Courses</a>
				</h4>
				<div class="clearfix"></div>
			</div>
			<div class="col-md-3 wthree_banner_grid">
				<i class="fa fa-bus" aria-hidden="true"></i>
				<h4>
					<a style="color: black;" href="workshop.jsp">Workshops for
						ALL</a>
				</h4>
				<div class="clearfix"></div>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //banner-down-->
	<!-- banner-bottom -->
	<div class="banner-bottom-agileits" id="about">

		<div class="col-md-5 w3l_banner_bottom_right">
			<img src="images/Merilife__ 111.jpg" alt=" " class="img-responsive" />
		</div>
		<div class="col-md-7 w3l_banner_bottom_left">
			<h3>Complete Solution For You Education Needs</h3>
			<p>
				The All India Council For Technical Education Act 1987 was
				implemented for the development of AICTE with an aim to provide
				proper planning and coordinated development of the technical
				education system in India. AICTE Act was published by the Ministry
				of Law & Justice on December 28, 1987, in the Gazette of India
				Extraordinary Part II under the Section-1 (Number-75). As mentioned
				in the AICTE Act of 1987, the All India Council For Technical
				Education consists of Chairman, Member Secretary and Vice-Chairman.
				All three regulatory bodies are appointed by the Central Government
				of India. The present Member Secretary and Vice-Chairman of AICTE
				are Alok Prakash Mittal.</span><br>Thank You
			</p>
		</div>
		<div class="clearfix"></div>
	</div>
	<!-- //banner-bottom -->
	<!-- services -->
	<div class="services" id="services">
		<div class="container">
			<div class="w3ls-heading">
				<h3 class="h-two">Learning Objectives</h3>
				<p class="sub two" style="color: black">To plan, formulate and
					maintain the norms and standards by acting as a statutory
					authority.</p>
			</div>
			<div class="w3layouts-grids">
				<div class="services-right-grids">
					<div class="col-sm-4 services-right-grid">
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-bar-chart" aria-hidden="true"></i>
						</div>
						<div class="services-icon-info">
							<h5 style="color: red;">Skills</h5>
							<p style="color: white;">Aicte offers skillset to all
								students.</p>
						</div>
					</div>
					<div class="col-sm-4 services-right-grid">
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-lightbulb-o" aria-hidden="true"></i>
						</div>
						<div class="services-icon-info">
							<h5 style="color: red;">Self Learning</h5>
							<p style="color: white;">Aicte offers courses and self
								learning materials for all their students</p>
						</div>
					</div>
					<div class="col-sm-4 services-right-grid">
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-question-circle-o" aria-hidden="true"></i>
						</div>
						<div class="services-icon-info">
							<h5>Knowledge</h5>
							<p style="color: white;">Aicte is offering knowledge based
								learning for all</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="services-right-grids">
					<div class="col-sm-4 services-right-grid">
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-comments" aria-hidden="true"></i>
						</div>
						<div class="services-icon-info">
							<h5>Discussion</h5>
							<p style="color: white;">Aicte is offering discussion forum
								for all to participate</p>
						</div>
					</div>
					<div class="col-sm-4 services-right-grid">
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-usd" aria-hidden="true"></i>
						</div>
						<div class="services-icon-info">
							<h5 style="color: red">International Payments</h5>
							<p style="color: white;">Aicte offers cross-border payments,
								sending or receiving payments from one country to another.</p>
						</div>
					</div>
					<div class="col-sm-4 services-right-grid">
						<div class="services-icon hvr-radial-in">
							<i class="fa fa-building-o" aria-hidden="true"></i>
						</div>
						<div class="services-icon-info">
							<h5>Hosted Content</h5>
							<p style="color: white;">Aicte is providing material, such as
								texts, images, sound, videos, programmes, databases, data flows,
								files</p>
						</div>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div>
	</div>
	<!-- //services -->

	<!-- team -->
	<br>
	<br>
	<div class="w3ls-heading">
		<h3>Our Faculties</h3>
		<p class="sub">Professors who are held in high regard, especially
			within their field or profession.</p>
	</div>
	<div class="body1">

		<div class="container1">

			<div class="profile-card">
				<div class="image">
					<img src="images/l1.jpg" alt="" class="profile-img">
				</div>
				<div class="text-data">
					<span class="name">Dr. Ramesh P. Nishank</span> <span class="job">Chief
						Guest</span>
				</div>
				<div class="media-buttons">

					<a href="#" style="background: #4267b2;" class="link"><i
						class="fa fa-facebook"></i></a> <a href="#"
						style="background: #1da1f2;" class="link"><i
						class="fa fa-twitter"></i></a> <a href="#"
						style="background: #e1306c;" class="link"><i
						class="fa fa-instagram"></i></a>

				</div>

				<div class="buttons">
					<a href="#" class="hvr-icon-hang" data-toggle="modal"
						data-target="#myModal">Know More</a>
				</div>
			</div>

			<div class="profile-card">
				<div class="image">
					<img src="images/l2.jpg" alt="" class="profile-img">
				</div>
				<div class="text-data">
					<span class="name">Prof. M.P. Poonia</span> <span class="job">Hon'ble
						Vice Chaireman, AICTE</span>
				</div>
				<div class="media-buttons">

					<a href="#" style="background: #4267b2;" class="link"><i
						class="fa fa-facebook"></i></a> <a href="#"
						style="background: #1da1f2;" class="link"><i
						class="fa fa-twitter"></i></a> <a href="#"
						style="background: #e1306c;" class="link"><i
						class="fa fa-instagram"></i></a>

				</div>
				<div class="buttons">
					<a href="#" class="hvr-icon-hang" data-toggle="modal"
						data-target="#myModal">Know More</a>
				</div>
			</div>

			<div class="profile-card">
				<div class="image">
					<img src="images/l3.jpg" alt="" class="profile-img">
				</div>
				<div class="text-data">
					<span class="name">Prof. Rajive Kumar</span> <span class="job">Hon'ble
						Member Secretary, AITCE</span>
				</div>
				<div class="media-buttons">

					<a href="#" style="background: #4267b2;" class="link"><i
						class="fa fa-facebook"></i></a> <a href="#"
						style="background: #1da1f2;" class="link"><i
						class="fa fa-twitter"></i></a> <a href="#"
						style="background: #e1306c;" class="link"><i
						class="fa fa-instagram"></i></a>

				</div>
				<div class="buttons">
					<a href="#" class="hvr-icon-hang" data-toggle="modal"
						data-target="#myModal">Know More</a>
				</div>
			</div>

			<div class="profile-card">
				<div class="image">
					<img src="images/l4.jpg" alt="" class="profile-img">
				</div>
				<div class="text-data">
					<span class="name">Prof. Anil Sahasrabudhe</span> <span class="job">Hon'ble
						Chairman, AICTE</span>
				</div>
				<div class="media-buttons">

					<a href="#" style="background: #4267b2;" class="link"><i
						class="fa fa-facebook"></i></a> <a href="#"
						style="background: #1da1f2;" class="link"><i
						class="fa fa-twitter"></i></a> <a href="#"
						style="background: #e1306c;" class="link"><i
						class="fa fa-instagram"></i></a>

				</div>
				<div class="buttons">
					<a href="#" class="hvr-icon-hang" data-toggle="modal"
						data-target="#myModal">Know More</a>
				</div>
			</div>
		</div>
	</div>


	<!-- news -->
	<div class="news" id="news">
		<div class="w3ls-heading">
			<h3>Latest News</h3>
			<p class="sub">NEP 2020 Helped in Making Engineering Courses
				Inclusive and Modern</p>
		</div>
		<div class="w3layouts-grids">
			<div class="col-md-6 news-agileits-right news2">
				<i>16th November 2016</i>
				<p>The New Education Policy (2020) is a historic effort and
					first omnibus policy after thirty-four years, under Modi regime.
					The purpose of NEP is a framework to guide the development of
					education in the country.</p>
				<img src="images/fac51.jpeg" alt="image">
				<h6>RAMESH POKRIYAL</h6>
			</div>
			<div class="col-md-5 news-agileits-left video2">
				<!-- <div class="button">
					<a href="#small-dialog" class="play-icon popup-with-zoom-anim"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
				</div>
				-->
				<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">
					<div class="agileits_modal_body">
						<iframe src="https://www.youtube.com/embed/dilnw_dP3xk"
							frameborder="0" allowfullscreen></iframe>
					</div>
				</div>

			</div>
			<div class="clearfix"></div>
			<div class="col-md-5 news-agileits-left">
				<div class="button">
					<!--	<a href="#small-dialog" class="play-icon popup-with-zoom-anim"><span class="glyphicon glyphicon-play-circle" aria-hidden="true"></span></a>
				    -->
				</div>
				<div id="small-dialog" class="mfp-hide w3ls_small_dialog wthree_pop">
					<div class="agileits_modal_body">
						<iframe src="https://www.youtube.com/embed/dilnw_dP3xk"
							frameborder="0" allowfullscreen></iframe>
					</div>
				</div>
			</div>
			<div class="col-md-6 news-agileits-right">
				<i>5th September 2023</i>
				<p>Engineering The Future (PROF. T G SITHARAM)</p>
				<img src="images/fac33.jpeg" alt="image">
				<h6>M.P.PONIA</h6>
			</div>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //news -->
	<!-- gallery -->
	<div class="gallery" id="gallery">
		<div class="w3ls-heading">
			<h3>Our Gallery</h3>
			<p class="sub">Explore pictures from our key, events, workshops,
				launches and more</p>
		</div>
		<div class="w3layouts-grids gal-wthree-agileits">
			<div id="jzBox" class="jzBox">
				<div id="jzBoxNextBig"></div>
				<div id="jzBoxPrevBig"></div>
				<img src="#" id="jzBoxTargetImg" alt="" />
				<div id="jzBoxBottom">
					<div id="jzBoxTitle"></div>
					<div id="jzBoxMoreItems">
						<div id="jzBoxCounter"></div>
						<i class="arrow-left" id="jzBoxPrev"></i> <i class="arrow-right"
							id="jzBoxNext"></i>
					</div>
					<i class="close" id="jzBoxClose"></i>
				</div>
			</div>
			<div class="gallery-grids-row">
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/gal11.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/gal11.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/kj441.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/kj441.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/kj551.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/kj551.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/kj12.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/kj12.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/kj1111.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/kj1111.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/g6.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/g6.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/kj341.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/kj341.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>
				<div class="col-md-3 gallery-grid">
					<div class="wpf-demo-4">
						<a href="images/kj661.jpg" class="jzBoxLink item-hover"
							title="Education"> <img src="images/kj661.jpg" alt=" "
							class="img-responsive" />
							<div class="view-caption">
								<p>Full View</p>
							</div>
						</a>
					</div>
				</div>

				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //gallery -->
	<!-- contact -->
	<div class="contact" id="contact">
		<div class="container">
			<div class="w3ls-heading">
				<h3>Get In Touch</h3>
				<p class="sub">Our Aicte CUrriculum is one of the leading tech
					stack in India</p>
			</div>
			<div class="w3layouts-grids">
				<div class="col-md-4 contact-left">
					<div class="contact-info">
						<div class="contact-info-left">
							<i class="fa fa-map-marker" aria-hidden="true"></i>
						</div>
						<div class="contact-info-right">
							<h5>Address</h5>
							<p>
								Bidhannagar, Kolkata<br> <span>HC66+6FG, LB Block,
									Sector 3,</span> West Bengal 700098

							</p>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="contact-info">
						<div class="contact-info-left">
							<i class="fa fa-phone-square" aria-hidden="true"></i>
						</div>
						<div class="contact-info-right">
							<h5>Mobile</h5>
							<ul>
								<li>033 2335 7452</li>
								<li>033 2335 7459</li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="contact-info">
						<div class="contact-info-left">
							<i class="fa fa-envelope" aria-hidden="true"></i>
						</div>
						<div class="contact-info-right">
							<h5>E-Mail</h5>
							<ul>
								<li><a href="mailto:example@mail.com">chairman@aicte-india.org</a></li>
								<li><a href="mailto:example@mail.com">anju@aicte-india.org</a></li>
							</ul>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
				<div class="col-md-8 contact-form">
					<form action="#" method="post">
						<input type="text" name="Name" placeholder="Name" required="">
						<input type="email" class="email" name="Email" placeholder="Email"
							required="">
						<div class="clearfix"></div>
						<input type="text" class="phone" name="phone"
							placeholder="Phone Number" required="">
						<textarea placeholder="Message" name="Message" required=""></textarea>
						<input type="submit" value="SUBMIT">
					</form>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //contact -->


	<!-- Footer -->
	<div class="footer w3ls">
		<div class="container">
			<div class="newsletter-agile">
				<form action="#" method="post">
					<p>Send us Your Mail, we'll make sure You Never Miss a Thing!</p>
					<input type="email" name="email" size="30" required=""
						placeholder="Enter your email here..."> <input
						type="submit" value="Subscribe">
				</form>
			</div>
			<div class="footer-main">
				<div class="footer-top">
					<div class="col-md-4 ftr-grid fg1">
						<h3>
							<a href="index.html"><span>A</span>icte</a>
						</h3>
						<p>As defined in the AICTE act 1987, Technical Education means
							programmes of Education, Research, and training in Engineering
							and Technology, Architecture, Town Planning, Management,
							Pharmacy, and Applied Arts and Crafts, and such other programmes
							or areas as the Central Government may in consultation with the
							Council, by notification in the official gazette declare.</p>
					</div>
					<div class="col-md-4 ftr-grid fg2 mid-gd">
						<h3>Our Address</h3>
						<div class="ftr-address">
							<div class="local">
								<i class="fa fa-map-marker" aria-hidden="true"></i>
							</div>
							<div class="ftr-text">
								<p>HC66+6FG, LB Block, Sector 3, Bidhannagar, Kolkata, West
									Bengal 700098.</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="ftr-address">
							<div class="local">
								<i class="fa fa-phone" aria-hidden="true"></i>
							</div>
							<div class="ftr-text">
								<p>033 2335 7459</p>
							</div>
							<div class="clearfix"></div>
						</div>
						<div class="ftr-address">
							<div class="local">
								<i class="fa fa-envelope" aria-hidden="true"></i>
							</div>
							<div class="ftr-text">
								<p>
									<a href="mailto:info@example.com">info@example.com</a>
								</p>
							</div>
							<div class="clearfix"></div>
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
					<div class="clearfix"></div>
				</div>
				<div class="copyrights">
					<p>
						&copy; 2023 Aicte. All Rights Reserved | Design by <a href="#"
							target="_blank">ALGO AVENGERS</a>
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
		$(document).ready(function() {
			$('.popup-with-zoom-anim').magnificPopup({
				type : 'inline',
				fixedContentPos : false,
				fixedBgPos : true,
				overflowY : 'auto',
				closeBtnInside : true,
				preloader : false,
				midClick : true,
				removalDelay : 300,
				mainClass : 'my-mfp-zoom-in'
			});

		});
	</script>
	<!-- //pop-up-box -->

	<!-- //js -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
		jQuery(document).ready(function($) {
			$(".scroll").click(function(event) {
				event.preventDefault();
				$('html,body').animate({
					scrollTop : $(this.hash).offset().top
				}, 1000);
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
			year : d.getFullYear(),
			month : d.getMonth() + 1,
			day : d.getDate()
		});

		// inline example
		simplyCountdown('.simply-countdown-inline', {
			year : d.getFullYear(),
			month : d.getMonth() + 1,
			day : d.getDate(),
			inline : true
		});

		//jQuery example
		$('#simply-countdown-losange').simplyCountdown({
			year : d.getFullYear(),
			month : d.getMonth() + 1,
			day : d.getDate(),
			enableUtc : false
		});
	</script>
	<!-- //Countdown-Timer-JavaScript -->

	<!-- smooth scrolling -->
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
			$().UItoTop({
				easingType : 'easeOutQuart'
			});
		});
	</script>
	<a href="#" id="toTop" style="display: block;"> <span
		id="toTopHover" style="opacity: 1;"> </span></a>
	<!-- //smooth scrolling -->
	<script type="text/javascript" src="js/bootstrap.js"></script>
</body>

</html>