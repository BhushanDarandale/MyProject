<%-- <%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<meta charset="UTF-8"> --%>
	
	
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html lang="en">
<head>
<!-- <title>बाबु पाटे</title> -->
<!-- <meta charset="utf-8">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/resources/light/assets/js/jquery.dataTables.min.css" />


<%-- <script
	src="<%=request.getContextPath()%>/resources/light/assets/js/jquery-1.12.4.js"></script> --%>

<script
	src="<%=request.getContextPath()%>/resources/light/assets/js/js.jquery.dataTables.min.js"></script>
<script>
	$(document).ready(function() {

		var table = $('#currentRowObject').DataTable();

	});
</script>


<script>
	$(document).ready(function() {

		var table = $('#currentRowObject1').DataTable();

	});
	
	
	$(document).ready(function() {

		var table = $('#currentRowObjectnotice').DataTable();

	});
	
</script>
<script>
	$(document).ready(function() {
		var table = $('#currentRowObjectnews').DataTable();
	});
	
	$(document).ready(function() {
		   $("#name1").change(function () 
		   { 
		     var iSize = ($("#name1")[0].files[0].size / 1024); 
		       
		       if (iSize >20480) 
		       {
		       alert("Please upload flile less than 20 Mb")
		       document.getElementById("name1").value = "";
		       return false;
		       }
		     else{
		     
		     if (iSize / 1024 > 1) 
		     { 
		        if (((iSize / 1024) / 1024) > 1) 
		        { 
		            iSize = (Math.round(((iSize / 1024) / 1024) * 100) / 100);
		            $("#lblSize").html( iSize + "GB"); 
		        }
		        else
		        { 
		            iSize = (Math.round((iSize / 1024) * 100) / 100)
		            $("#lblSize").html( iSize + "MB"); 
		        } 
		     } 
		     else 
		     {
		        iSize = (Math.round(iSize * 100) / 100)
		        $("#lblSize").html( iSize  + "kb"); 
		     }  
		     
		     return true;
		       }
		  }); 
		});
	
	
</script>





</head>


