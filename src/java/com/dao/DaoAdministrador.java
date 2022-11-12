/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.Administrador;
import com.modelo.Usuarios;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author josue
 */
public class DaoAdministrador extends Conexion {

    public List<Administrador> mostrarAdministrador() throws Exception {
        ResultSet rs;
        List<Administrador> lst = new ArrayList();
        try {
            this.conectar();
            String sql = "select usuario, idAdmin, nombre, apellidos, p.pais as pais, ciudad, fechaNac   from administrador as a inner join paises as p where a.pais=p.idPais";
            PreparedStatement pst = (PreparedStatement) this.getCon().prepareStatement(sql);
            Administrador admin;
            rs = pst.executeQuery();
            while (rs.next()) {
                Usuarios users = new Usuarios();
                users.setCodUsuario(rs.getInt("usuario"));
                admin = new Administrador(rs.getInt("idAdmin"), users, rs.getString("nombre"),
                        rs.getString("apellidos"), rs.getString("pais"), rs.getString("ciudad"),
                        rs.getString("fechaNac"));
                lst.add(admin);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lst;
    }

    public List<Usuarios> mostrarProveedor() throws Exception {
        ResultSet rs;
        List<Usuarios> lst = new ArrayList();//lista de proveedor
        try {
            this.conectar();
            String sql = "select idUsuario, nombre, contrasenia, r.rol as rolAdmin  from usuario as u inner join rol as r where u.rol=2 and u.rol=r.idRol"; //Consulta
            PreparedStatement pst = (PreparedStatement) this.getCon().prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Usuarios users = new Usuarios();
                users.setCodUsuario(rs.getInt("idUsuario"));
                users.setUserName(rs.getString("nombre"));
                users.setPassword(rs.getString("contrasenia"));
                users.setRol(rs.getString("rolAdmin"));
                lst.add(users);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lst;
    }

    public void modificarAdministrador(Administrador admin) throws Exception {
        try {
            this.conectar();
            String sql = "update administrador set usuario=?, nombre=?, apellidos=?, pais=?, ciudad=?, fechaNac=? where idAdmin=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, admin.getUsuario().getCodUsuario());
            ps.setString(2, admin.getNombre());
            ps.setString(3, admin.getApellido());
            ps.setString(4, admin.getPais());
            ps.setString(5, admin.getCiudad());
            ps.setString(6, admin.getFechaNac());
            ps.setInt(7, admin.getIdAdmin());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void eliminarAdministrador(Administrador admin) throws Exception {
        try {
            this.conectar();
            String sql = "delete from administrador where idAdmin=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, admin.getIdAdmin());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }
    public void insertAdmin(Administrador pro) throws Exception {
        try {
            this.conectar();
            String sql = "insert into administrador(usuario,nombre,apellidos,pais,ciudad,fechaNac) values(?,?,?,?,?,?)";
            PreparedStatement pst = this.getCon().prepareStatement(sql);
            pst.setInt(1, pro.getUsuario().getCodUsuario());
            pst.setString(2, pro.getNombre());
            pst.setString(3, pro.getApellido());
            pst.setString(4, pro.getPais());
            pst.setString(5, pro.getCiudad());
            pst.setString(6, pro.getFechaNac());

            pst.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

}
