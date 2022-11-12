/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.Tags;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author josue
 */
public class DaoTags extends Conexion{
    public ArrayList<Tags> getTags() throws Exception {
        ArrayList<Tags> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from tags;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Tags tag = new Tags();
                tag.setIdTags(rs.getInt(1));
                tag.setContTags(rs.getString(2));                
                list.add(tag);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarTags(Tags tag) throws Exception
    {
        try
        {
            this.conectar();
            String sql="insert into tags values(0,?)";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, tag.getContTags());
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
    
    public void modificarTags(Tags tag) throws Exception
    {
        try
        {
            this.conectar();
            String sql="update tags set contTags=? where idTags=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setString(1, tag.getContTags());
            ps.setInt(2, tag.getIdTags());
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
    
    public void eliminarTags(Tags tag) throws Exception
    {
        try
        {
            this.conectar();
            String sql="delete from Tags where idTags=?";
            PreparedStatement ps=this.getCon().prepareStatement(sql);
            ps.setInt(1, tag.getIdTags());
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
