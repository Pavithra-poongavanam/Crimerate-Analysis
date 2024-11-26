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

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import com.dao.DBModel;
import com.oreilly.servlet.MultipartRequest;

import bean.Dataset;

/**
 * Servlet implementation class CrimeData
 */
@WebServlet("/CrimeData")
public class CrimeData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CrimeData() {
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
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{PrintWriter out = response.getWriter();
	Configuration cfg=new Configuration();
	cfg.configure("resource/hibernate.cfg.xml");
	SessionFactory sf=cfg.buildSessionFactory();
	Session s=sf.openSession();
	Transaction t = s.beginTransaction();
			
	BufferedReader br =  null;
	try {
		 
	String path  = "D:\\BLUEARISE\\eclipse-workspace\\Crimerate_Analysis\\WebContent\\Dataset";
	MultipartRequest m=new MultipartRequest(request,path);
    File file=m.getFile("file");
    String csvFile = file.getAbsolutePath();

    
    	br = new BufferedReader(new FileReader(csvFile));
		int i = 0;
    	String line = "";
		while ((line = br.readLine()) != null) 
		{
			i++;
			// System.out.println("i value is "+line);
			if (i != 1)
			{
				Dataset da = new Dataset();
				String[] datas = line.split(",");
				da.setId(0);
				da.setCrimes(datas[0]);
				da.setState(datas[1]);
				da.setYear_2001(datas[2]);
				da.setYear_2002(datas[3]);
				da.setYear_2003(datas[4]);
				da.setYear_2004(datas[5]);
				da.setYear_2005(datas[6]);
				da.setYear_2006(datas[7]);
				da.setYear_2007(datas[8]);
				da.setYear_2008(datas[9]);
				da.setYear_2009(datas[10]);
				da.setYear_2010(datas[11]);
				da.setYear_2011(datas[12]);
				da.setYear_2012(datas[13]);
				
				s.save(da);
				t.commit();
				 
				System.out.println("Check DB");
			}
		}
		s.close();
	}
	catch (FileNotFoundException e) {
		e.printStackTrace();
	} catch (IOException e) {
		e.printStackTrace();
	}  
	
	out.println("<script>alert('Successfully Uploaded Dataset and Extracted Urls');</script>");
	RequestDispatcher rd = request.getRequestDispatcher("uploadDataset.html");
	rd.include(request, response);
}
}
