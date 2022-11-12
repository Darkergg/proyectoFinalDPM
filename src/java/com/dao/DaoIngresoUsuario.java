/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

/**
 *
 * @author Alexander_Garcia
 */
public class DaoIngresoUsuario extends Conexion {

    public String login(String usuario, String password) throws Exception {
        String rol = "";
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select rol from usuario where nombre=? and contrasenia=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, password);
            rs = ps.executeQuery();
            if (rs.next()) {
                rol = rs.getString("rol");
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return rol;
    }

    public int idInvestigador(String nombre) throws Exception {
        int id = 0;
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select i.idInvestigador  from usuario u INNER join investigador  as i on i.usuario =u.idUsuario where u.nombre=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, nombre);
            rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("idInvestigador");
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return id;
    }
        public int idAdmin(String nombre) throws Exception {
        int id = 0;
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select a.idAdmin as id from usuario u INNER join administrador  as a on a.usuario =u.idUsuario where u.nombre=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, nombre);
            rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("id");
                System.out.println(id);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return id;
    }
        
        public int idSuperAdmin(String nombre) throws Exception {
        int id = 0;
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select s.idSuperAdmin as id from usuario u INNER join superAdministrador  as s on s.usuario =u.idUsuario where u.nombre=?;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, nombre);
            rs = ps.executeQuery();
            if (rs.next()) {
                id = rs.getInt("id");
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return id;
    }
}
