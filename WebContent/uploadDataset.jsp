<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Crime &mdash; Rate Analysis</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    
    <link href="https://fonts.googleapis.com/css?family=Nunito:300,400,700" rel="stylesheet">
    <link rel="stylesheet" href="fonts/icomoon/style.css">

    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/jquery-ui.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">
    <link rel="stylesheet" href="css/owl.theme.default.min.css">

    <link rel="stylesheet" href="css/jquery.fancybox.min.css">

    <link rel="stylesheet" href="css/bootstrap-datepicker.css">

    <link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

    <link rel="stylesheet" href="css/aos.css">

    <link rel="stylesheet" href="css/style.css">
    
  </head>
  <body data-spy="scroll" data-target=".site-navbar-target" data-offset="300">
  

  <div id="overlayer"></div>
  <div class="loader">
    <div class="spinner-border text-primary" role="status">
      <span class="sr-only">Loading...</span>
    </div>
  </div>

  <div class="site-wrap"  id="home-section">

    <div class="site-mobile-menu site-navbar-target">
      <div class="site-mobile-menu-header">
        <div class="site-mobile-menu-close mt-3">
          <span class="icon-close2 js-menu-toggle"></span>
        </div>
      </div>
      <div class="site-mobile-menu-body"></div>
    </div>
   
   
    <header class="site-navbar py-4 js-sticky-header site-navbar-target" role="banner">

      <div class="container">
        <div class="row align-items-center">
          
          <div class="col-6 col-md-3 col-xl-4  d-block">
            <h1 class="mb-0 site-logo"><a href="index.html" class="text-black h2 mb-0">Crime Analysis<span class="text-primary">.</span> </a></h1>
          </div>

        
          <div class="col-12 col-md-9 col-xl-8 main-menu">
            <nav class="site-navigation position-relative text-right" role="navigation">

              <ul class="site-menu main-menu js-clone-nav mr-auto d-none d-lg-block ml-0 pl-0">
                <li><a href="adminHome.jsp" class="nav-link">Home</a></li>
                 <li><a href="userView.jsp" class="nav-link">View User</a></li>
                                   <li><a href="vc.jsp" class="nav-link">View compliance</a></li>
                <li class="has-children">
                  <a href="#about-section" class="nav-link">Dataset's</a>
                  <ul class="dropdown arrow-top">
                    <li><a href="uploadDataset.html" target="_blank" class="nav-link"><span class="text-primary">Upload Dataset</span></a></li>
                    <li><a href="viewData.jsp" class="nav-link">View Data</a></li>
              
                  </ul>
                </li>
                <li><a href="searchHistory.jsp" class="nav-link">Search History</a></li>
                <li><a href="resultGraph.jsp" class="nav-link">Result</a></li>
                <li><a href="index.html" class="nav-link" style=" margin-right: -96px; ">Logout</a></li>
              </ul>
            </nav>
          </div>
          <div class="col-6 col-md-9 d-inline-block d-lg-none ml-md-0" ><a href="#" class="site-menu-toggle js-menu-toggle text-black float-right"><span class="icon-menu h3"></span></a></div>

        </div>
      </div>
      
    </header>


    <div class="site-section" id="features-section">
      <div class="container">
        <div class="row mb-5 justify-content-center text-center"  data-aos="fade-up">
          <div class="col-7 text-center  mb-5">
            <h2 class="section-title">**************************</h2>
            <form action="tata.jsp">
            <p class="lead">Upload Datase't</p>
            
            <pre><div align="center">
            <label style="  font-size: 24px; ">Crime regarding:</label>
            <input type="text" name="re" required="required" style="background-color: aquamarine;border-radius: 7px;width: 334px;height: 30px;">
            <label style="  font-size: 24px; ">City:</label>
            <input type="text" name="city" required="required" style="background-color: aquamarine;border-radius: 7px;width: 334px;height: 30px;">
             <label style="  font-size: 24px; ">Fir:</label>
		<input type="file" name="file" required="required" style="background-color: aquamarine;border-radius: 7px;width: 334px;height: 30px;    margin-right: 28px;">
 <label style=" margin-left: 97px; font-size: 24px; ">Year:</label>
<input type="text" name="yr" required="required" style="background-color: aquamarine;border-radius: 7px;width: 334px;height: 30px;    margin-right: -91px;">


<input type="submit" value="Upload" style="height: 38px;width: 100px;border-radius: 43px;background-color: beige;">
</div>  </pre>
  </form>     
 
 
          </div>
        </div>
        
      </div>
    </div>
    
   

    <div class="footer py-5 text-center">
      <div class="container">
        <div class="row mb-5">
          <div class="col-12">
            <p class="mb-0">
              <a href="#" class="p-3"><span class="icon-facebook"></span></a>
              <a href="#" class="p-3"><span class="icon-twitter"></span></a>
              <a href="#" class="p-3"><span class="icon-instagram"></span></a>
              <a href="#" class="p-3"><span class="icon-linkedin"></span></a>
              <a href="#" class="p-3"><span class="icon-pinterest"></span></a>
            </p>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
       
          </div>
        </div>
      </div>
    </div>
  </div> <!-- .site-wrap -->

  <script src="js/jquery-3.3.1.min.js"></script>
  <script src="js/jquery-ui.js"></script>
  <script src="js/popper.min.js"></script>
  <script src="js/bootstrap.min.js"></script>
  <script src="js/owl.carousel.min.js"></script>
  <script src="js/jquery.countdown.min.js"></script>
  <script src="js/bootstrap-datepicker.min.js"></script>
  <script src="js/jquery.easing.1.3.js"></script>
  <script src="js/aos.js"></script>
  <script src="js/jquery.fancybox.min.js"></script>
  <script src="js/jquery.sticky.js"></script>

  
  <script src="js/main.js"></script>
  
  </body>
</html>