/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.Estado;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author josue
 */
public class DaoEstado extends Conexion{
    public ArrayList<Estado> getEstado() throws Exception {
        ArrayList<Estado> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from estado;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Estado est = new Estado();
                est.setIdEstado(rs.getInt(1));
                est.setEstado(rs.getString(2));                
                list.add(est);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarEstado(Estado est) throws Exception
    {
        try
        {
            this.conectar();
            String sql="insert into estado values(0,?)";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, est.getEstado());
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
    
    public void modificarEstado(Estado est) throws Exception
    {
        try
        {
            this.conectar();
            String sql="update estado set estado=? where idEstado=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, est.getEstado());
            ps.setInt(2, est.getIdEstado());
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
    
    public void eliminarEstado(Estado est) throws Exception
    {
        try
        {
            this.conectar();
            String sql="delete from estado where idEstado=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setInt(1, est.getIdEstado());
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
    public ArrayList<Estado> buscarEstado(int id) throws Exception {
        ArrayList<Estado> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from estado where idEstado=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Estado est = new Estado();
                est.setIdEstado(rs.getInt(1));
                est.setEstado(rs.getString(2));                
                list.add(est);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }
}
