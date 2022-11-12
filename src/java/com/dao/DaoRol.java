/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.*;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author josue
 */
public class DaoRol extends Conexion{
    public ArrayList<Rol> getRol() throws Exception {
        ArrayList<Rol> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from rol;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Rol ro = new Rol();
                ro.setIdRol(rs.getInt(1));
                ro.setRol(rs.getString(2));                
                list.add(ro);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarRol(Rol ro) throws Exception
    {
        try
        {
            this.conectar();
            String sql="insert into rol values(0,?)";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, ro.getRol());
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
    
    public void modificarRol(Rol ro) throws Exception
    {
        try
        {
            this.conectar();
            String sql="update rol set rol=? where idRol=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, ro.getRol());
            ps.setInt(2, ro.getIdRol());
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
    
    public void eliminarRol(Rol ro) throws Exception
    {
        try
        {
            this.conectar();
            String sql="delete from rol where idRol=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setInt(1, ro.getIdRol());
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
        public ArrayList<Rol> buscaRol(String id) throws Exception {
        ArrayList<Rol> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from rol where rol=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Rol ro = new Rol();
                ro.setIdRol(rs.getInt(1));
                ro.setRol(rs.getString(2));                
                list.add(ro);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }
}
