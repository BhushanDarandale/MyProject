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

					<input type="button" value="ADD ALBUM"
						onclick="location.href='<%=request.getContextPath()%>/photoalbum'">
				</div>
			</div>
			<!--/.row-->


			<!--/.row-->
			<div class="work-inner">
				<div class="row no-gutter">
					<c:forEach items="${Albums}" var="albm" varStatus="loop">
	              <div class="col-md-4 col-sm-6">
							<div class="single-service album-img theme-color text-center wow fadeInUp" style="height: 250px"
								data-wow-delay="0.6s"
								style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
								<div class="" style="height: 150px">
								
								
								
						
						
									
						
									<img style="height: 125px; width: 125px"
								src="${albm.albumImage }"
								alt="">
									
									
									</div>
								<h3>${albm.albumName }</h3>
								
								<img style="height: 40px; width: 40px"
								src="<%=request.getContextPath()%>/resources/light/assets/img/service/plus.png"
								alt="">
								<!-- <p>जनतेचे प्रतिनिधित्त्व करीत असताना विविध समित्यांवर काम
									केले आहे.</p> -->
							</div>
						</div>

					</c:forEach>
				</div>
			</div>
		</div>
	</div>




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
