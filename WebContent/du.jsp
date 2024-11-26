<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@page import="java.sql.*" %>
<%!
        public static String a,b,t;  

       %>
      <%-- --%> 
</head>
<body>
<%
a = request.getParameter("re"); 
b = request.getParameter("yr");
t = request.getParameter("city");


	
	Class.forName("com.mysql.jdbc.Driver");
 	Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
 	PreparedStatement query=con.prepareStatement("select * from crime_report where crimes='"+a+"' and state='"+t+"' ");                                               
 	ResultSet rs=query.executeQuery();

	while(rs.next())
	{
		String  c=rs.getString(b);
		
		String	s=rs.getString("id");
		
		out.print(c);
		out.print(s);
	}
	
	/* int d=Integer.parseInt(c)+1;
   String  r=String.valueOf(d); 
	String u="update crime_report  set '"+b+"'='"+r+"' where sno='"+s+"' ";
	System.out.print(u);
	PreparedStatement ps1=con.prepareStatement("update crime_report  set '"+b+"'='"+r+"' where sno='"+s+"' ");
	ps1.executeUpdate();
	response.sendRedirect("uploadDataset.jsp"); */


%>
</body>
</html>