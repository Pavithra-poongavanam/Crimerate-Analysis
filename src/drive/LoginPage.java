package drive;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class LoginPage
 */
@WebServlet("/LoginPage")
public class LoginPage extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginPage() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	String a,b,name;
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		a = request.getParameter("email");
		b = request.getParameter("password");
		PrintWriter out = response.getWriter();
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
			PreparedStatement query=con.prepareStatement("select * from userreg where email='"+a+"' and password='"+b+"'   ");
			ResultSet rs=query.executeQuery();
			
			if(rs.next())
			{
				String  email;
				name = rs.getString("name");
				email = rs.getString("email");
				request.getSession(true).setAttribute("name",name);
				request.getSession(true).setAttribute("email",email);
				System.out.println("Session Working");
				
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"Welcome .  '"+name+"'\")");

				out.println("</script>");
				RequestDispatcher rd=request.getRequestDispatcher("userHome.jsp");
				rd.include(request,response);
				System.out.println("ok");
				
				
				
				
				
			}
			else
			{
				out.println("<script type=\"text/javascript\">"); 			
				out.println("alert(\"Please Try again .\")");

				out.println("</script>");
				RequestDispatcher rd=request.getRequestDispatcher("userLogin.html");
				rd.include(request,response);
			}
			
		}
		catch (ClassNotFoundException e)
		{
			e.printStackTrace();
		} 
		catch (SQLException e) 
		{
			e.printStackTrace();
		}

	}

}
