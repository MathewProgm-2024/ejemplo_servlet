/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Persona;
import java.util.List;
import java.sql.Statement;
import java.sql.ResultSet;

import java.sql.Connection;
import java.util.ArrayList;
import java.util.HashSet;

/**
 *
 * @author Mateo Rodriguez
 */
public class PersonaDAO implements CRUD {

    Conexion cn = new Conexion();
    Connection con;
    Statement st;
    ResultSet rs;
    Persona p = new Persona();

    @Override
    public List listar() {
        ArrayList<Persona> list = new ArrayList<>();
        String sql = "SELECT * FROM persona";
        try {
            con=cn.getConection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next()){
                Persona per = new Persona();
                per.setId(rs.getInt("id"));
                per.setNombre(rs.getString("nombre"));
                per.setApellido(rs.getString("apellido"));
                per.setEdad(rs.getString("edad"));
                list.add(per);
            }
        } catch (Exception e) {

        }
        return list;
    }

    @Override
    public Modelo.Persona list(int id) {
        String sql = "SELECT * FROM persona where id="+id;
        try {
            con=cn.getConection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            while (rs.next()){
                p.setId(rs.getInt("id"));
                p.setNombre(rs.getString("nombre"));
                p.setApellido(rs.getString("apellido"));
                p.setEdad(rs.getString("edad"));
                
            }
        } catch (Exception e) {

        }
        return p;
    }

    @Override
    public boolean add(Modelo.Persona per) {
        String sql="INSERT INTO persona(nombre, apellido, edad) values('"+per.getNombre()+"', '"+per.getApellido()+"', '"+per.getEdad()+"')";
        try{
            con=cn.getConection();
            st=con.createStatement();
            st.executeUpdate(sql);
            
        }catch (Exception e) {

        }
        
        return false;
    }

    @Override
    public boolean edit(Modelo.Persona per) {
        String sql="UPDATE persona set nombre='"+per.getNombre()+"', apellido='"+per.getApellido()+"', edad='"+per.getEdad()+"' where id="+per.getId();
        try{
            con=cn.getConection();
            st=con.createStatement();
            st.executeUpdate(sql);
            
        }catch (Exception e) {

        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="DELETE FROM persona where id="+id;
        try{
            con=cn.getConection();
            st=con.createStatement();
            st.executeUpdate(sql);        
        }catch (Exception e) {

        }
        return false;
    }

}
