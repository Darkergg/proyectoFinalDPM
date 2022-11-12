/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.Paises;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author josue
 */
public class DaoPais extends Conexion{
    public ArrayList<Paises> getPaises() throws Exception {
        ArrayList<Paises> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from paises;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Paises pa = new Paises();
                pa.setIdPais(rs.getInt(1));
                pa.setPais(rs.getString(2));                
                list.add(pa);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarPaises(Paises pa) throws Exception
    {
        try
        {
            this.conectar();
            String sql="insert into paises values(0,?)";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, pa.getPais());
            ps.executeUpdate();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            this.desconectar();
        }
    }
    
    public void modificarPaises(Paises pa) throws Exception
    {
        try
        {
            this.conectar();
            String sql="update paises set pais=? where idPais=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, pa.getPais());
            ps.setInt(2, pa.getIdPais());
            ps.executeUpdate();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            this.desconectar();
        }
    }
    
    public void eliminarPaises(Paises pa) throws Exception
    {
        try
        {
            this.conectar();
            String sql="delete from paises where idPais=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setInt(1, pa.getIdPais());
            ps.executeUpdate();
        }
        catch (Exception e)
        {
            throw e;
        }
        finally
        {
            this.desconectar();
        }
    }
        public ArrayList<Paises> buscarPais(String id) throws Exception {
        ArrayList<Paises> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from paises where pais=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Paises pa = new Paises();
                pa.setIdPais(rs.getInt(1));
                pa.setPais(rs.getString(2));                
                list.add(pa);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }
}
