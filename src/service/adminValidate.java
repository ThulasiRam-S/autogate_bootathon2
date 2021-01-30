package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import com.mysql.jdbc.*;

public class adminValidate {
	public String validate(String username,String password){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		Statement st=con.createStatement();
		
		String query="SELECT * FROM `admin` WHERE 1";
		
		
		ResultSet resultOne=st.executeQuery(query);
        resultOne.next();
        String un=resultOne.getString("username");
        String pass=resultOne.getString("password");
        //System.out.println(un);
        //System.out.println(pass); 
        con.close();
        if(un.equals(username) && pass.equals(password)){
        	 return "Sucess";
        }
        else{
        	return "invalid";
        }
  
       
       
		}
		catch(Exception e){
			return "Exception-------->"+e;
		}
		
	}
	
	
}
