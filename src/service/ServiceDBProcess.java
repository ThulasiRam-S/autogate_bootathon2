package service;
import java.sql.*;
public class ServiceDBProcess {
public int issuetodb(int userid,String issue)
{
	try
	{
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		PreparedStatement pst=con.prepareStatement("insert into issue values(?,?,?,?,?)");
		pst.setInt(1, 0);
		pst.setInt(2, userid);
		pst.setInt(3, 0);
		pst.setString(4, issue);
		pst.setInt(5, 1);
		pst.executeUpdate();
		con.close();
		System.out.println("Issue inserted successfully!");
	}
	catch(Exception e)
	{
		System.out.println("can't insert issue to issuetable."+e.getMessage());
	}
	return 1;
}
public String displayissue(int issueid)
{
	String issuedetails=null;
	try {
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		Statement st=con.createStatement();
	    ResultSet rs=st.executeQuery("SELECT issue from issue where issueId="+issueid);
	    rs.next();
	    issuedetails=rs.getString("issue");
	}
	catch(Exception e)
	{
		System.out.println("can't display issue to admin for serviceprovider allotment."+e.getMessage());
	}
	return issuedetails;
}
public ResultSet dropdownsp()
{
	ResultSet rs2=null;
	try {
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		PreparedStatement pst1=con.prepareStatement("SELECT spname,spId from serviceprovider where spworkstatus=0"); 
		rs2=pst1.executeQuery();
	    return rs2;
	}
	catch(Exception e)
	{
		System.out.println("can't display free serviceproviders in dropdown!"+e.getMessage());
	}
	return rs2;
}
public void updatesptoissue(int issueid,int spid)
{
	try
	{
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		PreparedStatement pst1=con.prepareStatement("update issue set spId=? where issueId=?");  
		PreparedStatement pst2=con.prepareStatement("update issue set issuestatus=0 where issueId=?");
		pst1.setInt(1,spid);
		pst1.setInt(2,issueid);  
		pst2.setInt(1,issueid);
		pst1.executeUpdate();  
		pst2.executeUpdate();
		con.close();
	}
	catch(Exception e)
	{
		System.out.println("can't update spid to issueid in issue table!"+e.getMessage());
	}
}
public void updatespstatus(int issueid,int spid)
{
	try
	{
		ServiceDBConnect ob=new ServiceDBConnect();
		Connection con=ob.getcon();
		PreparedStatement pst1=con.prepareStatement("update serviceprovider set issueId=? where spId=?");  
		PreparedStatement pst2=con.prepareStatement("update serviceprovider set spworkstatus=1 where spId=?");
		pst1.setInt(1,issueid);
		pst1.setInt(2,spid);  
		pst2.setInt(1,spid);
		pst1.executeUpdate();  
		pst2.executeUpdate();
		con.close();
	}
	catch(Exception e)
	{
		System.out.println("can't update sp_workstatus and corresponding issueid in serviceprovidertable!"+e.getMessage());
	}
}
}
