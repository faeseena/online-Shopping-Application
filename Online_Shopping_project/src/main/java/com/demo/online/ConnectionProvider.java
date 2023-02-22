package com.demo.online;

import java.sql.Connection;
import java.sql.DriverManager;

public class ConnectionProvider 
{
	public static Connection getCon()
	{
		Connection con=null;
		try {
			
			Class.forName("com.mysql.cj.jdbc.Driver");
			con=DriverManager.getConnection("jdbc:mysql://localhost:3306/ospjsp","root","admin");
			return con;
	} catch (Exception e2) {
		
		e2.printStackTrace();
		}
	return null;
	}
}
