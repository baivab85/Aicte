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
    <meta name="keywords" content="Brilliance Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!-- //for-mobile-apps -->
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style1.css" rel="stylesheet" type="text/css" media="all" />

    <!-- js -->
    <script type="text/javascript" src="js/jquery-2.1.4.min.js"></script>
    <!-- //js -->
    <!-- pop-up-box -->
    <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
    <!-- //pop-up-box -->
    <!-- font-awesome icons -->
    <link href="css/font-awesome.css" rel="stylesheet">
    <!-- //font-awesome icons -->
    <link href="//fonts.googleapis.com/css?family=Prata" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400i,700,700i" rel="stylesheet">
    <link
        href='//fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic'
        rel='stylesheet' type='text/css'>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Righteous&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=PT+Sans+Caption&display=swap" rel="stylesheet">
    <!--Swiper CSs-->
    <link href="css/unpkg.com_swiper@10.2.0_swiper-bundle.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css">
    <link href="https://fonts.googleapis.com/css2?family=Exo+2:wght@500&family=PT+Sans+Caption&display=swap"
        rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Mooli&display=swap" rel="stylesheet">
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

                                <li><a href="#about" class="hvr-rectangle-out scroll">About Us</a></li>
                                <li><a href="#programs" class="hvr-rectangle-out scroll">Degree Programs</a></li>
                                <li><a href="#category" class="hvr-rectangle-out scroll">Categories</a></li>
                                <li><a href="#course" class="hvr-rectangle-out scroll">Courses</a></li>
                                <li><a href="#syllabus" class="hvr-rectangle-out scroll">Explore Syllabus</a></li>
                                <li><a href="#feedback" class="hvr-rectangle-out scroll">Feedback</a></li>
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
                                <input type="text" name="name" placeholder="Name of the Candidate" required="">

                                <input type="text" name="gender" placeholder="Gender" required="">
                                <input type="text" name="city" placeholder="City" required="">
                                <input type="text" name="phone" placeholder="Phone No" required="">
                                <input type="email" name="email" placeholder="Email" required="">
                                <div class="address">
                                    <select class="form-control">
                                        <option>Select Courses</option>
                                        <option>BCA</option>
                                        <option>MCA</option>
                                        <option>CSE</option>
                                        <option>ECE</option>
                                        <option>EE</option>
                                        <option>Others</option>
                                    </select>
                                    <select class="form-control two">
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
                                    <textarea name="Message" placeholder="Additional Note" required=" "></textarea>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="address">
                                    <input type="submit" value="Admission Now">
                                    <input type="reset" value="Clear">
                                    <div class="clearfix"></div>
                                </div>
                            </form>
                        </div>
                        <p><a href="#"> By clicking Admission, I agree to your terms</a></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- //Modal4 -->

    <!-- banner-->
    <div class="w3ls_banner_section_stud">
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
            <br><br><br><br><br><br><br><br><br><br><br><br>
            <div class="agileits_more">
                <ul>
                   
                </ul>
            </div>
        </div>
    </div>
    <!-- //banner -->

    <!-- bootstrap-pop-up -->
    <div class="modal video-modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModal">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">

                    <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span
                            aria-hidden="true">&times;</span></button>
                </div>
                <section>
                    <div class="modal-body">
                        <h3 class="agileinfo_sign"><b>AICTE</b></h3>
                        <img src="images/aicte_logo_.png" alt=" " class="img-responsive" />
                        <p>All India Council for Technical Education (AICTE) was set up in November 1945 as a
                            national-level Apex Advisory Body to conduct a survey on
                            the facilities available for technical education and to promote development in the country
                            in a coordinated and integrated manner.
                            <i>.The role of AICTE in education is to survey, assess and confirm the quality of education
                                offered to students in colleges and universities. Thus the ultimate role of AICTE is to
                                ensure high-quality education for students.</i>
                        </p>
                    </div>
                </section>
            </div>
        </div>
    </div>
    <!-- //bootstrap-pop-up -->

    <br>
    <div class="row">
        <div class="col-md-6">
            <h1 class="txt">Learn without limits</h1>
            <p class="txt1">Start, switch, or advance your career with our variety of courses offered</p>

        </div>
        <div class="col-md-6">
            <div class="card crd-ho">

                <div class="card-body text-center">
                    <img alt="" src="images/crs.jpg" style="width: 300px; height: 330px;  border-radius: 50%;">

                </div>
            </div>
        </div>
    </div>

    <h3 style="color:blue; margin-left: 20px;" id="programs">Degree Programs</h3>
    <h1 class="fnd">Find the suitable college for your career</h1>

    <section class="DP swiper ">
        <div class="slide-container">
            <div class="slide-content">
                <div class="card-wrapper swiper-wrapper ">
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/msit.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">MSIT</p><br>
                            <p class="cors">Bachelor of Computer
                                Applications &<br>Master of Computer
                                Applications </p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/her.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Heritage</p><br>
                            <p class="cors">Bachelor of Data Science
                                &<br>Master of Data Science
                            </p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/aot.png" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Academy of Technology</p><br>
                            <p class="cors"> Bachelor of Technology &<br>Master of Technology </p><br>
                            <a href="" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/amity.jpeg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Amity University</p><br>
                            <p class="cors">Bachelor of Business Administration &<br>Master of Business Administration
                            </p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/rcc.avif" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">RCC Institute of IT</p>
                            <p class="cors"><br>Master of Computer
                                Science </p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>

                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/Bpp.png" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">B. P. Poddar</p>
                            <p class="cors"><br>Master of Applied Data
                                Science </p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/stthomas.jpeg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">St. Thomas' College</p>
                            <p class="cors">Elements of Mechanical Engineering <br>Engineering Chemistry</p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/mckv.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">MCKV Institute of Engineering</p>
                            <p class="cors">Computer-Aided Engineering Drawing <br>Engineering Graphics</p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay"></span>
                            <div class="card-image">
                                <img src="Cours/snu.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">
                                Sister Nivedita University</p><br>
                            <p class="cors" ><br>Executive MBA </p><br>
                            <a href="degree.jsp" class="button">Earn
                                a degree</a><br>

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

    <h3 style="color:black; margin-left: 20px;font-weight: 700;margin-bottom: 20px;" id="category">Top categories</h3>
    <section class="usec">
        <div class="row">
            <div class="col-md-3">
                <img src="Cours3/lohp-category-design-v2.jpg" class="simg">
                <p class="sp">Design</p>

            </div>
            <div class="col-md-3">
                <img src="Cours3/lohp-category-development-v2.jpg" class="simg">
                <p class="sp">Development</p>

            </div>
            <div class="col-md-3">
                <img src="Cours3/lohp-category-marketing-v2.jpg" class="simg">
                <p class="sp">Marketing</p>

            </div>
            <div class="col-md-3">
                <img src="Cours3/lohp-category-it-and-software-v2.jpg" class="simg">
                <p class="sp">IT and Software</p>

            </div>
        </div>
        <div class="row">
            <div class="col-md-3">
                <img src="Cours3/lohp-category-personal-development-v2.jpg" class="simg">
                <p class="sp">Personal Development</p>

            </div>
            <div class="col-md-3">
                <img src="Cours3/lohp-category-business-v2.jpg" class="simg">
                <p class="sp">Business</p>

            </div>
            <div class="col-md-3">
                <img src="Cours3/lohp-category-photography-v2.jpg" class="simg">
                <p class="sp">Photography</p>

            </div>
            <div class="col-md-3">
                <img src="Cours3/lohp-category-music-v2.jpg" class="simg">
                <p class="sp">Music</p>

            </div>
        </div>

    </section>



    <h3 style="color:blue; margin-left: 20px;" id="course">New Courses</h3>
    <h1 class="fnd">Find a top degree that fits your life </h1>

    <section class="DP swiper">
        <div class="slide-container ">
            <div class="slide-content2 slc">
                <div class="card-wrapper swiper-wrapper">
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/AI.avif" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Artificial Intelligence</p><br>
                            <p class="cors"><br>Get Placements from top companies</p><br>
                            <a href="" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/business_int.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Business Intelligence</p><br>
                            <p class="cors"><br>Get Placements from top companies</p><br>
                            <a href="" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/cse.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Computer Science Engineering</p><br>
                            <p class="cors"><br>Get Placements from top companies</p><br>
                            <a href="" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/BBA.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">B.B.A</p><br>
                            <p class="cors"><br> Get Placements from top companies<br>
                            </p><br>
                            <a href="" class="button">Earn
                                a degree</a>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/mba.avif" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">M.B.A</p>
                            <p class="cors"><br>Get Placements from top companies </p><br>
                            <a href="" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>

                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/cvl.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Civil Engineering</p>
                            <p class="cors"><br>Get Placements from top companies </p><br>
                            <a href="" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/me.png" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Mechanical Engineering</p>
                            <p class="cors"><br>Get Placements from top companies </p><br>
                            <a href="" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/IT.webp" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Information Technology</p>
                            <p class="cors"><br>Get Placements from top companies </p><br>
                            <a href="" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>
                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/dscn.jpg" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Data Science</p>
                            <p class="cors"><br>Get Placements from top companies </p><br>
                            <a href="" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>

                    <div class="card swiper-slide">
                        <div class="image-content">
                            <span class="overlay2"></span>
                            <div class="card-image">
                                <img src="Cours2/CS.avif" alt="" class="card-img">

                            </div>
                        </div>
                        <div class="card-content">
                            <p class="cnme">Cyber Security</p>
                            <p class="cors"><br>Get Placements from top companies </p><br>
                            <a href="" class="button">Earn
                                a degree</a><br>

                        </div>
                    </div>

                </div>
            </div>
            <div class="swiper-button-next swiper-navBtn2"></div>
            <div class="swiper-button-prev swiper-navBtn2"></div><br>
            <div class="swiper-pagination2 st"></div>
        </div>
    </section>



    <h3 style="color:blue; margin-left: 20px;margin-bottom: 20px;">Paid Specialized Courses</h3>
    <section class="usec2">
        <div class="row">
            <div class="col-md-3" class="rm">
                <img src="Cours4/cfa.png" class="rimg">
                <span class="">
                    <p class="sp2"> Finance and Accounting</p>
                    <button class="sp3">See Price</p>
                </span>
            </div>
            <div class="col-md-3" class="rm">
                <img src="Cours4/da.avif" class="rimg" style="width:220px">
                <span class="">
                    <p class="sp2" style="margin-left: 60px;">Data Analysis </p>
                    <button class="sp3" style="margin-left: 80px;">See Price</p>
                </span>
            </div>
            <div class="col-md-3" class="rm">
                <img src="Cours4/pgdm.png" class="rimg">
                <span class="">
                    <p class="sp2"> PGD in Management</p>
                    <button class="sp3">See Price</p>
                </span>
            </div>
            <div class="col-md-3" class="rm">
                <img src="Cours4/pm.jpg" class="rimg">
                <span class="">
                    <p class="sp2">Project Management</p>
                    <button class="sp3">See Price</p>
                </span>
            </div>
        </div>

    </section>




    <h3 style=" color:blue; margin-left: 20px;" id="syllabus">Explore Syllabus</h3><br>
    <section class="ts"><span class="colr"></span>
        <P style="color: aliceblue;">..</P>
        <div class="rows syllab" >

            <div class="col-md-4 syl"><a href="">
                    <img src="Cours2/AI.avif" height="80px" width="80px" class="simg"><span class="spn">Artificial
                        Intelligence</span>
                </a></div>

            <div class="col-md-4 syl">
                <a href="">
                    <img src="Cours2/mba.avif" height="80px" width="80px" class="simg"><span class="spn">Master of
                        Business
                        Administration</span>
                </a>
            </div>
            <div class="col-md-4 syl">
                <a href=""> <img src="Cours2/business_int.jpg" height="80px" width="80px" class="simg"><span
                        class="spn">Business
                        Intelligence</span>
                </a>
            </div>
        </div>

        <div class="rows syllab2">

            <div class="col-md-4 syl"> <a href="">
                    <img src="Cours2/cse.jpg" height="80px" width="80px" class="simg"><span class="spn">Computer Science
                        Engineering</span>
                </a>
            </div>

            <div class="col-md-4 syl">
                <a href="">
                    <img src="Cours2/BBA.jpg" height="80px" width="80px" class="simg"><span class="spn">Bachelor of
                        Business
                        Administration</span>
                </a>
            </div>
            <div class="col-md-4 syl">
                <a href=""> <img src="Cours2/CS.avif" height="80px" width="80px" class="simg"><span class="spn">Cyber
                        Security
                    </span>
                </a>
            </div>
        </div>


        <div class="rows syllab3">

            <div class="col-md-4 syl"> <a href="">
                    <img src="Cours2/cvl.jpg" height="80px" width="80px" class="simg"><span class="spn">Civil
                        Engineering</span>
                </a>
            </div>
            <div class="col-md-4 syl">
                <a href="">
                    <img src="Cours2/dscn.jpg" height="80px" width="80px" class="simg"><span class="spn">Data Science
                    </span>
                </a>
            </div>
            <div class="col-md-4 syl">
                <a href=""> <img src="Cours2/me.png" height="80px" width="80px" class="simg"><span
                        class="spn">Mechanical
                        Engineering
                    </span>
                </a>
            </div>
        </div>


        <div class="rows syllab4">

            <div class="col-md-4 syl"><a href="">
                    <img src="Cours2/IT.webp" height="80px" width="80px" class="simg"><span class="spn">Information
                        Technology</span>
                </a>
            </div>
            <div class="col-md-4 syl">
                <a href="">
                    <img src="Cours2/be.jpg" height="80px" width="80px" class="simg"><span class="spn">Biomedical
                        Engineering
                    </span>
                </a>
            </div>

        </div>  </section><br>

        <div class="row endg">
            <div class="col-md-6">
                <div class="card crd-ho">
                    <img alt="" src="images/end.jpg" class="endg-img">


                </div>
            </div>
            <div class="col-md-6">
                <h1 class="txt2">Take the next step toward your personal and professional goals.</h1>
            </div>
        </div>
  

















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