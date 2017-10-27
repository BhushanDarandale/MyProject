<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal">&times;</button>
				<h4 class="modal-title">New Album</h4>
			</div>
			<div class="modal-body">
				<form name="formAlbum" action="addAlbum" method="post"
					enctype="multipart/form-data" class="comment-form">
					<input type="text" name="name" id="name" style="padding: 10px"
						placeholder="Enter AlbumName">
						
					<input type="text" name="description" id="description" style="padding: 10px"
						placeholder="Enter Description">	
						
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
			
</body>
</html>