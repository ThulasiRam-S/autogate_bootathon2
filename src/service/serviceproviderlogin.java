package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.io.*;
public class serviceproviderlogin {
	public String validateServiceprovider(String username,String password){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		int flag=0;
		Statement st=con.createStatement();
		
		String query="SELECT * FROM `serviceprovider`";
		
		ResultSet resultOne=st.executeQuery(query);
        while(resultOne.next()){
        	if(resultOne.getString("spusername").equals(username) && resultOne.getString("sppassword").equals(password)){
        		System.out.println(resultOne.getString("spusername"));
        		System.out.println(resultOne.getString("sppassword"));
        		System.out.println("Flag 1");
           	    flag=1;
           	    break;
           }
          
        	else{
        	   System.out.println("Flag 0");
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
	public int userIdSP(String user,String pass){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		int flag=0;
		Statement st=con.createStatement();
		int userId=0;
		
		String query="SELECT * FROM `serviceprovider`";
		
		ResultSet resultOne=st.executeQuery(query);
        while(resultOne.next()){
        	if(resultOne.getString("spusername").equals(user) && resultOne.getString("sppassword").equals(pass)){
        		System.out.println(resultOne.getString("spusername"));
        		System.out.println(resultOne.getString("sppassword"));
        		userId=resultOne.getInt("spId");
 
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
			System.out.println("ghgh"+e.getMessage());
			return 0;
		}
		
	}
}
