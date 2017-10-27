<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>बाबु पाटे</title>
</head>

<script>
	(function(d, s, id) {
		var js, fjs = d.getElementsByTagName(s)[0];
		if (d.getElementById(id))
			return;
		js = d.createElement(s);
		js.id = id;
		js.src = 'https://connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.10';
		fjs.parentNode.insertBefore(js, fjs);
	}(document, 'script', 'facebook-jssdk'));
</script>
<body>

	<!--===== Preloader ====-->
	<div class="preloader">
		<div class="spinner">
			<div class="rect1"></div>
			<div class="rect2"></div>
			<div class="rect3"></div>
			<div class="rect4"></div>
			<div class="rect5"></div>
		</div>
	</div>


	<!--===== HEADER AREA =====-->
	<header class="navbar custom-navbar navbar-fixed-top">
		<div class="container">
			<div class="row">
				<div class="col-md-6 col-sm-6 col-xs-12">
					<div class="logo">
						<div class="navbar-header">
							<button type="button" class="navbar-toggle"
								data-toggle="collapse" data-target=".navbar-collapse">
								<span class="sr-only">Toggle navigation</span> <span
									class="icon-bar"></span> <span class="icon-bar"></span> <span
									class="icon-bar"></span>
							</button>
						</div>
						</button>
						<a class="theme-color" href="index.html">श्री.योगेश उर्फ
							&nbsp; <span>बाबु पाटे</span>
						</a>
						<!--== logo ==-->
					</div>
				</div>

				<div class="col-md-6 col-sm-8 col-xs-12">
					<nav class="main-menu">
						<div class="navbar-collapse collapse">
							<ul class="nav navbar-nav">
								<!--== manin menu ==-->
								<li class="active"><a class="smoth-scroll theme-color"
									href="#home">मुखपृष्ठ </a></li>
								<li><a class="smoth-scroll theme-color" href="#about">व्यक्तिविशेष
								</a></li>
								<li><a class="smoth-scroll theme-color" href="#services">सेवा
								</a></li>
								<li><a class="smoth-scroll theme-color" href="#work">छायाप्रत
								</a></li>
								<li><a class="smoth-scroll theme-color" href="#contact">संपर्क</a></li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</header>
	<!--===== END HEADER AREA ======-->


	<!--======= WELCOME AREA =======-->
	<div id="home" class="welcome-area" data-stellar-background-ratio="0.4"
		style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/banner-01.png);">
		<div class="welcome-table">
			<div class="welcome-cell">
				<div class="container">
					<div class="row">
						<div class="col-md-12 col-sm-12 col-xs-12">
							<!--  <div class="welcome-text">
                                 <h1 class="theme-color">Alex Smith</h1>
                                   <div class="element"></div>
                                </div>-->
							<div class="home-arrow">
								<a href="#about" class="smoth-scroll theme-color"><i
									class="fa fa-angle-double-down"></i></a>
							</div>
						</div>
					</div>
					<!--/.row-->
				</div>
				<!--/.container-->
			</div>
		</div>
	</div>
	<!--===== END WELCOME AREA =====-->


	<!--===== ABOUT AREA =====-->
	<div id="about" class="about-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-5">
					<div class="author-image">
						<img
							src="<%=request.getContextPath()%>/resources/light/assets/img/Babu-Pate.png"
							alt="Author Image" style="height: 550px";>
						<!--=== author image ===-->
					</div>
				</div>

				<div class="col-md-7">
					<div class="about-text">
						<h2>
							<b>श्री.योगेश उर्फ बाबु पाटे <span class="theme-color">
									लोकप्रतिनिधी</span> आणि <span class="theme-color">सामाजिक</span> नेता
							</b>
						</h2>
						<h4>0 पासून एक विशाल साम्राज्य उभे करणारे व्यक्तिमत्व
							नारायणगाव ग्रामपंचायत सन मध्ये सदस्य पदासाठी निवडणूक लधवली आणि
							भरघोस मतांनी निवडून आले.</h4>


						<!-- <input type="button" value="Click me" onclick="msg()">	 -->

						<div class="col-lg-6">
							<p>ग्रामपंचायत सदस्य म्हणून काम करत असताना छत्रपति शिवाजी
								महाराजांच्या जन्माने पावन झालेल्या शिवजन्मभूमित समाजासाठी
								काहीतरी करावे या उद्देशाने तरुण सहकारी घेऊन सन 2007 साली
								महाराजांच्या नावाने 'राजे शिवछत्रपति प्रतिष्ठान' या संघटनेची
								स्थापना केली. या संघटनेमार्फत सामाजिक काम करण्यास सुरुवात झाली.
								पुढे या संघटनेचे एका मोठ्या वृक्षात रूपांतर झाले गावोगावी राजे
								शिवछत्रपती प्रतिष्ठानच्या शाखा सुरु झाल्या प्रत्येक गावात राजे
								शिवछत्रपती प्रतिष्ठानचे पदाधिकारी आणि सभासद समाजोपयोगी कार्य
								हाती घेऊ लागले. पुणे जिल्ह्यातील सर्वात भव्य दिव्य शिवजयंती या
								संघटनेच्या माध्यमातून पार पडू लागली.</p>
						</div>

						<div class="col-lg-6">
							<p>अनेक प्रश्नांवर बाबुभाऊ यांच्या नेतृत्वाखाली प्रतिष्ठानचे
								सभासद वाचा फोडु लागले त्यामध्ये पाण्याचा प्रश्न,शेतकऱ्यांच्या
								प्रश्न,रस्त्याचा प्रश्न, कुठे कुणावर अन्याय घडत असेल त्यावर आपला
								आवाज उठवणारी संघटना म्हणून संपूर्ण जिल्ह्यात आपली ख्याती पसरवली.
								जनतेचे प्रतिनिधित्व करत असताना बाबुभाऊ यांना जुन्नर तालुका
								शिवसेना संघटक पद भेटले,पक्ष बांधणी साठी बाबुभाउंचे कार्य उत्तम
								ठरले, त्यांच्या या कामाची दखल घेत पक्षप्रमुख श्री.उद्धवसाहेब
								ठाकरे यांनी मातोश्री येथे सन्मानित केले. बाबुभाऊ हे अनुभवी
								लोकप्रतिनिधि असून राजकीय बुद्धिचातुर्य व कौशल्य यासाठी विविध
								व्यासपीठांनी गौरवीले आहे.</p>
						</div>
						<!--  <a class="btn theme-color" href="#">download resume</a>
                            <a class="btn extra" href="#">Hire Me</a>-->
					</div>
				</div>
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</div>
	<!--===== END ABOUT AREA =====-->


	<!--===== SERVICES AREA =====-->
	<div id="services" class="services-area section-padding"
		class="welcome-area" data-stellar-background-ratio="0.4"
		style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/service-bg-01.png);">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-title">
						<h2 style="color: white;">कार्य आणि सेवा</h2>
					</div>
				</div>
			</div>
			<!--/.row-->

			<div class="row">
				<div class="col-md-4 col-sm-6">
					<div class="single-service theme-color text-center wow fadeInUp"
						data-wow-delay="0.2s">
						<div class="service-img"
							style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/service/economical.png) "></div>
						<h3>आर्थिक</h3>
						<p>जनतेचे प्रतिनिधित्त्व करीत असताना विविध समित्यांवर काम केले
							आहे.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-service theme-color text-center wow fadeInUp"
						data-wow-delay="0.4s">
						<div class="service-img"
							style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/service/Socail.png) "></div>
						<h3>सामाजिक</h3>
						<p>जनतेचे प्रतिनिधित्त्व करीत असताना विविध समित्यांवर काम केले
							आहे.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-service theme-color text-center wow fadeInUp"
						data-wow-delay="0.6s">
						<div class="service-img"
							style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/service/educational.png) "></div>
						<h3>शैक्षणिक</h3>
						<p>जनतेचे प्रतिनिधित्त्व करीत असताना विविध समित्यांवर काम केले
							आहे.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-service theme-color text-center wow fadeInUp"
						data-wow-delay="0.8s">
						<div class="service-img"
							style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/service/Industrial.png) "></div>
						<h3>ओद्योगिक</h3>
						<p>जनतेचे प्रतिनिधित्त्व करीत असताना विविध समित्यांवर काम केले
							आहे.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-service theme-color text-center wow fadeInUp"
						data-wow-delay="1.0s">
						<div class="service-img"
							style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/service/Devetional.png) "></div>
						<h3>धार्मिक</h3>
						<p>जनतेचे प्रतिनिधित्त्व करीत असताना विविध समित्यांवर काम केले
							आहे.</p>
					</div>
				</div>
				<div class="col-md-4 col-sm-6">
					<div class="single-service theme-color text-center wow fadeInUp"
						data-wow-delay="1.2s">
						<div class="service-img"
							style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/service/political.png) "></div>
						<h3>राजकीय</h3>
						<p>जनतेचे प्रतिनिधित्त्व करीत असताना विविध समित्यांवर काम केले
							आहे.</p>
					</div>
				</div>
			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</div>
	<!--====== END SERVICES AREA ======-->


	<!--====== WORK AREA ======-->
	<div id="work" class="work-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-title">
						<h2>छायांकित विशलेषण</h2>
						<p>आर्थिक धोरणांसह विविध विषयांचा व्यासंग व विश्लेषण यासाठी द
							यांची ख्याती आहे.</p>
					</div>
				</div>
			</div>
			<!--/.row-->

			<div class="row">
				<ul class="work-list text-center">
					<li class="filter theme-color" data-filter="all">सर्व</li>
					<li class="filter theme-color" data-filter=".webdesign">शिवजन्मोत्सव
					</li>
					<li class="filter theme-color" data-filter=".development">वृक्षारोपण</li>
					<li class="filter theme-color" data-filter=".grapich">समाजकल्याण
					</li>
				</ul>
			</div>
			<!--/.row-->

			<div class="work-inner">
				<div class="row no-gutter">
					<div class="col-md-4 col-sm-6 mix webdesign">
						<div class="single-work">
							<img
								src="<%=request.getContextPath()%>/resources/light/assets/img/work/1.jpg"
								alt="" style="width: 100%, Hieght:50%";>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>शिवजन्मोत्सव</h4>
											<p>अनुभवी लोकप्रतिनिधी असून राजकीय बुद्धिचातुर्य व कौशल्य
												यासाठी त्यांना विविध व्यासपिठांनी गौरविलेले आहे.</p>
											<a class="work-popup theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/1.jpg"><i
												class="fa fa-search-plus"></i></a> <a
												class="work-link theme-color" href="#"><i
												class="fa fa-link"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 mix webdesign">
						<div class="single-work">
							<img
								src="<%=request.getContextPath()%>/resources/light/assets/img/work/2.jpg"
								alt="" style="width: 100%, Hieght:50%";>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>शिवजन्मोत्सव</h4>
											<p>अनुभवी लोकप्रतिनिधी असून राजकीय बुद्धिचातुर्य व कौशल्य
												यासाठी त्यांना विविध व्यासपिठांनी गौरविलेले आहे.</p>
											<a class="work-popup theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/2.jpg"><i
												class="fa fa-search-plus"></i></a> <a
												class="work-link theme-color" href="#"><i
												class="fa fa-link"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 mix development">
						<div class="single-work">
							<img
								src="<%=request.getContextPath()%>/resources/light/assets/img/work/3.jpg"
								alt="" style="width: 100%, Hieght:50%";>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>वृक्षारोपण</h4>
											<p>वृक्षारोपणवृक्षारोपणवृक्षारोपणवृक्षारोपणवृक्षारोपणवृक्षारोपण
												वृक्षारोपण वृक्षारोपण वृक्षारोपण</p>
											<a class="work-popup theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/3.jpg"><i
												class="fa fa-search-plus"></i></a> <a
												class="work-link theme-color" href="#"><i
												class="fa fa-link"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 mix development">
						<div class="single-work">
							<img
								src="<%=request.getContextPath()%>/resources/light/assets/img/work/4.jpg"
								alt="" style="width: 100%, Hieght:50%";>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>वृक्षारोपण</h4>
											<p>वृक्षारोपण वृक्षारोपण वृक्षारोपण वृक्षारोपण वृक्षारोपण
												वृक्षारोपण वृक्षारोपण वृक्षारोपण वृक्षारोपण वृक्षारोपण
												वृक्षारोपण</p>
											<a class="work-popup theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/4.jpg"><i
												class="fa fa-search-plus"></i></a> <a
												class="work-link theme-color" href="#"><i
												class="fa fa-link"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 mix grapich">
						<div class="single-work">
							<img
								src="<%=request.getContextPath()%>/resources/light/assets/img/work/5.jpg"
								alt="" style="width: 100%, Hieght:50%";>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>समाजकल्याण</h4>
											<p>समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण
												समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण
												समाजकल्याण .</p>
											<a class="work-popup theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/5.jpg"><i
												class="fa fa-search-plus"></i></a> <a
												class="work-link theme-color" href="#"><i
												class="fa fa-link"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 mix grapich">
						<div class="single-work">
							<img
								src="<%=request.getContextPath()%>/resources/light/assets/img/work/6.jpg"
								alt="" style="width: 100%, Hieght:100%";>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>समाजकल्याण</h4>
											<p>समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण
												समाजकल्याण समाजकल्याण समाजकल्याण .</p>
											<a class="work-popup theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/6.jpg"><i
												class="fa fa-search-plus"></i></a> <a
												class="work-link theme-color" href="#"><i
												class="fa fa-link"></i></a>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<!--/.row-->
			</div>
		</div>
		<!--/.container-->
	</div>
	<!--====== END WORK AREA ======-->


	<!--===== STAT AREA ======  
        <div class="stat-area section-padding">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-stat">
                            <i class="fa fa-heart"></i>
                            <h2 class="counter theme-color">35</h2>
                            <h3>Happy Clients</h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-stat">
                            <i class="fa fa-coffee"></i>
                            <h2 class="counter theme-color">227</h2>
                            <h3>Cups of tea</h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-stat">
                            <i class="fa fa-handshake-o"></i>
                            <h2 class="counter theme-color">156</h2>
                            <h3>Projects completed</h3>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-stat">
                            <i class="fa fa-trophy"></i>
                            <h2 class="counter theme-color">15</h2>
                            <h3>Award Won</h3>
                        </div>
                    </div>
                </div> 
            </div> 
        </div>
        <!--===== END STAT AREA ====== -->


	<!--==== TESTIMONIAL AREA =====-->
	<!-- <div id="testimonial" class="testimonial-area section-padding">
            <div class="container">
               <div class="row">
                   <div class="col-md-12 text-center">
                      <div class="section-title">
                       <h2>what people say.</h2>
                       </div>
                   </div>
               </div> <!--/.row-->
	<!-- 
              <div class="row">
                <div class="col-md-12">
                    <div class="testimonial-list">
                        <div class="single-testimonial">
                            <div class="t-author">
                                <div class="t-image">
                                    <img src="<%=request.getContextPath()%>/resources/light/assets/img/testimonial/1.jpg" alt="">
                                </div>
                                <div class="t-name">
                                    <h4>jhon doe</h4>
                                    Graphic Designer
                                </div>
                            </div>
                            <div class="t-content">
                                <p>Lorem ipsum dolor sit amet, consectetuer adiping elit, sed diam nonummy nibh euismod tinunt ut laoreet dolore magna aliquam.</p>
                            </div>
                            </div>
                            <div class="single-testimonial">
                                <div class="t-author">
                                    <div class="t-image">
                                        <img src="<%=request.getContextPath()%>/resources/light/assets/img/testimonial/2.jpg" alt="">
                                    </div>
                                    <div class="t-name">
                                        <h4>MICHAEL BEAN</h4>
                                        Graphic Designer
                                    </div>
                                </div>
                                <div class="t-content">
                                    <p>Lorem ipsum dolor sit amet, consectetuer adiping elit, sed diam nonummy nibh euismod tinunt ut laoreet dolore magna aliquam.</p>
                                </div>
                            </div>
                            <div class="single-testimonial">
                                <div class="t-author">
                                    <div class="t-image">
                                        <img src="<%=request.getContextPath()%>/resources/light/assets/img/testimonial/3.jpg" alt="">
                                    </div>
                                    <div class="t-name">
                                        <h4>Felica Queen</h4>
                                        Graphic Designer
                                    </div>
                                </div>
                                <div class="t-content">
                                    <p>Lorem ipsum dolor sit amet, consectetuer adiping elit, sed diam nonummy nibh euismod tinunt ut laoreet dolore magna aliquam.</p>
                                </div>
                            </div>
                            <div class="single-testimonial">
                                <div class="t-author">
                                    <div class="t-image">
                                        <img src="<%=request.getContextPath()%>/resources/light/assets/img/testimonial/4.jpg" alt="">
                                    </div>
                                    <div class="t-name">
                                        <h4>PAUL FLAVIUS</h4>
                                        Graphic Designer
                                    </div>
                                </div>
                                <div class="t-content">
                                    <p>Lorem ipsum dolor sit amet, consectetuer adiping elit, sed diam nonummy nibh euismod tinunt ut laoreet dolore magna aliquam.</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> <!-- / row -->
	</div>
	<!--/.container-->
	</div>
	<!--====END TESTIMONIAL AREA =====-->


	<!--====== CONTACT INFO AREA ======-->
	<div id="contact" class="contact-info-area section-padding"
		class="welcome-area" data-stellar-background-ratio="0.4"
		style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/Contact-bg.png);">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-title">
						<h2 style="color: white;">आमचा संपर्क</h2>
					</div>
				</div>
			</div>
			<!--/.row-->

			<div class="row wow fadeInUp" data-wow-delay="0.4s"
				style="alingn: center";>
				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="contact-form">
						<form id="contact-form" method="post"
							action="http://programmerhasan.com/demos/light/light/contact.php">
							<div class="messages"></div>
							<div class="controls">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input id="form_name" type="text" name="name"
												class="form-control" placeholder="नाव*" required="required"
												data-error="Name is required.">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input id="form_email" type="email" name="email"
												class="form-control" placeholder="ई मेल*"
												required="required" data-error="Valid email is required.">
											<div class="help-block with-errors"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<textarea id="form_message" name="message"
												class="form-control" placeholder="संदेश*" rows="7"
												required="required" data-error="Please,leave us a message."></textarea>
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-md-12">
										<input type="submit"
											class="btn btn-effect btn-sent theme-color"
											value="संदेश  पाठवा ">
									</div>
								</div>
							</div>
						</form>
					</div>
				</div>

				<div class="col-md-6 col-sm-12 col-xs-12">
					<div class="author-adress">
						<!-- <div class="single-address theme-color">
							<i class="fa fa-rocket"></i>
							<h4>आमचा पत्ता :</h4>
							<p>नारायणगाव, पुणे, महाराष्ट्र,</p>
						</div> -->

						<div class="single-address theme-color">
							
							<div class="single-address theme-color">
								<div class="fb-page"
									data-href="https://www.facebook.com/Babu-Pate-&#x936;&#x94d;&#x930;&#x940;&#x92f;&#x94b;&#x917;&#x947;&#x936;-&#x909;&#x930;&#x94d;&#x92b;-&#x92c;&#x93e;&#x92c;&#x941;-&#x92a;&#x93e;&#x91f;&#x947;-627037160708490/"
									data-width="1000" data-height="1200" data-small-header="false"
									data-adapt-container-width="true" data-hide-cover="false"
									data-show-facepile="false">
									<blockquote
										cite="https://www.facebook.com/Babu-Pate-&#x936;&#x94d;&#x930;&#x940;&#x92f;&#x94b;&#x917;&#x947;&#x936;-&#x909;&#x930;&#x94d;&#x92b;-&#x92c;&#x93e;&#x92c;&#x941;-&#x92a;&#x93e;&#x91f;&#x947;-627037160708490/"
										class="fb-xfbml-parse-ignore">
										<a
											href="https://www.facebook.com/Babu-Pate-&#x936;&#x94d;&#x930;&#x940;&#x92f;&#x94b;&#x917;&#x947;&#x936;-&#x909;&#x930;&#x94d;&#x92b;-&#x92c;&#x93e;&#x92c;&#x941;-&#x92a;&#x93e;&#x91f;&#x947;-627037160708490/">Babu
											Pate-श्री.योगेश उर्फ बाबु पाटे</a>
									</blockquote>
								</div>
							</div>

							<div class="single-address theme-color">
								<div class="fb-follow"
									data-href="https://www.facebook.com/Babu-Pate-%E0%A4%B6%E0%A5%8D%E0%A4%B0%E0%A5%80%E0%A4%AF%E0%A5%8B%E0%A4%97%E0%A5%87%E0%A4%B6-%E0%A4%89%E0%A4%B0%E0%A5%8D%E0%A4%AB-%E0%A4%AC%E0%A4%BE%E0%A4%AC%E0%A5%81-%E0%A4%AA%E0%A4%BE%E0%A4%9F%E0%A5%87-627037160708490/"
									data-width="500" data-height="1000" data-layout="standard"
									data-size="small" data-show-faces="false"></div>

							</div>
						</div>



						<div class="single-address theme-color">
						 <i class="fa fa-rocket"></i>
                                <h4>आमचा पत्ता :</h4>
                                <p>नारायणगाव, पुणे, महाराष्ट्र,</p>
							<i class="fa fa-phone"></i>
							<h4>आमचा फोन क्रमांक :</h4>
							<p>
								(+९१) १२३४५६७८९० <br> (+९१) ०९८७६५४३२१
							</p>
						</div>
						<!--<div class="single-address theme-color">
                                <i class="fa fa-envelope"></i>
                                <h4>Email:</h4>
                                <p>Info@light.com <br> Info@light.com</p>
                            </div>-->

						<!-- <div class="social-link">
							<ul>
								<li><a class="facebook-color theme-color"
									href="https://www.facebook.com/Babu-Pate-%E0%A4%B6%E0%A5%8D%E0%A4%B0%E0%A5%80%E0%A4%AF%E0%A5%8B%E0%A4%97%E0%A5%87%E0%A4%B6-%E0%A4%89%E0%A4%B0%E0%A5%8D%E0%A4%AB-%E0%A4%AC%E0%A4%BE%E0%A4%AC%E0%A5%81-%E0%A4%AA%E0%A4%BE%E0%A4%9F%E0%A5%87-627037160708490/"><i
										class="fa fa-facebook"></i></a></li>
								<li><a class="linkedin-color theme-color" href="#"><i
										class="fa fa-linkedin"></i></a></li>
								<li><a class="google-color theme-color" href="#"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a class="youtube-color theme-color" href="#"><i
										class="fa fa-youtube"></i></a></li>
							</ul>
						</div> -->
					</div>
				</div>



			</div>
			<!--/.row-->
		</div>
		<!--/.container-->
	</div>
	<!--===== END CONTACT INFO AREA ======-->


	<!--====== FOOTER AREA ======-->
	<footer class="footer">
		<div class="container">
			<div class="row wow zoomIn" data-wow-delay="0.4s">
				<div class="col-md-12 text-center">
					<p onclick="location.href='<%=request.getContextPath()%>/login'">
						&copy;2017 <strong>Jdsoftsolution</strong>. All Rights Reserved
					</p>
				</div>
			</div>
		</div>
	</footer>
	<!--====== END FOOTER AREA ======-->


</body>

<!-- Mirrored from programmerhasan.com/demos/light/light/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 30 Aug 2017 06:39:46 GMT -->
</html>
