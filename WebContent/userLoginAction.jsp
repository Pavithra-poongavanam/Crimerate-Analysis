<%@page import="java.sql.*"%>


<%
String url = "jdbc:mysql://localhost/crimerate";
String userName = "root";
String password = "root";
String sql = "select * from userreg where email='"+request.getParameter("email")+"' and password='"+request.getParameter("password")+"' ";

Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,userName,password);
Statement st = con.createStatement();
ResultSet rs = st.executeQuery(sql);

if(rs.next())
{
	session.setAttribute("name",rs.getString("name"));
	session.setAttribute("email",rs.getString("email"));
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Welcome Mr. '"+rs.getString("name")+"'\")");
	out.println("</script>");
	RequestDispatcher rd=request.getRequestDispatcher("userHome.jsp");
	rd.include(request,response);
	System.out.println("Working");
}
else
{
	out.println("<script type=\"text/javascript\">"); 			
	out.println("alert(\"Invalid Mr. '"+rs.getString("name")+"'\")");
	out.println("</script>");
	RequestDispatcher rd=request.getRequestDispatcher("userLogin.html");
	rd.include(request,response);
	System.out.println("Working");
	
}

%>