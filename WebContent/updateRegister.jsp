<%@page import="java.sql.*" %>
<%
String id = request.getParameter("id");
String name = request.getParameter("name");
String email =request.getParameter("email");
String password=request.getParameter("password");
String mobile=request.getParameter("mobile");
String address=request.getParameter("address");


Class.forName("com.mysql.jdbc.Driver");
Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
Statement st = con.createStatement();
st.executeUpdate("update userreg set name='"+name+"',email='"+email+"',password='"+password+"',mobile='"+mobile+"',address='"+address+"' where id='"+id+"' ");

out.println("<script type=\"text/javascript\">"); 			
out.println("alert(\"Update Sucessfully\")");
out.println("</script>");
RequestDispatcher rd=request.getRequestDispatcher("userHome.jsp");
rd.include(request,response);
System.out.println("Working");



%>