<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <!DOCTYPE html>
    <html lang="en">
<!-- Mirrored from programmerhasan.com/demos/light/light/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 30 Aug 2017 06:38:50 GMT -->
<head>
         <meta charset="utf-8">
     <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="à¤¶à¥à¤°à¥.à¤¯à¥à¤à¥à¤¶ à¤à¤°à¥à¤« à¤¬à¤¾à¤¬à¥ à¤ªà¤¾à¤à¥ ">
        <meta name="keywords" content="à¤¶à¥à¤°à¥.à¤¯à¥à¤à¥à¤¶ à¤à¤°à¥à¤« à¤¬à¤¾à¤¬à¥ à¤ªà¤¾à¤à¥ ">
        <meta name="author" content="à¤¶à¥à¤°à¥.à¤¯à¥à¤à¥à¤¶ à¤à¤°à¥à¤« à¤¬à¤¾à¤¬à¥ à¤ªà¤¾à¤à¥ ">
   <title>बाबु पाटे</title>
       
      <link rel="shortcut icon" href="<%=request.getContextPath() %>/resources/light/assets/img/favicon.png" type="image/png">

        <!--== bootstrap ==-->
        <link href="<%=request.getContextPath() %>/resources/light/assets/css/bootstrap.min.css" rel="stylesheet">
        
        <!--== font-awesome ==-->
        <link href="<%=request.getContextPath() %>/resources/light/assets/css/font-awesome.min.css" rel="stylesheet">
        
        <!--== magnific-popup ==-->
        <link href="<%=request.getContextPath() %>/resources/light/assets/css/magnific-popup.css" rel="stylesheet">
        
        <!--== owl carousel ==-->
        <link href="<%=request.getContextPath() %>/resources/light/assets/css/owl.carousel.css" rel="stylesheet">
        
        <!--== animate css ==-->
        <link href="<%=request.getContextPath() %>/resources/light/assets/css/animate.min.css" rel="stylesheet">

        <!--== style css ==-->
        <link href="<%=request.getContextPath() %>/resources/light/style.css" rel="stylesheet">
        
        <!--== responsive css ==-->
        <link href="<%=request.getContextPath() %>/resources/light/assets/css/responsive.css" rel="stylesheet">
        
        <!--== jQuery ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/jquery-2.1.4.min.js"></script>
    </head>
    <body>
        
        
        <!--==== DEMO COLOR PANEL ===
      <div class="demo_panel_box">
          <div class="color_panel_box">
             <div class="spiner_button slide_in_out"><i class="fa fa-cog fa-spin"></i></div>
              <span class="red_color"></span>
              <span class="blue_color"></span>
              <span class="yellow_color"></span>
              <span class="purple_color"></span>
              <span class="pink_color"></span>
              <span class="green_color"></span>
          </div>
      </div>
      ==== DEMO COLOR PANEL ===-->

       
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

        

        <!--======= WELCOME AREA =======-->
        <div id="home" class="welcome-area repeat" data-stellar-background-ratio="0.1" style="background-image: url(<%=request.getContextPath() %>/resources/light/assets/img/restricted.png);">
           <div class="welcome-table">
               <div class="welcome-cell">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-12 col-sm-12 col-xs-12">
                              <div class="welcome-text"><br/></br></br>
                                 <h1 class="theme-color">प्रतिबंधित प्रवेश</h1>
                                   
                                </div>
                                <center>
								 
								 
								
								 <a href="<%=request.getContextPath() %>"><h2 style="color:white;">मुखपृष्ठ </h2></a>
								</center>
                            </div>
                       </div><!--/.row-->
                    </div><!--/.container-->
                </div>
            </div>
        </div>
        <!--===== END WELCOME AREA =====-->

       
        <!--====== FOOTER AREA ======-->
        <footer class="footer">
            <div class="container">
                <div class="row wow zoomIn" data-wow-delay="0.4s">
                    <div class="col-md-12 text-center">
                        <p>&copy;2017 <strong>Jdsoftsolution</strong>. All Rights Reserved</p>
                    </div>
                </div>
            </div>
        </footer>
        <!--====== END FOOTER AREA ======-->
		
		
		<!-- Modal-->
		
		<script>
// Get the modal
var modal = document.getElementById('myModal');

// Get the image and insert it inside the modal - use its "alt" text as a caption
var img = document.getElementById('myImg');
var modalImg = document.getElementById("img01");
var modalImg2 = document.getElementById("img02");
var modalImg3 = document.getElementById("img03");
var captionText = document.getElementById("caption");
img.onclick = function(){
    modal.style.display = "block";
    modalImg.src = this.src;
	modalImg2.src = this.src;
	modalImg3.src = this.src;
    captionText.innerHTML = this.alt;
}

// Get the <span> element that closes the modal
var span = document.getElementsByClassName("close")[0];

// When the user clicks on <span> (x), close the modal
span.onclick = function() { 
    modal.style.display = "none";
}

</script>


        <!--== plugins js ==-->
         <script src="<%=request.getContextPath() %>/resources/light/assets/js/plugins.js"></script>
        
        <!--== typed js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/typed.js"></script>
        
        <!--== stellar js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/jquery.stellar.min.js"></script>
        
        <!--== counterup js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/jquery.counterup.min.js"></script>
        
        <!--== waypoints js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/jquery.waypoints.min.js"></script>
        
         <!--== wow js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/wow.min.js"></script>
        
         <!--== validator js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/validator.min.js"></script>
        
         <!--== mixitup js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/jquery.mixitup.js"></script>
        
         <!--== contact js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/contact.js"></script>
        
         <!--== main js ==-->
        <script src="<%=request.getContextPath() %>/resources/light/assets/js/main.js"></script>
    </body>
    
<!-- Mirrored from programmerhasan.com/demos/light/light/index.html by HTTrack Website Copier/3.x [XR&CO'2014], Wed, 30 Aug 2017 06:39:46 GMT -->
</html>
