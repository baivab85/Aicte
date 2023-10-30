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
<link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />

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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Righteous&display=swap"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css2?family=PT+Sans+Caption&display=swap"
	rel="stylesheet">
<!--Swiper CSs-->
<link href="css/unpkg.com_swiper@10.2.0_swiper-bundle.min.css"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://unpkg.com/swiper/swiper-bundle.min.css">
<link
	href="https://fonts.googleapis.com/css2?family=Exo+2:wght@500&family=PT+Sans+Caption&display=swap"
	rel="stylesheet">
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

                                <li><a href="#myModal" class="hvr-rectangle-out scroll">About Us</a></li>
                                <li><a href="#advancement" class="hvr-rectangle-out scroll">Advancement</a></li>
                                <li><a href="#Trending_Courses" class="hvr-rectangle-out scroll">Trending</a></li>
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
	<div class="w3ls_banner_section_stud2">
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
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<br>
			<div class="agileits_more">
				<ul>

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

	<br>



	<div class="row endg2">
		<div class="col-md-6">
			<div class="card crd-ho">
				<img alt="" src="Cours4/PM.png" class="endg-img">


			</div>
		</div>
		<div class="col-md-6">
			<h1 class="txt2">Take the next step toward your professional
				goals and be the best at it.</h1>
		</div>
	</div>






	<h3 style="color: blue; margin-left: 20px;" id="advancement">Advance
		your Degree</h3>
	<br>
	<h1 class="fnd">Find the suitable college for your career
		advancements</h1>

	<section class="DP swiper">
		<div class="slide-container ">
			<div class="slide-content">
				<div class="card-wrapper swiper-wrapper">
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/msit.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">MSIT</p>
							<br>
							<p class="cors">
								<br>Master of Computer Applications
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/her.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Heritage</p>
							<br>
							<p class="cors">
								<br>Master of Technology
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/iitr.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">IIT Roorkee</p>
							<br>
							<p class="cors">
								<br> Master of Data Science
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/sspu.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">SSUP</p>
							<br>
							<p class="cors">
								<br>Master of Business Administration
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/ju.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Jadavpur University</p>
							<br>
							<p class="cors">
								<br>Master of Computer Science
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>

					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/jnu.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Jawaharlal Nehru University</p>
							<br>
							<p class="cors">
								<br>Master of Education
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/iitb.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">IIT Bombay</p>
							<br>
							<p class="cors">
								<br>Master of Applied Data Science
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/nitc.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">NIT Calicut</p>
							<br>
							<p class="cors">
								<br>Master of Physical Education
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay4"></span>
							<div class="card-image">
								<img src="Cours/nitd.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">NIT,Durgapur</p>
							<br>
							<p class="cors">
								<br>Master of Arts
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
				</div>
			</div>
			<div class="swiper-button-next swiper-navBtn"></div>
			<div class="swiper-button-prev swiper-navBtn"></div>
			<div class="swiper-pagination"></div>
		</div>
	</section>
	<br>




	<h3 style="color: blue; margin-left: 20px;">Trending Courses</h3>
	<br>
	<h1 class="fnd" id="Trending_Courses">Join to our advance programs
	</h1>

	<section class="DP swiper">
		<div class="slide-container ">
			<div class="slide-content2 slc">
				<div class="card-wrapper swiper-wrapper">
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/AI.avif" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Master's in AI</p>
							<br>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/business_int.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Business Intelligence</p>
							<br>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/cse.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Mtech in CSE</p>
							<br>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/phd.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Doctor of Philosophy</p>
							<br>
							<p class="cors">
								<br> Get Placements from top companies<br>
							</p>
							<a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/mba.avif" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">M.B.A</p>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>

					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/med.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Master's in Education</p>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/me.png" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Master's in M.E</p>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/IT.webp" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Master's in IT</p>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>
					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/dscn.jpg" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Master's in Data Science</p>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>

					<div class="card swiper-slide">
						<div class="image-content">
							<span class="overlay3"></span>
							<div class="card-image">
								<img src="Cours2/CS.avif" alt="" class="card-img">

							</div>
						</div>
						<div class="card-content">
							<p class="cnme">Master's in Cyber Security</p>
							<p class="cors">
								<br>Get Placements from top companies
							</p>
							<br> <a href="" class="button">Earn a degree</a>

						</div>
					</div>

				</div>
			</div>
			<div class="swiper-button-next swiper-navBtn2"></div>
			<div class="swiper-button-prev swiper-navBtn2"></div>
			<br>
			<div class="swiper-pagination2 st"></div>
		</div>
	</section>
	<br>

	<!-- 

    <section class="tsec">
        <div class="row">
            <div class="col-md-3 tc1">

                <img src="Cours2/AI.avif" class="timg">
                <p class="tcp">MTECH in AI</p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div>
            <div class="col-md-3 tc1">

                <img src="Cours2/mba.avif" class="timg">
                <p class="tcp" style="margin-left: 0px;">Master of Business Administration</p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div>
            <div class="col-md-3 tc1">

                <img src="Cours2/IT.webp" class="timg">
                <p class="tcp">MTECH in IT</p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div>
            
        </div>
        <div class="row">
            <div class="col-md-3 tc1">

                <img src="Cours2/mtch.jpg" class="timg">
                <p class="tcp">MTECH </p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div>
            <div class="col-md-3 tc1">

                <img src="Cours2/dscn.jpg" class="timg">
                <p class="tcp" >Data Science</p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div>
            <div class="col-md-3 tc1">

                <img src="Cours2/business_int.jpg" class="timg">
                <p class="tcp" style="margin-left: 60px;">Business Intelligence</p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div>
            
        </div>
        <div class="row">
            <div class="col-md-3 tc1">
                <img src="Cours2/med.jpg" class="timg">
                <p class="tcp" style="margin-left: 60px;">Master of Education</p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div>
            <div class="col-md-3 tc1">

                <img src="Cours2/cse.jpg" class="timg">
                <p class="tcp">MTECH in CSE</p>
                <a href=""><button type="button" class="tcbtn">Click for details</button></a>


            </div></div>

    </section> -->









	<br>







	<div class="row">
		<div class="col-md-6">
			<h1 class="txt3">Join our courses and see your changes</h1>
			<p class="txt1">Helping and guiding the pro's in their field and
				providing Advancement to All</p>

		</div>
		<div class="col-md-6">
			<div class="card crd-ho">

				<div class="card-body text-center">
					<img alt="" src="images/modiji 11.jpg"
						style="width: 400px; height: 330px; border-radius: 50%;">

				</div>
			</div>
		</div>
	</div>



	<!-- Footer -->
	<div class="footer w3ls ft" id="contact">
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

<script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>
<script src="js/unpkg.com_swiper@10.2.0_swiper-bundle.min.js"></script>
<script src="js/unpkg.com_swiper@8.1.6_swiper-bundle.min.js"></script>
<script src="js/script.js"></script>
<script src="js/script1.js"></script>

</html>