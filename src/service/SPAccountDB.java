package service;
import java.sql.*;
import java.util.*;
public class SPAccountDB {
public ArrayList<String> spdetails(int spid)
{
	ArrayList<String> spdetails=new ArrayList();
	try {
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("SELECT spusername,spname,spphone,spemail from serviceprovider where spId="+spid);
	    while(rs.next())
	    {
	    	spdetails.add(rs.getString("spusername"));
	    	spdetails.add(rs.getString("spname"));
	    	spdetails.add(rs.getString("spphone"));
	    	spdetails.add(rs.getString("spemail"));
	    }
	    
	}
	catch(Exception e)
	{
		System.out.println("can't display serviceprovider details from serviceprovidertable."+e.getMessage());
	}
	return spdetails;
}
public int getissueid(int spid)
{
	int issueId=0;
	try {
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("SELECT issueId from serviceprovider where spId="+spid);
	    while(rs.next())
	    {
	    	issueId=rs.getInt("issueId");
	    }
		}
	    /*System.out.println("useridin spdb"+userId);
	    issuedetails.add(issue);
	    Statement st2=con.createStatement();
	    ResultSet rs2=st2.executeQuery("SELECT username,phoneno,address,email from user where userId="+userId);
	    System.out.println("result set crossed");
	    while(rs2.next())
	    {
	    	 //System.out.println("result set ");
	    	issuedetails.add(rs2.getString(2));
	    	System.out.println("result set 2");
	    	issuedetails.add(rs2.getString(4));
	    	System.out.println("result set 4");
	    	issuedetails.add(rs2.getString(5));
	    	System.out.println("result set 5");
	    	//issuedetails.add(rs2.getString(6));
	    	//System.out.println("result set 6");
	    	issuedetails.add(rs2.getString(7));
	    	System.out.println("result set 7");
	    }
	    for (String str : issuedetails) 
            System.out.print(str + " "); 
	    
	}*/
	catch(Exception e)
	{
		System.out.println("can't display issueId from serviceprovider table"+e.getMessage());
	}
	return issueId;
}
public ArrayList<String> getissue_userId(int issueId)
{
	String issue=null;
	int userId=0;
	ArrayList<String> getissueuserid=new ArrayList();
	try
	{
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("SELECT userId,issue from issue where issueId="+issueId);
	    while(rs.next())
	    {
	    	getissueuserid.add(String.valueOf(rs.getInt("userId")));
	    	getissueuserid.add(rs.getString("issue"));
	    }
	}
	catch(Exception e)
	{
		System.out.println("can't display userId and issue from issue table"+e.getMessage());
	}
	return getissueuserid;
}
public ArrayList<String> getuserdetails(int userId)
{
	ArrayList<String> getuserdetails=new ArrayList();
	try
	{
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("SELECT username,phoneno,address,city,email from user where userId="+userId);
	    while(rs.next())
	    {
	    	getuserdetails.add(rs.getString("username"));
	    	getuserdetails.add(rs.getString("phoneno"));
	    	getuserdetails.add(rs.getString("address"));
	    	getuserdetails.add(rs.getString("city"));
	    	getuserdetails.add(rs.getString("email"));
	    }
	}
	catch(Exception e)
	{
		System.out.println("can't display userdetails from user table"+e.getMessage());
	}
	return getuserdetails;
}
public int spcomplete(int spid)
{
	int success=0;
	try
	{
		System.out.println("spidinbutton"+spid);
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		PreparedStatement pst1=con.prepareStatement("update serviceprovider set spworkstatus=?,issueId=? where spId=?");  
		pst1.setInt(1,0);
		pst1.setInt(2,0);  
		pst1.setInt(3,spid);
		pst1.executeUpdate();
		success=1;
	}
	catch(Exception e)
	{
		System.out.println("can't update spstatus and issueid in serviceprovider table."+e.getMessage());
	}
	return success;
}
}
