/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.Usuarios;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author Alexander_Garcia
 */
public class DaoUsuario extends Conexion{
    public ArrayList<Usuarios> mostarUsuario() throws Exception {
        ArrayList<Usuarios> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select DISTINCTROW idUsuario, nombre, contrasenia, r.rol as rolAdmin  from usuario as u inner join rol as r where  u.rol=r.idRol and r.rol NOT IN ('superAdministrador') ORDER BY idUsuario;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Usuarios us = new Usuarios();
                us.setCodUsuario(rs.getInt(1));
                us.setUserName(rs.getString(2));
                us.setPassword(rs.getString(3));
                us.setRol(rs.getString(4));
                list.add(us);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarUsuario(Usuarios us) throws Exception
    {
        try
        {
            this.conectar();
            String sql="insert into usuario  values(0,?,?,?)";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, us.getUserName());
            ps.setString(2, us.getPassword());
            ps.setString(3, us.getRol());
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
    
    public void modificarUsuario(Usuarios us) throws Exception
    {
        try
        {
            this.conectar();
            String sql="update usuario set nombre=?, contrasenia=?, rol=? where idUsuario=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, us.getUserName());
            ps.setString(2, us.getPassword());
            ps.setString(3, us.getRol());
            ps.setInt(4, us.getCodUsuario());
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
    
    public void eliminarUsuario(Usuarios us) throws Exception
    {
        try
        {
            this.conectar();
            String sql="delete from usuario where idUsuario=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setInt(1, us.getCodUsuario());
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
}
