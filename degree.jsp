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
    <link href="css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <link href="css/style4.css" rel="stylesheet" type="text/css" media="all" />
    <!-- pop-up-box -->
	<link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all" />
	<!-- //pop-up-box -->
	<!-- font-awesome icons -->
	<link href="css/font-awesome.css" rel="stylesheet">
	<!-- //font-awesome icons -->
    <title>Earn a Degree</title>
    
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
                <!-- <ul>
                    <li style="background-color: black;"><a href="#" class="hvr-icon-hang" data-toggle="modal"
                            data-target="#myModal">Read More</a></li>
                </ul> -->
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
    
    <div class="container">
    
        <div class="profile-card">
            <div class="text-data">
                <span class="name">Receive AICTE-approved PGDM Online by SPJIMR</span>
                <span class="job">Upon successful completion of academic requirements</span>
            </div>
        
        </div>
    
        <div class="profile-card">
            <div class="text-data">
                <span class="name">INR 10,00,000/ USD 12,200</span>
                <span class="job">Pay-as-you-learn: Make termly payments to better finance your education</span>
            </div>
        </div>
    
        <div class="profile-card">
            <div class="text-data">
                <span class="name">Live and interactive sessions</span>
                <span class="job">By core SPJIMR faculty and industry experts</span>
            </div>
        </div>
    
        <div class="profile-card">
            <div class="text-data">
                <span class="name">Three campus immersions</span>
                <span class="job">Interact with industry experts and peers during optional campus visits</span>
            </div>
        </div>

        <div class="profile-card">
            <div class="text-data">
                <span class="name">Career development sessions</span>
                <span class="job">Career development sessions</span>
            </div>
        </div>
    
    </div>
    <br>
    <div class="row">
        <div class="col-md-11">
            <h1 class="txt">Build a career in business management and sharpen your decision making skills with one of the leading b-schools in India.
            </h1>
            <br>
            <p class="txt1">Through the PGDM Online programme, you will be able to fast-track your management career by developing an in-depth understanding of diverse business functions and gaining the cross-functional expertise required for effective decision-making.</p><br>

                <p class="txt1">You will experience a transformative journey through live sessions with industry experts and accomplished on-campus faculty, collaborate with peers during campus immersions, network with prominent alumni, build future-ready skills through live projects and case studies, and receive a range of tailor-made career services.</p><br>
                
                <p class="txt1">The two-year AICTE-approved programme is specially created for professionals who wish to pursue top-tier management education to advance their career goals while pursuing their jobs. With a curriculum designed to meet industry needs, it will offer you the opportunity to apply learnings in real-time to your jobs.</p>

        </div>


    </div>

    <div class="row">
        <div class="col-md-11"><br><br>
            <h1 class="txt">Gain the SPJIMR advantage and accelerate your career:
            </h1>
            <br><br>
            <h3 class="txt">Graduate from a leading B-school:</h3><br>
            <p class="txt1">With a 40+ year legacy in management studies, SPJIMR is one of the top-five business schools in India. It has been ranked #1 in India and #40 in the world by the Financial Times in 2023.</p><br>
            <h3 class="txt">Learn from world-class faculty and industry experts:</h3><br>
                <p class="txt1">Learn from the core SPJIMR faculty, who are accomplished academicians with rich industry experiences from diverse sectors.</p><br>
             <h3 class="txt">Experience immersive learning:</h3><br>
             <p class="txt1">During the three campus immersions (for five days each), you will be a part of curated immersive experiences, academic sessions, workshops, guest sessions and networking events with top business leaders from diverse industries and the SPJIMR alumni network.

             </p><br>   

             <h3 class="txt">Live and interactive sessions:</h3><br>
             <p class="txt1">Most sessions (80 credits equivalent to 2400 hours of engagement) are delivered live and provide ample opportunities to engage with faculty, peers and industry professionals.</p>   <br>

             <h3 class="txt">Access an elite alumni network:</h3><br>
             <p class="txt1">Gain alumni status equivalent to the on-campus programs and join a global network of 15,000+ members leading top businesses. In addition, build valuable, professional connections within a prominent industry network during specially organised events.</p> <br>  

             <h3 class="txt">Receive career guidance:</h3><br>
             <p class="txt1">The career services team will be actively engaged to support your career aspirations and enable you to succeed. These will include -</p> <br>
            <ul>
                <li class="txt1"><p>CV preparation, personal branding and profile-building workshops</p><br></li>
                <li class="txt1"><p>Role-clarity sessions by recruitment experts</p><br></li>
                <li class="txt1"> <p>Sessions by industry experts</p><br></li>
            </ul> 

             <h3 class="txt">Develop industry-ready skills:</h3><br>
             <p class="txt1">Leverage industry insights from top business leaders and learnings from live projects to solve critical business challenges at work.</p><br>   

             <h3 class="txt">Experience a unique and innovative pedagogy:</h3><br>
             <p class="txt1">The PGDM Online offers a holistic approach to management education that goes well beyond the classroom -</p>  <br>
             <ul>
                <li class="txt1"><p>Gain real-world experience via a social immersion project with a local NGO and apply management concepts to positively impact your community</p><br></li>
                <li class="txt1"><p>Identify strengths and areas of improvement through an immersive Personal Growth Lab</p><br></li>
                <li class="txt1"> <p>Learn to harness your inner potential with a specialised Science of Spirituality course</p><br></li>
            </ul> 

             <h3 class="txt">Mentorship and workshops by industry leaders:</h3><br>
             <p class="txt1">Learn from industry experts through interactive sessions and the mentorship programme.</p>   



        </div>
        

    </div>

    <div class="certificate">
        <div class="wrapper">
        <img src="images/certi.png" alt="" class="src">
        <div class="text-box">
            <h2>What does the diploma certificate look like?</h2><br>
            <p>Learners shall be awarded the 'Post Graduate Diploma in Management (Online)' upon successfully meeting the academic requirements of the programme as set by the Academic Council of SPJIMR.</p>
        </div>
    </div>