<body>
	



	<!--====== WORK AREA ======-->
	<div id="work" class="work-area ">

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class=" paddingBottom">
						<span class="heading-t3"></span>
						<h4 style="margin: 10px;">Upload Photo Albums</h4>
						<div align="right" style="padding-bottom: 5px">
							<button type="button" style="padding: 0" class="btn"
								data-toggle="modal" data-target="#addAlbum">ADD Album</button>
							<br>
						</div>
						<table class="table" id="currentRowObject" data-page-length='3'>
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
										<td>${albm.totalImg }&nbsp;Photo</td>
										<td>${albm.status }</td>
										<td><button type="button" class="btn " style="padding: 0"
												data-toggle="modal"
												data-target="#myModalAlbumUpdate${albm.id}">Update
											</button></td>
										<td><button type="button" class="btn " style="padding: 0"
												data-toggle="modal" data-target="#myModal${loop.count  }">Add
											</button></td>
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
												enctype="multipart/form-data" class="comment-form">


												<div
													style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
													<input type="file" name="filename" id="name"
														required="required" multiple="multiple" accept="image/*"
														style="padding: 10px" accept="audio/*">
												</div>
												<p class="form-submit">
													<input name="submit" class="btn btn-default" type="submit"
														id="submit" value="Submit">
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
													value="${albm.albumName }" style="padding: 10px" required="required" maxlength="100"
													placeholder="Enter AlbumName">
												<div
													style="width: 100%; height: 45px; margin-top: 10px; margin-bottom: 10px; border: 1px solid #ff0000; vertical-align: middle;">
													<input type="file" name="filename" id="name"
														style="padding: 10px" accept="image/*">
												</div>
												<div>
													<select id="albstatus" name="albstatus">
														<option>Active</option>
														<option>Deactive</option>
													</select>
												</div>
												<br>
												<p class="form-submit">
													<input name="submit" class="btn btn-default" type="submit"
														id="submit" class="btn btn-default" value="Submit">
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
								required="required" placeholder="Enter AlbumName" maxlength="30">
							<div
								style="width: 100%; height: 45px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
								<input type="file" name="filename" id="name" required="required"
									style="padding: 10px" accept="image/*">
							</div>
							<p class="form-submit">
								<input name="submit" class="btn btn-default" type="submit"
									id="submit" value="Submit">
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





	<!-- video upload -->

	<div id="work" class="work-area ">

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class=" paddingBottom">
						<span class="heading-t3"></span>
						<h4 style="margin: 10px;">Upload Videos</h4>
						<div align="right" style="padding-bottom: 5px">
							<button type="button" style="padding: 0" class="btn "
								data-toggle="modal" data-target="#addVideo">Add Video</button>
						</div>
						<table class="table" id="currentRowObject1" data-page-length='3'>
							<thead>
								<tr>
									<th>#</th>
									<th>Video Name</th>
									<th>Release Date</th>
									<!-- <th>Status</th> -->
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Videos}" var="video" varStatus="loop">
									<tr>
										<td>${loop.count}</td>
										<td>${video.name }</td>
										<td>${video.time }</td>
										<%-- <td>${albm.status }</td> --%>
										<%-- <td><button type="button" class="btn btn-default"
												data-toggle="modal"
												data-target="#myModalAlbumUpdate${albm.id}">Update
												Album</button></td> --%>
										<td><button type="button" class="btn " style="padding: 0"
												data-toggle="modal" data-target="#myModal1${loop.count}">Delete</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<c:forEach items="${Videos}" var="video" varStatus="loop">
							<!-- Modal -->
							<div class="modal fade" id="myModal1${loop.count}" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">${video.name }</h4>
										</div>
										<div class="modal-body">
											Are you sure?

											<form name="form${loop.count }"
												action="deleteVideo?videoid=${video.id}" method="post"
												enctype="multipart/form-data" class="comment-form">


												<div class="modal-footer">

													<input name="submit" type="submit" id="submit" value="Yes"
														class="btn">

													<button type="button" data-dismiss="modal" class="btn">Cancel</button>
												</div>


											</form>
											<!-- end contactForm -->
										</div>

									</div>

								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="addVideo" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">New Video</h4>
					</div>
					<div class="modal-body">
						<form name="formAlbum" action="addVideo" method="post"
							enctype="multipart/form-data" class="comment-form">
							<input type="text" name="videoname" id="videoname" maxlength="30"
								style="padding: 10px" placeholder="Enter Video Name">


							<div
								style="width: 100%; height: 45px; margin-top: 10px; margin-bottom: 40px; border: 1px solid #ff0000; vertical-align: middle;">
								<input type="file" name="filename1" id="name1"
									required="required" style="padding: 10px" accept="video/*">

								File Size is : <b><label id="lblSize" /></b>
							</div>
							<p class="form-submit">
								<input name="submit" class="btn btn-default" type="submit"
									id="submit" value="Submit">
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








	<!-- News Upload -->


	<div id="work" class="work-area ">

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class=" paddingBottom">
						<span class="heading-t3"></span>
						<h4 style="margin: 10px;">Upload News</h4>
						<div align="right" style="padding-bottom: 5px">
							<button type="button" style="padding: 0" class="btn"
								data-toggle="modal" data-target="#addNews">Add News</button>
						</div>
						<table class="table" id="currentRowObjectnews"
							data-page-length='3'>
							<thead>
								<tr>
									<th>#</th>
									<th>News Title</th>
									<th>Release Date</th>
									<!-- <th>Status</th> -->
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${News}" var="news" varStatus="loop">
									<tr>
										<td>${loop.count}</td>
										<td>${news.title }</td>
										<td>${news.time }</td>
										<%-- <td>${news.status }</td> --%>
										<%-- <td><button type="button" class="btn btn-default"
												data-toggle="modal"
												data-target="#myModalAlbumUpdate${albm.id}">Update
												Album</button></td> --%>
										<td><button type="button" class="btn" style="padding: 0"
												data-toggle="modal" data-target="#myModal2${loop.count}">Delete</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<c:forEach items="${News}" var="news" varStatus="loop">
							<!-- Modal -->
							<div class="modal fade" id="myModal2${loop.count}" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">${news.title }</h4>
										</div>
										<div class="modal-body">
											Are you sure?

											<form name="form${loop.count }"
												action="deleteNews?newsid=${news.id}" method="post"
												enctype="multipart/form-data" class="comment-form">


												<div class="modal-footer">

													<input name="submit" type="submit" id="submit" value="Yes"
														class="btn">

													<button type="button" data-dismiss="modal" class="btn">Cancel</button>
												</div>


											</form>
											<!-- end contactForm -->
										</div>

									</div>

								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="addNews" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">New News</h4>
					</div>
					<div class="modal-body">
						<form name="formAlbum" action="addNews" method="post"
							enctype="multipart/form-data" class="comment-form">
							<div style="margin-bottom: 10px; margin-top: 10px">
								<input type="text" name="newsname" id="newsname" maxlength="50"
									style="padding: 10px; width: 100%"
									placeholder="Enter News Title">

							</div>
							<textarea type="text" name="newsdesc" id="newsdesc"
								style="padding: 10px; width: 100%" maxlength="15000"
								placeholder="Enter Description"></textarea>
							<br>
							<div
								style="width: 100%; height: 45px; margin-top: 10px; margin-bottom: 10px; border: 1px solid #ff0000; vertical-align: middle;">
								<input type="file" name="filenamenews" id="filenamenews"
									style="padding: 10px" accept="image/*">
							</div>
							<p class="form-submit">
								<input name="submit" class="btn btn-default" type="submit"
									id="submit" value="Submit">
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




	<!-- Running notice -->



	<div id="work" class="work-area ">

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class=" paddingBottom">
						<span class="heading-t3"></span>
						<h4 style="margin: 10px;">Upload Notice</h4>
						<div align="right" style="padding-bottom: 5px">
							<button type="button" style="padding: 0" class="btn"
								data-toggle="modal" data-target="#addNotice">Add Notice</button>
						</div>
						<table class="table" id="currentRowObjectnotice"
							data-page-length='3'>
							<thead>
								<tr>
									<th>#</th>
									<th>Notice Title</th>
									<th>Release Date</th>
									<!-- <th>Status</th> -->
									<th>Delete</th>
								</tr>
							</thead>
							<tbody>
								<c:forEach items="${Notices}" var="notices" varStatus="loop">
									<tr>
										<td>${loop.count}</td>
										<td>${notices.noticetext }</td>
										<td>${notices.date }</td>
										<%-- <td>${news.status }</td> --%>
										<%-- <td><button type="button" class="btn btn-default"
												data-toggle="modal"
												data-target="#myModalAlbumUpdate${albm.id}">Update
												Album</button></td> --%>
										<td><button type="button" class="btn" style="padding: 0"
												data-toggle="modal" data-target="#myModal3${loop.count}">Delete</button></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>

						<c:forEach items="${Notices}" var="notices" varStatus="loop">
							<!-- Modal -->
							<div class="modal fade" id="myModal3${loop.count}" role="dialog">
								<div class="modal-dialog">

									<!-- Modal content-->
									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">${notices.noticetext }</h4>
										</div>
										<div class="modal-body">
											Are you sure?

											<form name="form${loop.count }"
												action="deleteNotice?noticeid=${notices.id}" method="post"
												enctype="multipart/form-data" class="comment-form">


												<div class="modal-footer">

													<input name="submit" type="submit" id="submit" value="Yes"
														class="btn">

													<button type="button" data-dismiss="modal" class="btn">Cancel</button>
												</div>


											</form>
											<!-- end contactForm -->
										</div>

									</div>

								</div>
							</div>
						</c:forEach>
					</div>
				</div>
			</div>
		</div>

		<div class="modal fade" id="addNotice" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">New Notice</h4>
					</div>
					<div class="modal-body">
						<form name="formAlbum" action="addNotice" method="post"
							enctype="multipart/form-data" class="comment-form">
							<div style="margin-bottom: 10px; margin-top: 10px">
								<input type="text" name="noticename" id="noticename"
									style="padding: 10px; width: 100%" maxlength="500"
									placeholder="Enter Notice Title">

							</div>


							<p class="form-submit">
								<input name="submit" class="btn btn-default" type="submit"
									id="submit" value="Submit">
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





	<!-- personal profile -->



	<div id="work" class="work-area ">

		<div class="container">
			<div class="row">
				<div class="col-sm-12">
					<div class=" paddingBottom">
						<span class="heading-t3"></span>
						<h4 style="margin: 10px;">Upload Personal</h4>

						<div align="right" style="padding-bottom: 5px">


							<c:choose>
								<c:when test="${empty Personal }">

									<button type="button" style="padding: 0" class="btn"
										data-toggle="modal" data-target="#addPersonal">Add
										Personal</button>
 
								</c:when>

								<c:otherwise>
									<c:forEach items="${Personal}" var="notices" varStatus="loop">
										<!-- <button type="button" style="padding: 0"
								class="bt n" data-toggle="modal"
								data-target="#addNotice">Update Personal</button> -->


										<button type="button" style="padding: 0" class="btn"
											data-toggle="modal" data-target="#myModal4${loop.count}">Update
											Personal</button>
											</c:forEach>
								</c:otherwise>
							</c:choose>
						</div>

						<c:forEach items="${Personal}" var="personal" varStatus="loop">
							<!-- Modal -->
							<div class="modal fade" id="myModal4${loop.count}" role="dialog">
								<div class="modal-dialog">

									<div class="modal-content">
										<div class="modal-header">
											<button type="button" class="close" data-dismiss="modal">&times;</button>
											<h4 class="modal-title">${personal.name }</h4>
										</div>
										<div class="modal-body">
											<form name="formUpdate${loop.count }"
												action="updatePersonal?id=${personal.id }" method="post"
												enctype="multipart/form-data" class="comment-form">
												<input type="text" name="header" id="header" required="required"
													value="${personal.header }" style="padding: 10px"
													placeholder="Enter Header">

												<div
													style="width: 100%; height: 45px; margin-top: 30px; margin-bottom: 10px;  vertical-align: middle;">
													<textarea  name="para1" id="para1" 
													 style="padding: 10px; width: 100%" required="required"><c:out value="${personal.para1 }" /></textarea>
												
												</div>


												<div
													style="width: 100%; height: 45px; margin-top: 30px; margin-bottom: 10px;  vertical-align: middle;">
													<textarea  name="para2" id="para2"
														 style="padding: 10px; width: 100%" required="required"><c:out value="${personal.para2 }" /></textarea>
												
												</div>

												<div
													style="width: 100%; height: 45px; margin-top: 30px; margin-bottom: 10px; border: 1px solid #ff0000; vertical-align: middle;">
													<input type="file" name="filename" id="name"
														style="padding: 10px" accept="image/*">
												</div>

												<br>
												<p class="form-submit">
													<input name="submit" class="btn btn-default" type="submit"
														id="submit" class="btn btn-default" value="Submit">
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
			</div>
		</div>

		<div class="modal fade" id="addPersonal" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">Personal Section</h4>
					</div>
					<div class="modal-body">
						<form name="formAlbum" action="addPersonal" method="post"
							enctype="multipart/form-data" class="comment-form">
							<div style="margin-bottom: 10px; margin-top: 10px">
								<input type="text" name="pername" id="pername"
									style="padding: 10px; width: 100%" placeholder="Enter name ">

							</div>


							<input type="text" name="header" id="header"
								style="padding: 10px; width: 100%" placeholder="Enter Header">

							<div
								style="width: 100%; height: 45px; margin-top: 10px; margin-bottom: 10px;  vertical-align: middle;">
								<textarea  name="para1" id="para1" style="padding: 10px; width: 100%" placeholder="Enter paragraph one"
									></textarea>
												
							</div>


							<div
								style="width: 100%; height: 45px; margin-top: 30px; margin-bottom: 10px;vertical-align: middle;">
								<textarea  name="para2" id="para2" style="padding: 10px; width: 100%" placeholder="Enter paragraph two"
								 ></textarea>
												
							</div>

							<div
								style="width: 100%; height: 45px; margin-top: 30px; margin-bottom: 10px; border: 1px solid #ff0000; vertical-align: middle;">
								<input type="file" name="filename" id="name"
									style="padding: 10px" accept="image/*">
							</div>
 
							<p class="form-submit">
								<input name="submit" class="btn btn-default" type="submit"
									id="submit" value="Submit">
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
