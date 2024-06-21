package service;

import java.sql.Connection;
import java.sql.DriverManager;

import java.sql.SQLException;

public class DBOperate {
public Connection getDBConnect() throws ClassNotFoundException, SQLException {
		
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/mydb", "root", "Mypass@123");
		return conn;
	}


}
