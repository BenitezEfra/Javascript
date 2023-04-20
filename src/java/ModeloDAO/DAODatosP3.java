/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

/**
 *
 * @author filip
 */

import configuracion.Conexion;
import Interfaces.Inter3;
import Modelo.DatosP3;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
public class DAODatosP3 {
    
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Conexion cn= new Conexion();

    @Override
    public List consultar() {
        ArrayList<DatosP3> list= new ArrayList<>();
        String sql="select * from ejercicio3";
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                DatosP3 d3= new DatosP3();
                d3.setN1(rs.getDouble("n1"));
                d3.setN2(rs.getDouble("n2"));
                d3.setN3(rs.getDouble("n3"));
                d3.setnMayor(rs.getDouble("nMayor"));

                list.add(d3);
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        return list;
    }

    @Override
    public boolean registrar(DatosP3 d3) {
        String sql="insert into ejercicio3(n1,n2,n3,nMayor)values('"+d3.getN1()+"','"+d3.getN2()+"','"+d3.getN3()+"','"+d3.getnMayor()+"')";
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
