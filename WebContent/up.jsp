<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Leave Management System</title>
</head>
<%@page import ="java.sql.*" %>
<body>
<!-- getting values from register page -->
<%


String sn=request.getParameter("sno1");

String d="done";
Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
PreparedStatement ps=con.prepareStatement("update comp  set st='"+d+"'  where  id='"+sn+"'");
ps.executeUpdate();

response.sendRedirect("vc.jsp");
%>
</body>
</html>