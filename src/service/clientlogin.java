package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class clientlogin {
	public String validateClient(String username,String password){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		int flag=0;
		Statement st=con.createStatement();
		int userId=0;
		
		String query="SELECT * FROM `user`";
		
		ResultSet resultOne=st.executeQuery(query);
        while(resultOne.next()){
        	if(resultOne.getString("username").equals(username) && resultOne.getString("password").equals(password)){
        		System.out.println(resultOne.getString("username"));
        		System.out.println(resultOne.getString("password"));
 
           	 flag=1;
           	 break;
           }
           else{
        	   System.out.println("YO!!!");
           	flag=0;
           }
     
        }
        con.close();
        
        if(flag==1){
        	return "Sucess";
        }
        else{
        	return "invalid";
        }
      
 }
		catch(Exception e){
			System.out.println(e.getMessage());
			return "Exception-------->"+e;
		}
		
	}
	
	public int userIdUser(String user,String pass){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		int flag=0;
		Statement st=con.createStatement();
		int userId=0;
		
		String query="SELECT * FROM `user`";
		
		ResultSet resultOne=st.executeQuery(query);
        while(resultOne.next()){
        	if(resultOne.getString("username").equals(user) && resultOne.getString("password").equals(pass)){
        		System.out.println(resultOne.getString("username"));
        		System.out.println(resultOne.getString("password"));
        		userId=resultOne.getInt("userId");
 
           	 flag=1;
           	 break;
           }
           else{
        	   System.out.println("YO!!!");
           	flag=0;
           }
     
        }
        con.close();
        
        if(flag==1){
        	return userId;
        }
        else{
        	return 0;
        }
      
 }
		catch(Exception e){
			System.out.println(e.getMessage());
			return 0;
		}
		
	}
}
