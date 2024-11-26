package com.resource;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.dao.DBModel;
import com.oreilly.servlet.MultipartRequest;

/**
 * Servlet implementation class Load_data
 */
@WebServlet("/Load_data")
public class Load_data extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Load_data() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		BufferedReader br =  null;
		try {
		DBModel dBmodel = new DBModel();
		Connection con = dBmodel.getConnection();
		String path  = "eclipse-workspace\\Crimerate_Analysis\\WebContent\\Dataset";
		MultipartRequest m=new MultipartRequest(request,path);
        File file=m.getFile("file");
        String csvFile = file.getAbsolutePath();
        PreparedStatement delete = con.prepareStatement("truncate table dataset");
        delete.executeUpdate();
        
        	br = new BufferedReader(new FileReader(csvFile));
			int i = 0;
        	String line = "";
			while ((line = br.readLine()) != null) {
				i++;
				// System.out.println("i value is "+line);
				if (i != 1) {
					String[] datas = line.split(",");
					String sql = "insert into dataset values('"+datas[0]+"','"+datas[1]+"','"+datas[2]+"','"+datas[3]+"','"+datas[4]+"','"+datas[5]+"','"+datas[6]+"','"+datas[7]+"','"+datas[8]+"','"+datas[9]+"',"+
							"'"+datas[10]+"','"+datas[11]+"','"+datas[12]+"','"+datas[13]+"')";
					System.out.println(sql);
					PreparedStatement query = con.prepareStatement(sql);
					query.executeUpdate();
				}
				System.out.println("Row: "+i);
			}
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			if (br != null) {
				try {
					br.close();
				} catch (IOException e) {
					e.printStackTrace();
				}
			}
		}
		PrintWriter out = response.getWriter();
		out.println("<script>alert('Successfully Uploaded Dataset and Extracted Urls');</script>");
		RequestDispatcher rd = request.getRequestDispatcher("uploadDataset.html");
		rd.include(request, response);

	}

}
