<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<script
	src="<%=request.getContextPath()%>/resources/light/assets/js/my.js"></script>
<title>बाबु पाटे</title>
</head>
<body>
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
								पाटे</span></a>
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
		</div>
	</header>
	<center>
		<div id="home" class="welcome-area"
			data-stellar-background-ratio="0.4"
			style="background-image: url(<%=request.getContextPath()%>/resources/light/assets/img/banner-01.jpg);">
			<div class="welcome-table">
				<div class="welcome-cell">
					<div class="container">
						<div class="row">
							<div class="col-md-12 col-sm-12 col-xs-12">
								<div class="home-arrow">
									<a href="#about" class="smoth-scroll theme-color"><i
										class="fa fa-angle-double-down"></i></a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</center>
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
	<c:forEach items="${albumPojos}" var="albumPojos" varStatus="loop">
		<div class="modal fade" id="myModal2${loop.count}" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
					<div class="modal-body" style="padding: 0px;">
						<div>
							<div id="myCarousel${loop.count}" class="carousel slide"
								data-ride="carousel">
								<div class="carousel-inner ">
									<c:forEach items="${albumPojos.photos}" var="albmphoto"
										varStatus="loopimage">
										<c:if test="${loopimage.count eq 1}">
											<div class="item active " align="center"
												style="background-color: #000000">
												<img src="${albmphoto.path}" style="height: 80%;"> <a
													href="${albmphoto.path}" download>Download</a>
											</div>
										</c:if>
										<c:if test="${loopimage.count gt 1}">
											<div class="item" align="center"
												style="background-color: #000000">
												<img src="${albmphoto.path}" style="height: 80%;"> <a
													href="${albmphoto.path}" download>Download</a>
											</div>
										</c:if>
									</c:forEach>
								</div>
								<a class="left carousel-control" href="#myCarousel${loop.count}"
									data-slide="prev"> <span
									class="glyphicon glyphicon-chevron-left"></span> <span
									class="sr-only">Previous</span>
								</a> <a class="right carousel-control"
									href="#myCarousel${loop.count}" data-slide="next"> <span
									class="glyphicon glyphicon-chevron-right"></span> <span
									class="sr-only">Next</span>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<c:forEach items="${News}" var="news" varStatus="loop">
		<div class="modal fade" id="myModalNews${loop.count}" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
					<div class="modal-header">
						<span class="close" data-dismiss="modal">&times;</span>
						<h4 class="modal-title">${news.title}</h4>
					</div>
					<div class="modal-body">
						<img src="${news.image}">
						<p>${news.description}</p>
					</div>
				</div>
			</div>
		</div>
	</c:forEach>
	<div id="services" class="services-area section-padding"
		class="welcome-area" data-stellar-background-ratio="0.4">
		<div class="container">
			<div class="row">
				<div class="col-md-3  wow fadeInUp">
					<div>
						<h2>
							<center>
								<font color="#ff9933">प्रेरणास्थान </font>
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
						<div class="carousel-inner">
							<c:forEach items="${Carousels}" var="carousels"
								varStatus="loopcara">
								<c:if test="${loopcara.count eq 1}">
									<div class="item active">
										<img src="${carousels.path}"
											style="height: 370px; width: auto">
									</div>
								</c:if>
								<c:if test="${loopcara.count gt 1}">
									<div class="item ">
										<img src="${carousels.path}"
											style="height: 370px; width: auto">
									</div>
								</c:if>
							</c:forEach>
						</div>
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
				<div class="col-md-3  margin-bottom  wow fadeInUp" id="wrapper1">
					<div>
						<h2>
							<center>
								<font color="#ff9933">बातम्या</font>
							</center>
						</h2>
						<ul id="vertical-ticker" style="overflow: hidden;">
							<c:forEach items="${News}" var="news" varStatus="loop">

								<li style="margin-top: 10px;"><a style="color: #5858FA"
									data-toggle="modal" data-target="#myModalNews${loop.count}">
										${news.title} </a></li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
			<div class="running-section-padding">
				<div class="fluid-container">
					<div class="row">
						<c:choose>
							<c:when test="${empty Notices }">
								<marquee>
									<h5 style="color: #f7f7f7;">श्री.योगेश उर्फ बाबु पाटे</h5>
								</marquee>
							</c:when>
							<c:otherwise>
								<c:forEach items="${Notices}" var="notices" varStatus="loop">
									<marquee>
										<h5 style="color: #f7f7f7;">${notices.noticetext }</h5>
									</marquee>
								</c:forEach>
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div id="work" class="work-area section-padding">
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-sm-12 col-xs-12">
					<div class="section-title" style="margin-bottom: 10px;">
						<h2>छायांकित विशलेषण</h2>
					</div>
				</div>
			</div>
			<div class="row">
				<ul class="work-list text-center">
					<li class="filter " onclick="showMoreAlbum();">फोटो</li>
					<li class="filter " onclick="showVideos();">विडिओ</li>
				</ul>
			</div>
			<div class="work-inner">
				<div class=" no-gutter">
					<c:forEach items="${albumPojos}" var="albumPojos" varStatus="loop">
						<div class="photoalbum" style="display: none;">
							<div class="col-md-4 col-sm-4 mix " style="height: 300px;">
								<div class="single-work">
									<img src="${albumPojos.albm.albumImage}" alt=""
										style="width: 100%; height: 250px;" data-toggle="modal"
										data-target="#myModal2">
									<div class="item-hover" data-toggle="modal"
										data-target="#myModal2${loop.count}">
										<div class="work-table">
											<div class="work-tablecell">
												<div class="hover-content">
													<h4>${albumPojos.albm.albumName }</h4>
													<p>${albumPojos.albm.totalImg }photo</p>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</c:forEach>
					<center>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<button id="btnmore" class="btn btn-default col-md-12 "
								onclick="showMoreAlbum();">Show More</button>
						</div>
					</center>
					<c:forEach items="${Videos}" var="vdo" varStatus="loop">
						<div class="vid" style="display: none;">

							<div class="col-md-4 col-sm-4 mix " style="height: 300px;">
								<iframe src="${vdo.path}" style="width: 100%; height: 250px;"
									allowfullscreen></iframe>
							</div>
						</div>
					</c:forEach>
					<center>
						<div class="col-md-12 col-sm-12 col-xs-12">
							<button id="btnmorevideo" class="btn btn-default col-md-12 "
								onclick="showVideos();">Show More</button>
						</div>
					</center>
				</div>
			</div>
		</div>
	</div>
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
												oninput="names();" ondrop="names();" onkeypress="names();"
												data-error="Name is required.">
											<div class="help-block with-errors"></div>
										</div>
									</div>
									<div class="col-md-12">
										<div class="form-group">
											<input id="mobnumber" type="text" name="mobnumber"
												class="form-control" placeholder="मोबाईल  क्रमांक *"
												maxlength="10" required="required">
											<div class="help-block with-errors"></div>
										</div>
									</div>
								</div>
								<div class="row">
									<div class="col-md-12">
										<div class="form-group">
											<textarea id="message" name="message" class="form-control"
												placeholder="--संदेश किंवा तक्रार--
												(तक्रार असल्यास आपला प्रभाग क्रमांक आधी टाका) "
												placeholder="संदेश*" rows="7" required="required"
												oninput="alter();" ondrop="alter();" onkeypress="alter();"></textarea>
											<div class="help-block with-errors"></div>
											<p></p>
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
						<div class="single-address theme-color">
							<div class="single-address theme-color">
								<div class="fb-page col-sm-12 col-xs-12"
									data-href="https://www.facebook.com/babubhaupate/"
									data-tabs="timeline" data-width="500" data-height="280"
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
								<div class="fb-follow"></div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
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
</body>
<script type="text/javascript">
	var albums = document.getElementsByClassName("photoalbum");
	var videos = document.getElementsByClassName("vid");
	var max = 3, videoshow = 3;
	var demo = showMoreAlbum();
	function showMoreAlbum() {
		videoshow = 3;
		document.getElementById("btnmorevideo").style.display = "none";
		for (i = 0; i < videos.length; i++) {
			videos[i].style.display = "none";
		}
		document.getElementById("btnmore").style.display = "";
		for (i = 0; i < max; i++) {
			if (albums.length > i) {
				albums[i].style.display = "";
			} else {
				document.getElementById("btnmore").style.display = "none";
			}
		}
		if (albums.length > max)
			max = max + 3;
	}
	function showVideos() {
		max = 3;
		document.getElementById("btnmore").style.display = "none";
		for (i = 0; i < albums.length; i++) {
			albums[i].style.display = "none";
		}
		document.getElementById("btnmorevideo").style.display = "";
		for (i = 0; i < videoshow; i++) {

			if (videos.length > i) {
				videos[i].style.display = "";
			} else {
				document.getElementById("btnmorevideo").style.display = "none";
			}
		}
		if (videos.length > videoshow)
			videoshow = videoshow + 3;
	}
</script>
</html>