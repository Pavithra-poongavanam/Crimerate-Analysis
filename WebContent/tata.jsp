<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
</head>
<%@page import ="java.sql.*" %>
<%!
        public static String a,b,t;  

       %>
       
<body>
<%
String a=request.getParameter("re");
String b=request.getParameter("yr");
String c=request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
PreparedStatement ps=con.prepareStatement("select * from crime_report where crimes = '"+a+"' and state ='"+c+"' ");
ResultSet rs = ps.executeQuery();
if(rs.last())
{
	String s=rs.getString("id");
	String d=rs.getString("2001");

	
	System.out.print(d);
	System.out.print(s);
	int q=Integer.parseInt(d)+1;
	String  r=String.valueOf(q); 
		String u="update crime_report  set '"+b+"'='"+r+"' where id='"+s+"' ";
		System.out.print(u);
		PreparedStatement ps1=con.prepareStatement("update crime_report  set '"+b+"'='"+r+"' where id='"+s+"' ");
		ps1.executeUpdate();
	
}

	response.sendRedirect("uploadDataset.jsp");
%>
</body>
</html>