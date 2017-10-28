<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- <title>बाबु पाटे</title> -->
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


	<!--====== WORK AREA ======-->
	<div id="work" class="work-area section-padding">
		<%-- <div class="container">

			<input type="button" value="ADD ALBUM"
				onclick="location.href='<%=request.getContextPath()%>/photoalbum'">

			<!--/.row-->
			<div class="work-inner">
				<div class="row no-gutter">
					<c:forEach items="${Albums}" var="albm" varStatus="loop">
						<div class="col-md-4 col-sm-6">
							<div
								class="single-service album-img theme-color text-center wow fadeInUp"
								style="height: 250px" data-wow-delay="0.6s"
								style="visibility: visible; animation-delay: 0.6s; animation-name: fadeInUp;">
								<div class="" style="height: 150px">
									<img style="height: 125px; width: 125px"
										src="${albm.albumImage }" alt="">
								</div>
								<h3>${albm.albumName }</h3>

								<img style="height: 40px; width: 40px"
									src="<%=request.getContextPath()%>/resources/light/assets/img/service/plus.png"
									alt="">
							</div>
						</div>
					</c:forEach>
				</div>
			</div>
		</div> --%>








		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class=" paddingBottom">
						<span class="heading-t3"></span>
						<h2 style="margin: 10px;">Upload Photo Albums</h2>
						<div align="right">
							<button style="margin-bottom: 20px;" type="button"
								class="btn btn-default" data-toggle="modal"
								data-target="#addAlbum">Add Album</button>
						</div>
						<table class="table">
							<thead>
								<tr>
									<th>#</th>
									<th>Album Name</th>
									<th>Release Date</th>
									<th>Photos</th>
									<th>Status</th>
									<th>Update Album</th>
									<th>Add Photo</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Albums}" var="albm" varStatus="loop">
									<tr>
										<td>${loop.count}</td>
										<td>${albm.albumName }</td>
										<td>${albm.time }</td>
										<td>${albm.totalImg }&nbsp;songs</td>
										<td>${albm.status }</td>
										<td><button type="button" class="btn btn-default"
												data-toggle="modal"
												data-target="#myModalAlbumUpdate${albm.id}">Update
												Album</button></td>
										<td><button type="button" class="btn btn-default"
												data-toggle="modal" data-target="#myModal${loop.count  }">Add
												Photo</button></td>
									</tr>
								</c:forEach>
								
								
								
								
								
								
								
								
							</tbody>
						</table>
						
						<c:forEach items="${Albums }" var="albm" varStatus="loop">
						<!-- Modal -->
						<div class="modal fade" id="myModal${loop.count }" role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">${albm.albumName }</h4>
									</div>
									<div class="modal-body">
										<form name="form${loop.count }"
											action="uploadPhoto?albumid=${albm.id }" method="post"
											enctype="multipart/form-data"  class="comment-form">
											<div
												style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
												<input type="file" name="filename" id="name"
													multiple="multiple" accept="image/*" style="padding: 10px" accept="audio/*">
											</div>
											<p class="form-submit">
												<input name="submit" type="submit" id="submit"
													value="Submit">
											</p>
										</form>
										<!-- end contactForm -->
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>

						<div class="modal fade" id="myModalAlbumUpdate${loop.count }"
							role="dialog">
							<div class="modal-dialog">

								<!-- Modal content-->
								<div class="modal-content">
									<div class="modal-header">
										<button type="button" class="close" data-dismiss="modal">&times;</button>
										<h4 class="modal-title">${albm.albumName }</h4>
									</div>
									<div class="modal-body">
										<form name="formUpdate${loop.count }"
											action="updateAlbum?albumid=${albm.id }" method="post"
											enctype="multipart/form-data" class="comment-form">
											<input type="text" name="name" id="name"
												value="${albm.albumName }" style="padding: 10px"
												placeholder="Enter AlbumName">
											<div
												style="width: 100%; height: 45px; margin-bottom: 10px; border: 1px solid #ff0000; vertical-align: middle;">
												<input type="file" name="filename" id="name"
													style="padding: 10px" accept="image/*">
											</div>
											<div>
											<select>
											<option>Active</option>
											<option>DeActive</option>
											</select>
											
											</div>
											<br>
											
											
											<p class="form-submit">
												<input name="submit" type="submit" id="submit"
													value="Submit">
											</p>
										</form>
										<!-- end contactForm -->
									</div>
									<div class="modal-footer">
										<button type="button" class="btn btn-default"
											data-dismiss="modal">Close</button>
									</div>
								</div>

							</div>
						</div>
					</c:forEach>
						
					</div>

				</div>
				<!-- end col-sm-12 -->
			</div>
		</div>



<div class="modal fade" id="addAlbum" role="dialog">
	<div class="modal-dialog">

		<!-- Modal content-->
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">New Album</h4>
			</div>
			<div class="modal-body">
				<form name="formAlbum" action="addAlbum" method="post"
					enctype="multipart/form-data" class="comment-form">
					<input type="text" name="name" id="name" style="padding: 10px"
						placeholder="Enter AlbumName">
					<div
						style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
						<input type="file" name="filename" id="name" multiple="multiple"
							style="padding: 10px" accept="image/*">
					</div>
					<p class="form-submit">
						<input name="submit" type="submit" id="submit" value="Submit">
					</p>
				</form>
				<!-- end contactForm -->
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
			</div>
		</div>

	</div>
</div>









	</div>
</body>
</html>
