/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package connection;

/**
 *
 * @author KaizoDono
 */
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class connection 
{
    private static final String Classesname = "com.mysql.jdbc.Driver";
    private static final String ConnectionURL = "jdbc:mysql://localhost/fyptitlebooking";
    private static final String ConnectionPass = "admin";
    private static final String ConnectionUser = "root";

    public static Connection ConnectNow()
    {
        Connection con = null;
        
        try
        {
            Class.forName(Classesname);
            con = DriverManager.getConnection(ConnectionURL, ConnectionUser, ConnectionPass);      
        }
        
        catch(ClassNotFoundException e)
        {
            System.out.println(e);
        }
        
        catch(SQLException e)
        {
            System.out.println(e);
        }
        
        return con;         
    }
    

}
