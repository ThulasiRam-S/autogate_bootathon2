package service;
import java.sql.*;
public class ServiceDBConnect {
private static Connection con;
public static Connection getcon()
{
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
	}
	catch(Exception e)
	{
		System.out.println("Connection not established");
	}
	return con;
}
}
