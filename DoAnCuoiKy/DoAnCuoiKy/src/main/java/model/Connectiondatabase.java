package model;

import java.sql.DriverManager;

import java.sql.Connection;

public class Connectiondatabase {
	public Connection getConnection() throws Exception {
		Class.forName("com.mysql.cj.jdbc.Driver");
		return DriverManager
				.getConnection("jdbc:mysql://"+serverName+ ":/" + dbName + "?user=" + userID + "&password=" + password);

	}
	private final String serverName = "localhost";
	private final String dbName = "doanweb";
	private final String userID = "root";
	private final String password = "bien1234";
	
	public static void main(String[] args) {
		try {
			System.out.println(new Connectiondatabase().getConnection());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