</div>
<div class="heading">
    <h2 class="text-center">About The Programs</h2>
</div>

<section class="container1">
    <div class="card1">
        <div class="card-image1">
            <img src="images/w11.jpg" alt="">
        </div>
            <h2>Hear SPJIMR Dean, Dr. Varun Nagaraj </h2>
            <p>SPJIMR Dean Dr. Varun Nagaraj explains how the newly launched PGDM Online programme adapts to the evolving needs of learners seeking management education from a top-tier B-school. Through the programme, SPJIMR is committed to making high-quality management education accessible to individuals across India and the world. The two-year AICTE-approved programme will enable busy professionals to advance their career goals while continuing in their current jobs and without changing location.
            </p>
     
    </div>
    <div class="card1">
        <div class="card-image1">
            <img src="images/d1.png" alt="">
        </div>
            <h2>Admissions</h2>
            <p>   </p>
            <p>You must have a bachelor's degree from an accredited school or university with at least 50% marks or equivalent grade points to be eligible to apply. Candidates appearing for their final-year bachelor’s examination can also apply for provisional admission - provided they fulfil the eligibility criteria and submit the required documents by October 31, 2023.</p>      
       
    </div>
    <div class="card1">
        <div class="card-image1">
            <img src="images/d2.png" alt="">
            
        </div>
            <h2>Academics </h2>
            <p>Whether you're starting your career or want to grow in your current role, this programme will help you build an in-depth understanding of core business functions while gaining a broader perspective on general management. In the second year, you can customise your learning experience by choosing three out of the six available micro-specialisations. </p>
        
    </div>
    <div class="card1">
        <div class="card-image1"> 
            <img src="images/d3.png" alt="">
        </div>
            <h2>Careers</h2>
            <p>Develop your functional management skills and grow as an innovative leader through classroom and beyond-classroom learning. You will also get access to career enhancement and mentorship sessions with SPJIMR’s faculty.</p>
       
    </div>
    <div class="card1">
        <div class="card-image1">
            <img src="images/d4.png" alt="">
        </div>
            <h2>Student Experience</h2>
            <p>Get opportunities to develop your professional skills and for your personal growth. As a part of the programme, you will work on case studies and projects that give you hands-on experience and help you apply your knowledge in real-world scenarios. You will also have the chance to interact with NGOs as a part of SPJIMR’s Development of Corporate Citizenship (DoCC) programme and participate in Science of Spirituality (SoS) to develop a deeper understanding of your potential. You will have regular interactions with entrepreneurs and leaders from industry under the mentorship programme.</p>
    </div>
    <div class="card1">
        <div class="card-image1">
            <img src="images/d5.png" alt="">
        </div>
            <h2>About the Institute</h2>
            <p>SPJIMR is a leading postgraduate management institute established in 1981 in Mumbai. It offers cutting-edge, modern, and pragmatic business education that prepares students for success in the global business realm. SPJIMR is in the league of top global B-schools which are accredited by AACSB, International. AACSB accreditation is the worldwide hallmark of excellence in business education, and has been earned by less than 5% of the world's business schools. </p>

    </div>
</section>

<!-- Footer -->
<div class="footer w3ls">
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
                    <p>As defined in the AICTE act 1987, Technical Education means programmes of Education,
                        Research, and training in Engineering and Technology,
                        Architecture, Town Planning, Management, Pharmacy, and Applied Arts and Crafts, and such
                        other programmes or areas as the Central Government may in consultation with the Council,
                        by notification in the official gazette declare.</p>
                </div>
                <div class="col-md-4 ftr-grid fg2 mid-gd">
                    <h3>Our Address</h3>
                    <div class="ftr-address">
                        <div class="local">
                            <i class="fa fa-map-marker" aria-hidden="true"></i>
                        </div>
                        <div class="ftr-text">
                            <p> HC66+6FG, LB Block, Sector 3, Bidhannagar, Kolkata, West Bengal 700098.</p>
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
                <p>&copy; 2023 Aicte. All Rights Reserved | Design by <a href="#" target="_blank">ALGO AVENGERS</a>
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