/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package configuracion;
//Para el Mysql
import java.sql.DriverManager;
//Conection

import java.sql.Connection;
/**
 *
 * @author filip
 */
public class Conexion {
    
    
    Connection con;
       public Conexion() {
            try {
                String dbDriver = "com.mysql.jdbc.Driver";
                String dbURL = "jdbc:mysql://localhost:3308/";
                // Database name to access
                String dbName = "ejercicios";
                String dbUsername = "root";
                String dbPassword = "n0m3l0";
                
                Class.forName(dbDriver).newInstance();
                con = DriverManager.getConnection(dbURL + dbName,
                        dbUsername,
                        dbPassword);
                System.out.println("se conecto");
            } catch (Exception e ) {
                System.err.println("Error"+e);
            }
        
        }
       public Connection getConnection(){
           return con;
       }
}
