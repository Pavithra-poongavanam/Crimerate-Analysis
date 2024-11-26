package com.dao;

import java.sql.Connection;
import java.sql.DriverManager;
public class DBModel {
	
	public Connection getConnection() {
		Connection con = null;
		try
		{
			Class.forName("com.mysql.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost/crimerate","root","root");
			
		}catch(Exception ex) 
		{
			System.out.println(ex);
		}
		return con;
	}

}
