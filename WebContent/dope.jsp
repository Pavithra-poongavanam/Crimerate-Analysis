<!DOCTYPE HTML>
<html>
<head>
<%!
        public static int b,c,d,e,f,g,i,j,k,l,m,q,p;  

       %>
<%!
        public static int bb,cc,dd,ee,ff,gg,hh,ii,jj,kk,ll,mm,qq,pp;  

       %>
<%!
        public static int[] a;  

       %>
<%!
        public static String h;  

       %>

<%@page import="java.sql.*"%>
<%
String name="india";
String Keyword = request.getParameter("Keyword"); 
String gett = request.getParameter("sett");%>
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
			
		
<% 
	Class.forName("com.mysql.jdbc.Driver");
	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
	PreparedStatement query=con.prepareStatement("select * from crime_report where crimes like '"+'%'+Keyword+'%'+"'");                                               
	ResultSet rs=query.executeQuery();
	b=0;
while(rs.next())
{
	h=rs.getString("state");
	b++;
}

	System.out .print(b);
	System.out .println(gett);
	Class.forName("com.mysql.jdbc.Driver");
	Connection ton=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
	PreparedStatement query1=ton.prepareStatement("select * from crime_report where crimes like '"+'%'+Keyword+'%'+"'");                                               
	ResultSet rs1=query1.executeQuery();
	 q=0;
	 g=0;
	j=0;
	while(rs1.next())
	{
		
		
		 a=new int[b];
		a[g]=rs1.getInt(gett);
		 System.out.print(a[g]); 
		 q=a[g]+q;
		 
		
%>
	
	
			{y: <%=a[g]%>, label: "<%=h%>" },
			
			
			<%g++; }%>
			{y: <%=q%>, label: "<%=name%>"}
			
		]
	}]
});
chart.render();

}
</script>

</head>
</head>
<body>
	<div id="chartContainer"
		style="height: 370px; max-width: 920px; margin: 0px auto;"></div>
	<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>
</body>
</html>