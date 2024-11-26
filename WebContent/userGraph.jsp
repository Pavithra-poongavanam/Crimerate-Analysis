<!DOCTYPE HTML>
<html>
<head>
<%!
        public static int a,b,c,d,e,f,g,h,i,j,k,l,m;  

       %>
      <%!
      public static String name;
       %> 
       
<%@page import="java.sql.*" %>
<%

String Keyword = request.getParameter("Keyword"); 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
	PreparedStatement query=con.prepareStatement("select * from crime_report where state like '"+'%'+Keyword+'%'+"'");                                               
	ResultSet rs=query.executeQuery();
	while(rs.next())
	{
		String name=rs.getString(3);
		
		 a=rs.getInt(4) ;
		 b=rs.getInt(5) ;
		 c=rs.getInt(6) ;
		 d=rs.getInt(7);
     	 e=rs.getInt(8);
		 f=rs.getInt(9) ;
		 g=rs.getInt(10) ;
		 h=rs.getInt(11) ;
		 i=rs.getInt(12) ;
		 j=rs.getInt(13);
		 k=rs.getInt(14) ;
		 l=rs.getInt(15) ;
		 m=a+b+c+d+e+f+g+h+i+j+k+l;
	
%>
<script>

window.onload = function() {

var chart = new CanvasJS.Chart("chartContainer", {
	animationEnabled: true,
	title: {
		text: "Crimerate for Indian Cities : State- <%=Keyword%>"
	},
	data: [{
		type: "pie",
		startAngle: 480,
		yValueFormatString: "##0.00\"%\"",
		indexLabel: "{label} {y}",
		dataPoints: [
			{y: <%=m%>, label: "<%=name%>"},
			{y:<%=a%>, label:  "2010"},
			{y: <%=b%>, label: "2011"},
			{y: <%=c%>, label: "2012"},
			{y: <%=d%>, label: "2013"},
			{y: <%=e%>, label: "2014"},
			{y: <%=f%>, label: "2015"},
			{y: <%=g%>, label: "2016"},
			{y: <%=h%>, label: "2017"},
			{y: <%=i%>, label: "2018"},
			{y: <%=j%>, label: "2019"},
			{y: <%=k%>, label: "2020"},
			{y: <%=l%>, label: "2021"}
		]
	}]
});
chart.render();

}
</script>
<% }%>
</head>
<body>
<div id="chartContainer" style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>