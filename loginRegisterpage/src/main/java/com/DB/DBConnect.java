package com.DB;
import java.sql.*;

public class DBConnect {
	
	private static Connection conn;   // making variable for connection 
    public static Connection getConnection() {
    	
    	
    	try {
    		if(conn==null) {
    			Class.forName("com.mysql.cj.jdbc.Driver");
    			conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/loginpage","root","Signnitesh@0842"); 
    		}
    		
    	}catch (Exception e){
    		e.printStackTrace();
    		
    	}
    	return conn;
    }
}
