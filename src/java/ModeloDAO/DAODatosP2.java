/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;





import configuracion.Conexion;
import Interfaces.Inter2;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import Modelo.DatosP2;
/**
 *
 * @author filip
 */
public class DAODatosP2 {
    
    
     Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Conexion cn= new Conexion();
    
    @Override
    public List consultar() {
        ArrayList<DatosP2> list= new ArrayList<>();
        String sql="select * from ejercicio2";
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                DatosP2 d2= new DatosP2();
                d2.setPrecio(rs.getDouble("precio"));
                d2.setResultado2(rs.getDouble("resultado2"));
                list.add(d2);
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        
        return list;
    }

    @Override
    public boolean registrar(DatosP2 d2) {
        String sql="insert into ejercicio2(precio,resultado2)values('"+d2.getPrecio()+"','"+d2.getResultado2()+"')";
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
