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
import java.util.List;

/**
 *
 * @author josue
 */
public class DaoInvestigador extends Conexion {

    public List<Investigador> mostrarInvest() throws Exception {
        ResultSet rs;
        List<Investigador> lst = new ArrayList();
        try {
            this.conectar();
            String sql = "select usuario, idInvestigador, nombre, apellido, p.pais as pais, ciudad, fechaNac, cantInvestigadores  from investigador as i inner join paises as p where i.pais=p.idPais";
            PreparedStatement pst = (PreparedStatement) this.getCon().prepareStatement(sql);
            Investigador inv;
            rs = pst.executeQuery();
            while (rs.next()) {
                Usuarios users = new Usuarios();
                users.setCodUsuario(rs.getInt("usuario"));
                inv = new Investigador(rs.getInt("idInvestigador"), users, rs.getString("nombre"),
                        rs.getString("apellido"), rs.getString("pais"), rs.getString("ciudad"),
                        rs.getString("fechaNac"), rs.getInt("cantInvestigadores"));
                lst.add(inv);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lst;
    }

    public List<Usuarios> mostrarUserr() throws Exception {
        ResultSet rs;
        List<Usuarios> lst = new ArrayList();//lista de proveedor
        try {
            this.conectar();
            String sql = "select idUsuario, nombre, contrasenia, r.rol as rolInvest  from usuario as u inner join rol as r where u.rol=3 and u.rol=r.idRol"; //Consulta
            PreparedStatement pst = (PreparedStatement) this.getCon().prepareStatement(sql);
            rs = pst.executeQuery();
            while (rs.next()) {
                Usuarios users = new Usuarios();
                users.setCodUsuario(rs.getInt("idUsuario"));
                users.setUserName(rs.getString("nombre"));
                users.setPassword(rs.getString("contrasenia"));
                users.setRol(rs.getString("rolInvest"));
                lst.add(users);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lst;
    }

    public void eliminarInvestigador(Investigador invest) throws Exception {
        try {
            this.conectar();
            String sql = "delete from investigador where idInvestigador=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, invest.getIdInvestigador());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void insertInves(Investigador pro) throws Exception {
        try {
            this.conectar();
            String sql = "insert into investigador(usuario,nombre,apellido,pais,ciudad,fechaNac,cantInvestigadores) values(?,?,?,?,?,?,?)";
            PreparedStatement pst = this.getCon().prepareStatement(sql);
            pst.setInt(1, pro.getUsuarios().getCodUsuario());
            pst.setString(2, pro.getNombre());
            pst.setString(3, pro.getApellido());
            pst.setString(4, pro.getPais());
            pst.setString(5, pro.getCiudad());
            pst.setString(6, pro.getFechaNac());
            pst.setInt(7, pro.getCantInvestigadores());

            pst.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void modificarInvestigador(Investigador invt) throws Exception {
        try {
            this.conectar();
            String sql = "update investigador set usuario=?, nombre=?, apellido=?, pais=?, ciudad=?, fechaNac=?, cantInvestigadores=? where idInvestigador =?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, invt.getUsuarios().getCodUsuario());
            ps.setString(2, invt.getNombre());
            ps.setString(3, invt.getApellido());
            ps.setString(4, invt.getPais());
            ps.setString(5, invt.getCiudad());
            ps.setString(6, invt.getFechaNac());
            ps.setInt(7, invt.getCantInvestigadores());
            ps.setInt(8, invt.getIdInvestigador());

            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }
        public List<Investigador> getCantidadInvestigador(int id) throws Exception {
        ResultSet rs;
        List<Investigador> lst = new ArrayList();//lista de proveedor
        try {
            this.conectar();
            String sql = "select * from investigador where idInvestigador=? "; //Consulta
            PreparedStatement pst = (PreparedStatement) this.getCon().prepareStatement(sql);
            pst.setInt(1, id);
            rs = pst.executeQuery();
            while (rs.next()) {
                Investigador invest = new Investigador();
                invest.setNombre(rs.getString("nombre"));
                invest.setIdInvestigador(rs.getInt("idInvestigador"));
                invest.setCantInvestigadores(rs.getInt("cantInvestigadores"));
                lst.add(invest);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return lst;
    }
    
}
