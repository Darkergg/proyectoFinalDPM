/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.Investigacion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author josue
 */
public class DaoInvestigacion extends Conexion {

    public ArrayList<Investigacion> getInvestigacion() throws Exception {
        ArrayList<Investigacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select i.idInvestigacion, i.estado, i.investigador, i.titulo, i.portada, i.contenido, p.pais, i.fecha from investigacion as i inner join paises as p where i.pais=p.idPais;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Investigacion invest = new Investigacion();
                invest.setIdInvestigacion(rs.getInt(1));
                invest.setEstado(rs.getInt(2));
                invest.setInvestigador(rs.getInt(3));
                invest.setTitulo(rs.getString(4));
                invest.setPortada(rs.getString(5));
                invest.setContenido(rs.getString(6));
                invest.setPais(rs.getString(7));
                invest.setFecha(rs.getString(8));
                list.add(invest);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarInvestigacion(Investigacion invest) throws Exception {
        try {
            this.conectar();
            String sql = "insert into investigacion values(0,?,?,?,?,?,?,?)";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, invest.getEstado());
            ps.setInt(2, invest.getInvestigador());
            ps.setString(3, invest.getTitulo());
            ps.setString(4, invest.getPortada());
            ps.setString(5, invest.getContenido());
            ps.setString(6, invest.getPais());
            ps.setString(7, invest.getFecha());
            ps.executeUpdate();
            String sql1 = "UPDATE investigador SET cantInvestigadores = (cantInvestigadores + 1) where idInvestigador=? ";
            PreparedStatement ps1 = this.getCon().prepareStatement(sql1);
            ps1.setInt(1, invest.getInvestigador());
            System.out.println(invest.getIdInvestigacion());
            ps1.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void insertDetalleInvesTags(String[] tags) throws Exception {
        ResultSet rs;
        try {
            this.conectar();
            int idInvestigacion = 0;
            String select = "Select idInvestigacion from investigacion order by idInvestigacion DESC LIMIT 1;";
            PreparedStatement ps = this.getCon().prepareStatement(select);
            rs = ps.executeQuery();
            while (rs.next()) {
                idInvestigacion = rs.getInt(1);
            }
            try {
                String sql = "insert into detalleTags values(0,?,?);";
                PreparedStatement ps1 = this.getCon().prepareStatement(sql);
                for (String s : tags) {
                    ps1.setInt(1, idInvestigacion);
                    ps1.setInt(2, Integer.parseInt(s));
                    ps1.executeUpdate();
                }
            } catch (Exception ex) {

            }

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void modificarInvestigacion(Investigacion invest) throws Exception {
        try {
            this.conectar();
            String sql = "update investigacion set estado=?, investigador=?, titulo=?, portada=?, contenido=?, pais=?, fecha=? where idInvestigacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, invest.getEstado());
            ps.setInt(2, invest.getInvestigador());
            ps.setString(3, invest.getTitulo());
            ps.setString(4, invest.getPortada());
            ps.setString(5, invest.getContenido());
            ps.setString(6, invest.getPais());
            ps.setString(7, invest.getFecha());
            ps.setInt(8, invest.getIdInvestigacion());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void eliminarInvestigacion(Investigacion invest) throws Exception {
        try {
            this.conectar();
            String sql = "delete from investigacion where idInvestigacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, invest.getIdInvestigacion());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public ArrayList<Investigacion> investigacionRecientes() throws Exception {
        ArrayList<Investigacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select idInvestigacion, estado, investigador, titulo, portada, contenido, p.pais, fecha from investigacion as i inner join paises as p where i.pais=p.idPais ORDER BY fecha DESC LIMIT 10";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Investigacion invest = new Investigacion();
                invest.setIdInvestigacion(rs.getInt(1));
                invest.setEstado(rs.getInt(2));
                invest.setInvestigador(rs.getInt(3));
                invest.setTitulo(rs.getString(4));
                invest.setPortada(rs.getString(5));
                invest.setContenido(rs.getString(6));
                invest.setPais(rs.getString(7));
                invest.setFecha(rs.getString(8));
                list.add(invest);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public ArrayList<Investigacion> buscarinvestigacion(int id) throws Exception {
        ArrayList<Investigacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select idInvestigacion, estado, investigador, titulo, portada, contenido, p.pais as country, fecha from investigacion as i inner join paises as p where i.pais=p.idPais and i.idInvestigacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Investigacion investi = new Investigacion();
                investi.setIdInvestigacion(rs.getInt(1));
                investi.setEstado(rs.getInt(2));
                investi.setInvestigador(rs.getInt(3));
                investi.setTitulo(rs.getString(4));
                investi.setPortada(rs.getString(5));
                investi.setContenido(rs.getString(6));
                investi.setPais(rs.getString(7));
                investi.setFecha(rs.getString(8));
                list.add(investi);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }
    
        

    public ArrayList<Investigacion> buscarinvestigacionEli(int id) throws Exception {
        ArrayList<Investigacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select idInvestigacion, estado, investigador, titulo, portada, contenido, pais, fecha from investigacion where idInvestigacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Investigacion investi = new Investigacion();
                investi.setIdInvestigacion(rs.getInt(1));
                investi.setEstado(rs.getInt(2));
                investi.setInvestigador(rs.getInt(3));
                investi.setTitulo(rs.getString(4));
                investi.setPortada(rs.getString(5));
                investi.setContenido(rs.getString(6));
                investi.setPais(rs.getString(7));
                investi.setFecha(rs.getString(8));
                list.add(investi);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public ArrayList<Investigacion> buscarinvestigacionEstado(int id) throws Exception {
        ArrayList<Investigacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select idInvestigacion, estado, investigador, titulo, portada, contenido, p.pais as country, fecha from investigacion as i inner join paises as p where i.pais=p.idPais and estado=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Investigacion investi = new Investigacion();
                investi.setIdInvestigacion(rs.getInt(1));
                investi.setEstado(rs.getInt(2));
                investi.setInvestigador(rs.getInt(3));
                investi.setTitulo(rs.getString(4));
                investi.setPortada(rs.getString(5));
                investi.setContenido(rs.getString(6));
                investi.setPais(rs.getString(7));
                investi.setFecha(rs.getString(8));
                list.add(investi);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void modificarEstadoInvestigacion(int estado, int id) throws Exception {
        try {
            this.conectar();
            String sql = "update investigacion set estado=?  where idInvestigacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, estado);
            ps.setInt(2, id);
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public ArrayList<Investigacion> getMisInvestigaciones(int id) throws Exception {
        ArrayList<Investigacion> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select i.idInvestigacion, i.estado, i.investigador, i.titulo, i.portada, i.contenido, p.pais, i.fecha from investigacion as i inner join paises as p where i.pais=p.idPais and i.investigador=?;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Investigacion invest = new Investigacion();
                invest.setIdInvestigacion(rs.getInt(1));
                invest.setEstado(rs.getInt(2));
                invest.setInvestigador(rs.getInt(3));
                invest.setTitulo(rs.getString(4));
                invest.setPortada(rs.getString(5));
                invest.setContenido(rs.getString(6));
                invest.setPais(rs.getString(7));
                invest.setFecha(rs.getString(8));
                list.add(invest);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }
}
