package com.neo.util;

import java.sql.DriverManager;
import java.sql.SQLException;

import java.sql.Connection;

public class DbConnection {
	
	public static Connection getDbConnection() throws ClassNotFoundException{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con= null;
		try {
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/dbtest","root","");
		}catch(SQLException e){
			e.printStackTrace();
		}
		return con;
		
	}

}
