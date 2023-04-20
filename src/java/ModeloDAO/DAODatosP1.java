/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;


import configuracion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Interfaces.Inter1;
import Modelo.DatosP1;

/**
 *
 * @author filip
 */
public class DAODatosP1 {
    
    
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Conexion cn= new Conexion();
    
   
    
    @Override
    public List consultar() {
   
        ArrayList<DatosP1> list= new ArrayList<>();
        String sql="select * from ejercicio1";
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                DatosP1 d1= new DatosP1();
                d1.setCapital(rs.getDouble("capital"));
                d1.setResultado1(rs.getDouble("resultado1"));
                list.add(d1);
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        
        return list;
    }

   

    @Override
    public boolean registrar(DatosP1 d1) {
        String sql="insert into ejercicio1(capital,resultado1)values('"+d1.getCapital()+"','"+d1.getResultado1()+"')";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        
        ps.executeUpdate();
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;
    
    }
}
