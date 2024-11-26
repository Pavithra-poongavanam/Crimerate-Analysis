<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<%@page import="java.sql.*" %>
<%@page import="java.util.*"%>
<body>
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

String fname=request.getParameter("name");
String lname=request.getParameter("email");
String email=request.getParameter("password");
String city=request.getParameter("city");
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
PreparedStatement ps2=con.prepareStatement("insert into comp(name,num,cm,city,dt,tm)value('"+fname+"','"+lname+"','"+email+"','"+city+"','"+date+"','"+Time+"')");
ps2.executeUpdate();
response.sendRedirect("comp.jsp");
%>
</body>
</html>