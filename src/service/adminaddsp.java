package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class adminaddsp {
	public String addspdetails(String username ,String password){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		Statement st=con.createStatement();
		
		String query="insert into adminServiceprovider values(?,?)";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setString(1, username);
		ps.setString(2, password);
		ps.executeUpdate();
		con.close();
		System.out.println("Inserted 1");
		return "Inserted Sucessfully";
		
		
		}
		catch(Exception e){
			System.out.println("Exception1"+e.getMessage());
			return "Exception-------->"+e;
		}
		
	} 
	
	public String spdatas(String username,String password,String name,String address,String phoneNo,String city,String email){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		Statement st=con.createStatement();
		
		String query="insert into serviceprovider values(?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement ps = con.prepareStatement(query);
		ps.setInt(1, 0);
		ps.setString(2, username);
		ps.setString(3, password);
		ps.setString(4, name);
		ps.setString(5, address);
		ps.setString(6, phoneNo);
		ps.setString(7, city);
		ps.setString(8, email);
		ps.setInt(9, 0);
		ps.setInt(10, 0);
		ps.executeUpdate();
		
		con.close();
		System.out.println("inserted2");
		return "Inserted Sucessfully";
		
		
		}
		catch(Exception e){
			System.out.println("Exception2"+e.getMessage());
			return "Exception-------->"+e;
		}
	
	}
	
	
}
	


