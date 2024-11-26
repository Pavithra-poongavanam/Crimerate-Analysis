<!DOCTYPE html>
<html lang="en">
  <head>
    <title>Predictive&mdash; Analysis</title>
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
  
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<%
    String am_pm;
    java.text.DateFormat df = new java.text.SimpleDateFormat("dd MMM yyyy");
    Calendar cal = Calendar.getInstance();
    java.text.DateFormat tim = new java.text.SimpleDateFormat("hh:mm");
    Calendar cal2 = Calendar.getInstance();
    if(cal2.get(Calendar.AM_PM) == 0) 
        am_pm = "AM";
    else
        am_pm = "PM";
    String date=df.format(cal.getTime());
    String st =tim.format(cal2.getTime());
    String Time = st +" "+ am_pm;
    System.out.println("Date : "+date+"       Time :  "+Time);
%>

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
                <li><a href="userHome.jsp" class="nav-link">Home</a></li>
                 <li><a href="viewMyprofile.jsp" class="nav-link">My Profile</a></li>
                     <li><a href="comp.jsp" class="nav-link">Your Complaint</a></li>
  				<li><a href="userSearch.jsp" class="nav-link">Search Indian Cities</a></li>
                <li><a href="myHistory.jsp" class="nav-link">My History</a></li>
                <li><a href="viewCities.jsp" class="nav-link"style=" margin-right: -22px; ">Result</a></li>
                <li><a href="index.html" class="nav-link">Logout</a></li>
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
            <p class="lead">Search Availability Result</p>
            
            
       
 
<table border=1
style="
    background: lavender;
    text-align: center;
    width: 1165px;
    border: ridge;
    line-height: 2;
    color: navy;
    font-weight: bold;
    border-radius: 12px;
    margin-left: -270px;
">
<%
	String uname = (String)session.getAttribute("name");
	String email = (String)session.getAttribute("email");	
	String Keyword = request.getParameter("Keyword");
 	System.out.println("WORKING "+request.getParameter("Keyword"));
 	Class.forName("com.mysql.jdbc.Driver");
 	Connection con1=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
 	PreparedStatement q=con1.prepareStatement("insert into history(name,email,crime,date,time)values('"+uname+"','"+email+"','"+Keyword+"','"+date+"','"+Time+"') ");                                               
 	q.executeUpdate();
 	Class.forName("com.mysql.jdbc.Driver");
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
 	PreparedStatement query=con.prepareStatement("select * from crime_report where state like '"+'%'+Keyword+'%'+"' or crimes like '"+'%'+Keyword+'%'+"'");                                               
 	ResultSet rs=query.executeQuery();
%>
<tr style="background: sandybrown;"><td>ID</td><td>State</td><td>Crime</td><td>2010</td><td>2011</td><td>2012</td><td>2013</td><td>2014</td><td>2015</td><td>2016</td><td>2017</td><td>2018</td><td>2019</td><td>2020</td><td>2021</td></tr>
<%
	while(rs.next())
	{
		%>
			<tr>
				<td><%=rs.getString("id") %></td>
				<td><%=rs.getString("state") %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				<td><%=rs.getString(7) %></td>
				<td><%=rs.getString(8) %></td>
				<td><%=rs.getString(9) %></td>
				<td><%=rs.getString(10) %></td>
				<td><%=rs.getString(11) %></td>
				<td><%=rs.getString(12) %></td>
				<td><%=rs.getString(13) %></td>
				<td><%=rs.getString(14) %></td>
				<td><%=rs.getString(15) %></td>							
			</tr>
		<%
	 }
%>
</table>	
<br><br>
<center><a href="userHome.jsp">Click To Back</a></center>
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