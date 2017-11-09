<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
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


<script type="text/javascript">
	$(document).ready(function() {
		$('#contact-form').submit(function(event) {
			/*  var firstname = $('#firstname').val();
			 var lastname = $('#lastname').val();                
			 var data = 'firstname='
			         + encodeURIComponent(firstname)
			         + '&lastname='
			         + encodeURIComponent(lastname); */
			$.ajax({
				url : "<c:url value='/message'/>",
				data : $("#contact-form").serialize(),
				type : "GET",
				success : function(response) {
					$('#newname').val('');
					$('#email').val('');
					$('#message').val('');
					alert("Thank You for Messeging")
				},
				error : function(xhr, status, error) {
					alert(xhr.responseText);
				}
			});
			return false;
		});
	});
</script>





<script type="text/javascript">
	$(function() {
		$('#vertical-ticker').totemticker({
			row_height : '100px',
			next : '#ticker-next',
			previous : '#ticker-previous',
			stop : '#stop',
			start : '#start',
			mousestop : true,
		});
	});
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
						<a class="theme-color">श्री.योगेश उर्फ &nbsp; <span>बाबु
								पाटे</span>
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
			<center>
				<div class="row">

					<div class="col-md-12 mix webdesign">


						<c:choose>
							<c:when test="${empty Personal }">
								<img
									src="<%=request.getContextPath()%>/resources/light/assets/img/babu.jpg"
									alt="Author Image"
									style="width: 250px; Height: 250px; border-radius: 100%; border: 3px solid #ff9933;">

							</c:when>

							<c:otherwise>
								<c:forEach items="${Personal}" var="personal" varStatus="loop">
									<img src="${personal.picture}" alt="Author Image"
										style="width: 250px; Height: 250px; border-radius: 100%; border: 3px solid #ff9933;">
								</c:forEach>
							</c:otherwise>


						</c:choose>






					</div>
				</div>
				<div class="row">
					<div class="col-md-12">
						<div class="about-text">
							<h2>
								<b>श्री.योगेश उर्फ बाबु पाटे <span class="theme-color">
										लोकप्रतिनिधी</span> आणि <span class="theme-color">सामाजिक</span> नेता
								</b>
							</h2>



							<c:choose>
								<c:when test="${empty Personal }">
									<h4>0 पासून एक विशाल साम्राज्य उभे करणारे व्यक्तिमत्व
										नारायणगाव ग्रामपंचायत सन मध्ये सदस्य पदासाठी निवडणूक लधवली आणि
										भरघोस मतांनी निवडून आले.</h4>

								</c:when>

								<c:otherwise>
									<c:forEach items="${Personal}" var="personal" varStatus="loop">
										<h4>${personal.header}</h4>
									</c:forEach>
								</c:otherwise>


							</c:choose>

						</div>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">


						<c:choose>
							<c:when test="${empty Personal }">
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

							</c:when>
							<c:otherwise>
								<c:forEach items="${Personal}" var="personal" varStatus="loop">
									<p>${personal.para1}</p>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>

					<div class="col-lg-6">
						<c:choose>
							<c:when test="${empty Personal }">
								<p>अनेक प्रश्नांवर बाबुभाऊ यांच्या नेतृत्वाखाली प्रतिष्ठानचे
									सभासद वाचा फोडु लागले त्यामध्ये पाण्याचा प्रश्न,शेतकऱ्यांच्या
									प्रश्न,रस्त्याचा प्रश्न, कुठे कुणावर अन्याय घडत असेल त्यावर
									आपला आवाज उठवणारी संघटना म्हणून संपूर्ण जिल्ह्यात आपली ख्याती
									पसरवली. जनतेचे प्रतिनिधित्व करत असताना बाबुभाऊ यांना जुन्नर
									तालुका शिवसेना संघटक पद भेटले,पक्ष बांधणी साठी बाबुभाउंचे कार्य
									उत्तम ठरले, त्यांच्या या कामाची दखल घेत पक्षप्रमुख
									श्री.उद्धवसाहेब ठाकरे यांनी मातोश्री येथे सन्मानित केले.
									बाबुभाऊ हे अनुभवी लोकप्रतिनिधि असून राजकीय बुद्धिचातुर्य व
									कौशल्य यासाठी विविध व्यासपीठांनी गौरवीले आहे.</p>

							</c:when>

							<c:otherwise>
								<c:forEach items="${Personal}" var="personal" varStatus="loop">
									<p>${personal.para2}</p>
								</c:forEach>
							</c:otherwise>
						</c:choose>

					</div>
				</div>
				<br> <a class="btn theme-color" href="#">Download Magazine</a>
		</div>
	</div>



	<!--===== END ABOUT AREA =====-->



	<!-- PHOTO modal -->

	<div class="modal fade" id="myModal2" role="dialog">
		<div class="modal-dialog modal-lg">

			<!-- Modal content-->
			<div class="modal-content">
				<div class="modal-body">
					<div>
						<div id="myCarousel" class="carousel slide" data-ride="carousel"
							style="margin-bottom: 15px;">


							<!-- Wrapper for slides -->
							<div class="carousel-inner">
								<div class="item active">
									<img
										src="<%=request.getContextPath()%>/resources/light/assets/img/work/1.jpg"
										alt="Los Angeles">
								</div>

								<div class="item">
									<img
										src="<%=request.getContextPath()%>/resources/light/assets/img/work/2.jpg"
										alt="Chicago">
								</div>

								<div class="item">
									<img
										src="<%=request.getContextPath()%>/resources/light/assets/img/work/3.jpg"
										alt="New York">
								</div>
							</div>

							<!-- Left and right controls -->
							<a class="left carousel-control" href="#myCarousel"
								data-slide="prev"> <span
								class="glyphicon glyphicon-chevron-left"></span> <span
								class="sr-only">Previous</span>
							</a> <a class="right carousel-control" href="#myCarousel"
								data-slide="next"> <span
								class="glyphicon glyphicon-chevron-right"></span> <span
								class="sr-only">Next</span>
							</a>
						</div>
					</div>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
				</div>
			</div>

		</div>
	</div>



	<!-- END PHOTO modal -->



	<!--===== NEWS AREA =====-->





	<div id="services" class="services-area section-padding"
		class="welcome-area" data-stellar-background-ratio="0.4">
		<div class="container">
			<!--<div class="row">
                   <div class="col-md-12 col-sm-12 col-xs-12">
                      <div class="section-title">
                       <h2 style="color:black;">कार्य आणि सेवा </h2>
                       </div>
                   </div>
               </div> -->
			<!--/.row-->

			<div class="row">
				<div class="col-md-3  wow fadeInUp">
					<div>
						<h2>
							<center>
								<font color="#ff9933">आमचे प्रेरणास्थान </font>
							</center>
						</h2>
					</div>

					<div class="mix webdesign">
						<div class="single-work">
							<a> <img
								src="<%=request.getContextPath()%>/resources/light/assets/img/Shivaji.png"
								alt="" style="width: 100%, Hieght:50%";>
							</a>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>छत्रपती शिवाजी महाराज</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

					<div class="mix webdesign">
						<div class="single-work">
							<a> <img
								src="<%=request.getContextPath()%>/resources/light/assets/img/Balasaheb.png"
								alt="" style="width: 100%, Hieght:50%";>
							</a>
							<div class="item-hover">
								<div class="work-table">
									<div class="work-tablecell">
										<div class="hover-content">
											<h4>बाळासाहेब ठाकरे</h4>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>

				</div>
				<!-- Amache Preranasthan-->

				<div class="col-md-6  wow fadeInUp">
					<div>
						<h2>
							<center>
								<font color="#ff9933">मान्यवरांच्या शुभेच्छा </font>
							</center>
						</h2>
					</div>
					<div id="myCarousel" class="carousel slide" data-ride="carousel"
						style="margin-bottom: 15px;">
						<!-- Indicators -->
						<ol class="carousel-indicators">
							<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
							<li data-target="#myCarousel" data-slide-to="1"></li>
							<li data-target="#myCarousel" data-slide-to="2"></li>
						</ol>

						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<img
									src="<%=request.getContextPath()%>/resources/light/assets/img/work/1.jpg"
									alt="Los Angeles">
							</div>

							<div class="item">
								<img
									src="<%=request.getContextPath()%>/resources/light/assets/img/work/2.jpg"
									alt="Chicago">
							</div>

							<div class="item">
								<img
									src="<%=request.getContextPath()%>/resources/light/assets/img/work/3.jpg"
									alt="New York">
							</div>
						</div>

						<!-- Left and right controls -->
						<a class="left carousel-control" href="#myCarousel"
							data-slide="prev"> <span
							class="glyphicon glyphicon-chevron-left"></span> <span
							class="sr-only">Previous</span>
						</a> <a class="right carousel-control" href="#myCarousel"
							data-slide="next"> <span
							class="glyphicon glyphicon-chevron-right"></span> <span
							class="sr-only">Next</span>
						</a>
					</div>

				</div>
				<!-- Manyavarancya Shubhechya-->

				<div class="col-md-3  margin-bottom  wow fadeInUp" id="wrapper1">
					<div>
						<h2>
							<center>
								<font color="#ff9933">बातम्या</font>
							</center>
						</h2>
						<ul id="vertical-ticker" style="overflow: hidden;">
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> आमदाराचे नुसते
									नावच मोठे .......कृती मात्र शून्य - मा.साहेब </a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> पाटणकरांचे
									प्रगतीपुस्तक म्हणजे निव्वळ बनवाबनवी – मा.साहेब. </a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> आपुलकी,माया,प्रेम
									देणाऱ्या जनतेच्या कायम ऋणात राहणार – मा.साहेब. </a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> शंभूराज
									देसाईंसाहेबांना ७० वर्षांच्या वृद्धेचे आर्थिक सहाय्य </a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> पाटणकरांना २६
									वर्षात एक हि घर वसविला आले नाही – मा.साहेब. </a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> सह्याद्री व्याघ्र
									प्रकल्प पाटणकरांच्याच काळात आला................! </a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> ......म्हणूनच
									पाटणकरांचा गाशा जनतेने गुंडाळला - मा.साहेब.</a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> ' साहेबांच्या '
									समाधानासाठी तारळीचे पाणी माढयाला - मा. साहेब. </a></li>
							<li style="margin-top: 10px;"><a style="color: #5858FA"
								href="Shownews.aspx?filename=saheb11111"> आजपासून आचारसंहिता
									लागू,महाराष्ट्रात एकाच टप्प्यात मतदानमहाराष्ट्रात १५ ऑक्टोबरला
									मतदान १९ ऑक्टोबरला मतमोजणी. </a></li>
						</ul>

					</div>
				</div>
				<!-- Batamya-->
			</div>
			<!--/.row-->



			<!--======= Running text =======-->
			<div class="running-section-padding">
				<div class="fluid-container">
					<div class="row">
						<marquee>
							<h5 style="color: #f7f7f7;">श्री.योगेश उर्फ बाबु पाटे </h5>
						</marquee>
					</div>
				</div>
			</div>

			<!--===== END Runnong text =====-->
		</div>
		<!--/.container-->

	</div>
	<!--====== END NEWS AREA ======-->


	<%-- <div class="work-inner">
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
			</div> --%>

	<!--====== WORK AREA ======-->



	<div id="work" class="work-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-title" style="margin-bottom: 10px;">
						<h2>छायांकित विशलेषण</h2>
					</div>
				</div>
			</div>
			<!--/.row-->

			<div class="row">
				<ul class="work-list text-center">
					<!-- <li class="filter theme-color" data-filter="all">सर्व</li> -->
					<li class="filter  " onclick="showMoreAlbum();">फोटो</li>
					<li class="filter  " onclick="videos();">विडिओ</li>
					<!-- <li class="filter theme-color" data-filter=".grapich">ऑडिओ</li> -->
				</ul>
			</div>
			<!--/.row-->

			<div class="work-inner">
				<div class=" no-gutter">


					<c:forEach items="${Albums}" var="albm" varStatus="loop">
						<div class="photoalbum" style="display: none;">
							<div class="col-md-4 col-sm-4 mix webdesign "
								style="height: 300px;">
								<div class="single-work">
									<img src="${albm.albumImage}" alt=""
										style="width: 100%; height: 250px;" data-toggle="modal" data-target="#myModal2" >
									<div class="item-hover" data-toggle="modal" data-target="#myModal2">
										<div class="work-table">
											<div class="work-tablecell">
												<div class="hover-content" >
													<h4>${albm.albumName }</h4>
													<p>${albm.totalImg }photo</p>
													<%-- <a class=" "
														href="<%=request.getContextPath()%>/resources/light/assets/img/work/1.jpg">
														</a> --%>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					<center>
						<div class="col-md-12">
							<button id="btnmore" class="btn btn-default "
								onclick="showMoreAlbum();">Show More</button>
						</div>
					</center>
				</div>
			</div>
			<div style="clear: both;"></div>


			<%-- <div class="col-md-4 col-sm-6 mix webdesign">
							<div class="single-work">
								<img
									src="<%=request.getContextPath()%>/resources/light/assets/img/work/2.jpg"
									alt="" style="width: 100%, Hieght:50%";>
								<div class="item-hover">
									<div class="work-table">
										<div class="work-tablecell">
											<div class="hover-content">
												<h4>शिवजन्मोत्सव</h4>
												<p>अनुभवी लोकप्रतिनिधी असून राजकीय बुद्धिचातुर्य व
													कौशल्य यासाठी त्यांना विविध व्यासपिठांनी गौरविलेले आहे.</p>
												<a class=" theme-color"
													href="<%=request.getContextPath()%>/resources/light/assets/img/work/2.jpg"></a> 
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> --%>





			<div class="vid" style="display: none;">
				<div class="col-md-4 col-sm-4 mix development "
					style="height: 300px;">
					<div class="single-work">
						<img
							src="
									<%=request.getContextPath()%>/resources/light/assets/img/work/3.jpg"
							alt="" style="width: 100%; height: 250px;">
						<div class="item-hover">
							<div class="work-table">
								<div class="work-tablecell">
									<div class="hover-content">
										<h4>वृक्षारोपण</h4>
										<p>वृक्षारोपणवृक्षारोपणवृक्षारोपणवृक्षारोपणवृक्षारोपणवृक्षारोपण
											वृक्षारोपण वृक्षारोपण वृक्षारोपण</p>

									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>










			<%-- <div class="col-md-4 col-sm-6 mix development" style="height: 300px;">
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
											<a class=" theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/3.jpg"></a> 
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> --%>
			<%-- <div class="col-md-4 col-sm-6 mix development">
							<div class="single-work">
								<img
									src="<%=request.getContextPath()%>/resources/light/assets/img/work/4.jpg"
									alt="" style="width: 100%, Hieght:50%";>
								<div class="item-hover">
									<div class="work-table">
										<div class="work-tablecell">
											<div class="hover-content">
												<h4>वृक्षारोपण</h4>
												<p>वृक्षारोपण वृक्षारोपण वृक्षारोपण वृक्षारोपण
													वृक्षारोपण वृक्षारोपण वृक्षारोपण वृक्षारोपण वृक्षारोपण
													वृक्षारोपण वृक्षारोपण</p>
												<a class=" theme-color"
													href="<%=request.getContextPath()%>/resources/light/assets/img/work/4.jpg"></a>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> --%>

			<%-- <div class="col-md-4 col-sm-6 mix grapich">
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
											<a class="theme-color"
												href="<%=request.getContextPath()%>/resources/light/assets/img/work/5.jpg"></a> 
										</div>
									</div>
								</div>
							</div>
						</div>
					</div> --%>
			<%-- <div class="col-md-4 col-sm-6 mix grapich">
							<div class="single-work">
								<img
									src="<%=request.getContextPath()%>/resources/light/assets/img/work/6.jpg"
									alt="" style="width: 100%, Hieght:100%";>
								<div class="item-hover">
									<div class="work-table">
										<div class="work-tablecell">
											<div class="hover-content">
												<h4>समाजकल्याण</h4>
												<p>समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण
													समाजकल्याण समाजकल्याण समाजकल्याण समाजकल्याण .</p>
												<a class=" theme-color"
													href="<%=request.getContextPath()%>/resources/light/assets/img/work/6.jpg"></a> 
											</div>
										</div>
									</div>
								</div>
							</div>
						</div> --%>
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
					<div class="section-title" style="margin-bottom: 10px;">
						<h2 style="color: white;">आमचा संपर्क</h2>
					</div>
				</div>
			</div>
			<!--/.row-->
			<marquee>
				<h4 style="color: #f7f7f7;">पत्ता : &nbsp नारायणगाव, पुणे,
					महाराष्ट्र &nbsp &nbsp &nbsp &nbsp &nbsp संपर्क :&nbsp (+९१)
					७०८३८४१८२८</h4>

			</marquee>
			<div class="row wow fadeInUp" data-wow-delay="0.4s"
				style="alingn: center";>
				<div class="col-md-6 col-sm-12 col-xs-12">


					<div class="contact-form">
						<form id="contact-form" method="GET" action="/message">
							<div class="messages"></div>
							<div class="controls">
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<input id="newname" type="text" name="newname"
												class="form-control" placeholder="नाव*" required="required"
												data-error="Name is required.">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input id="email" type="email" name="email"
												class="form-control" placeholder="ई मेल*"
												required="required" data-error="Valid email is required.">
											<div class="help-block with-errors"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<textarea id="message" name="message" class="form-control"
												placeholder="संदेश*" rows="7" required="required"
												data-error="Please,leave us a message."></textarea>
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
								<div class="fb-page col-sm-12 col-xs-12"
									data-href="https://www.facebook.com/babubhaupate/"
									data-tabs="timeline" data-width="500" data-height="255"
									data-small-header="true" data-adapt-container-width="true"
									data-hide-cover="true" data-show-facepile="true">
									<blockquote cite="https://www.facebook.com/babubhaupate/"
										class="fb-xfbml-parse-ignore">
										<a href="https://www.facebook.com/babubhaupate/">Babu
											Pate-श्री.योगेश उर्फ बाबु पाटे</a>
									</blockquote>
								</div>
							</div>

							<div class="single-address theme-color ">
								<div class="fb-follow"
									data-href="https://www.facebook.com/Babu-Pate-%E0%A4%B6%E0%A5%8D%E0%A4%B0%E0%A5%80%E0%A4%AF%E0%A5%8B%E0%A4%97%E0%A5%87%E0%A4%B6-%E0%A4%89%E0%A4%B0%E0%A5%8D%E0%A4%AB-%E0%A4%AC%E0%A4%BE%E0%A4%AC%E0%A5%81-%E0%A4%AA%E0%A4%BE%E0%A4%9F%E0%A5%87-627037160708490/"
									data-width="500" data-height="1000" data-layout="standard"
									data-size="small" data-show-faces="false"></div>

							</div>
						</div>



						<!-- <div class="single-address theme-color">
							<i class="fa fa-rocket"></i>
							<h4>आमचा पत्ता :</h4>
                                <p>नारायणगाव, पुणे, महाराष्ट्र,</p>
							<i class="fa fa-phone"></i>
							<h4>आमचा फोन क्रमांक :</h4>
							<p>
								(+९१) १२३४५६७८९० <br> (+९१) ०९८७६५४३२१
							</p>
						</div>
						<div class="single-address theme-color">
                                <i class="fa fa-envelope"></i>
                                <h4>Email:</h4>
                                <p>Info@light.com <br> Info@light.com</p>
                            </div> -->

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
<script type="text/javascript">
	var albums = document.getElementsByClassName("photoalbum");
	var video = document.getElementsByClassName("vid");
	var max = 3;
	var demo = showMoreAlbum();
	function showMoreAlbum() {
		document.getElementById("btnmore").style.display = "";
		for (i = 0; i < max; i++) {

			if (albums.length > i) {
				albums[i].style.display = "";
			} else {
				document.getElementById("btnmore").style.display = "none";
				return false;
			}
		}
		for (i = 0; i < video.length; i++) {
			video[0].style.display = "none";
		}
		if (albums.length > max)
			max = max + 3;
	}
	function videos() {
		max = 3;
		for (i = 0; i < albums.length; i++) {
			document.getElementById("btnmore").style.display = "none";
			albums[i].style.display = "none";
		}
		for (i = 0; i < video.length; i++) {
			video[0].style.display = "";
		}
	}
</script>
</html>