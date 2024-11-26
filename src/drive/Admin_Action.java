package drive;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Admin_Action
 */
@WebServlet("/Admin_Action")
public class Admin_Action extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Admin_Action() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		PrintWriter out=response.getWriter();
		bean.POJO po = new bean.POJO();
		po.setName(request.getParameter("name"));
		po.setPassword(request.getParameter("password"));
		
		if(po.getName().equalsIgnoreCase("admin")&&po.getPassword().equalsIgnoreCase("admin"))
		{
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Welcome Mr. '"+po.getName()+"'\")");
			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("adminHome.jsp");
			rd.include(request,response);
			System.out.println("Working");
		}
		else
		{
			out.println("<script type=\"text/javascript\">"); 			
			out.println("alert(\"Invalid '"+po.getName()+"'\")");
			out.println("</script>");
			RequestDispatcher rd=request.getRequestDispatcher("adminLogin.html");
			rd.include(request,response);
			System.out.println("ok");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
