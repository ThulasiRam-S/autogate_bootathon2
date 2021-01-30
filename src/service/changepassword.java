package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class changepassword {
	public String cngPass(String username,String newpassword){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost/autogate","root","");
		con.setAutoCommit(true);

		Statement st=con.createStatement();
		
		
		
		
		int spid=0;
		
		String passOfASP=null;
		String passOfSP = null;
		
		String query="SELECT * FROM `adminserviceprovider`";
		ResultSet resultOne=st.executeQuery(query);
		
		while(resultOne.next()){
			if(resultOne.getString("usernameSp").equals(username)){
				passOfASP = resultOne.getString("passwordSp");
				break;
			}
		}
		
		String query1="SELECT * FROM `serviceprovider`";
		ResultSet resultTwo=st.executeQuery(query1);
		while(resultTwo.next()){
			if(resultTwo.getString("spusername").equals(username)){
				passOfSP = resultTwo.getString("sppassword");
				spid = resultTwo.getInt("spid");
				break;
			}
		}
		
		System.out.println(passOfASP);
		System.out.println(passOfSP);
		System.out.println(spid);//proper
		System.out.println(newpassword);
		if(passOfASP.equals(passOfSP)){
			System.out.println("Proper1");
			String query2="UPDATE serviceprovider SET sppassword = ?  WHERE  spId = ?";
			PreparedStatement ps = con.prepareStatement(query2);
			System.out.println("Proper2");
			ps.setString(1, newpassword);
			System.out.println("Proper3");
			ps.setInt(2, spid);
			System.out.println("Proper4");
			ps.executeUpdate();
			System.out.println("Sucess");
			
			return "Inserted Sucessfully";
		}
		else{
			System.out.println("Unsucess");
			return "Unsucessfull";
			
		}
		
	}
		catch(Exception e){
			System.out.println("Exception2   "+e.getMessage());
			return "Exception-------->"+e;
		}
	
	}
	
	
	
}
