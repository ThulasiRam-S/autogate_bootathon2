package daobjects;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnect {

    private static Connection con;

    /**
     * @return the con
     */
    public static Connection getCon() {
          try
          {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost/products","root","");
          }
          catch(Exception e)
          {
               System.out.println("     "+e);
          }

        return con;
    }



}
