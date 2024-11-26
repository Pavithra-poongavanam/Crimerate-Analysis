package drive;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import bean.UserReg;

/**
 * Servlet implementation class UserRegister
 */
@WebServlet("/UserRegister")
public class UserRegister extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UserRegister() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		Configuration cfg=new Configuration();
		cfg.configure("resource/hibernate.cfg.xml");
		SessionFactory sf=cfg.buildSessionFactory();
		Session s=sf.openSession();
		Transaction t = s.beginTransaction();
		
		bean.UserReg ur = new UserReg();
		ur.setId(0);
		ur.setName(request.getParameter("name"));
		ur.setEmail(request.getParameter("email"));
		ur.setPassword(request.getParameter("password"));
		ur.setMobile(request.getParameter("mobile"));
		ur.setAddress(request.getParameter("address"));
		
		s.save(ur);
		t.commit();
		s.close();
		System.out.println("Check DB");
		out.println("<script type=\"text/javascript\">"); 			
		out.println("alert(\"Sucessfully Register\")");
		out.println("</script>");
		RequestDispatcher rd=request.getRequestDispatcher("adminHome.jsp");
		rd.include(request,response);
		System.out.println("Working");
	}

}
