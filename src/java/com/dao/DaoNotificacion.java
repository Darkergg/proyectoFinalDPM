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
public class DaoNotificacion extends Conexion{
    public ArrayList<Notificacion> getNotifiSuperAdmin() throws Exception {
        ArrayList<Notificacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select n.idNotificacion, n.notificacion, det.fecha from notificacion as n inner join detalleNotifiSuperAdmin as det on n.idNotificacion=det.idNotificacion;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Notificacion not = new Notificacion();
                not.setIdNotificacion(rs.getInt(1));
                not.setNotificacion(rs.getString(2)); 
                not.setFecha(rs.getString(3));
                list.add(not);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarNotificacion(Notificacion not) throws Exception
    {
        try
        {
            this.conectar();
            String sql="insert into notificacion values(0,?)";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, not.getNotificacion());
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
    
    public void modificarNotificacion(Notificacion not) throws Exception
    {
        try
        {
            this.conectar();
            String sql="update notificacion set notificacion=? where idNotificacion=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, not.getNotificacion());
            ps.setInt(2, not.getIdNotificacion());
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
    
    public void eliminarNotificacion(Notificacion not) throws Exception
    {
        try
        {
            this.conectar();
            String sql="delete from notificacion where idNotificacion=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setInt(1, not.getIdNotificacion());
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
        public ArrayList<Notificacion> buscarNotificacion(String id) throws Exception {
        ArrayList<Notificacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from notificacion where idNotificacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Notificacion not = new Notificacion();
                not.setIdNotificacion(rs.getInt(1));
                not.setNotificacion(rs.getString(2));                
                list.add(not);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }
}
