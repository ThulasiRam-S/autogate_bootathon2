package daobjects;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class DBProcess {


    public String saveEmpDetails(int eid,String fname,String lname,String gender,String dob,String passwrd,String email,double mobile,String city,String state)
    {
        try
        {
           Connection con=DBConnect.getCon();
           PreparedStatement pst=con.prepareStatement("insert into tbl_emp_details values(?,?,?,?,?,?,?,?,?,?)");

           pst.setInt(1,eid);
           pst.setString(2,fname);
           pst.setString(3,lname);
           pst.setString(4,gender);
           pst.setString(5,dob);
           pst.setString(6,passwrd);
           pst.setString(7,email);
           pst.setDouble(8,mobile);
           pst.setString(9,city);
           pst.setString(10,state);
           pst.executeUpdate();
           con.close();
           return "success";
         }
         catch(Exception e)
         {
           return e.toString();
         }
    }
}
