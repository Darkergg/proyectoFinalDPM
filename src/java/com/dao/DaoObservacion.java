/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dao;

import com.conexion.Conexion;
import com.modelo.Investigacion;
import com.modelo.Observaciones;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author josue
 */
public class DaoObservacion extends Conexion {

    public ArrayList<Observaciones> getObservaciones() throws Exception {
        ArrayList<Observaciones> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select * from observacion;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Observaciones obs = new Observaciones();
                obs.setIdObervacion(rs.getInt(1));
                obs.setContObservacion(rs.getString(2));
                obs.setFecha(rs.getString(3));
                list.add(obs);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public void insertarObservacion(Observaciones obs) throws Exception {
        try {
            this.conectar();
            String sql = "insert into observacion values(0,?,?)";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, obs.getContObservacion());
            ps.setString(2, obs.getFecha());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void modifcarObservacion(Observaciones obs) throws Exception {
        try {
            this.conectar();
            String sql = "update observacion set contObservacion=?, fecha=? where idObservacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setString(1, obs.getContObservacion());
            ps.setString(2, obs.getFecha());
            ps.setInt(3, obs.getIdObervacion());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public void eliminarObservacion(Observaciones obs) throws Exception {
        try {
            this.conectar();
            String sql = "delete from observacion where idObservacion=?";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, obs.getIdObervacion());
            ps.executeUpdate();
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
    }

    public ArrayList<Observaciones> observacionReciente() throws Exception {
        ArrayList<Observaciones> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select *  from observacion ORDER BY fecha DESC LIMIT 10;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            rs = ps.executeQuery();
            while (rs.next()) {
                Observaciones ob = new Observaciones();
                ob.setIdObervacion(rs.getInt(1));
                ob.setIdInvestigacion(rs.getInt(2));
                ob.setContObservacion(rs.getString(3));
                ob.setFecha(rs.getString(4));
                list.add(ob);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public ArrayList<Observaciones> buscarInvestigacioInvest(int id) throws Exception {
        ArrayList<Observaciones> list = new ArrayList<>();
        ResultSet rs;
        try {
            this.conectar();
            String sql = "select ob.idObservacion, ob.idInvestigacion, ob.contObservacion, ob.fecha from observacion as ob inner join investigacion as i on ob.idInvestigacion=i.idInvestigacion where  i.investigador=? ;";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                Observaciones obs = new Observaciones();
                obs.setIdObervacion(rs.getInt(1));
                obs.setIdInvestigacion(rs.getInt(2));
                obs.setContObservacion(rs.getString(3));
                obs.setFecha(rs.getString(4));
                list.add(obs);
            }
        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

    public ArrayList<Observaciones> ObservacionInsert(int id, String obser, int idAdmin) throws Exception {
        ArrayList<Observaciones> list = new ArrayList<>();
        ResultSet rs;
        int idObservacion = 0;
        try {
            this.conectar();
            String sql = "insert into observacion values(0,?,?):";
            PreparedStatement ps = this.getCon().prepareStatement(sql);
            ps.setInt(1, id);
            ps.setString(1, obser);
            rs = ps.executeQuery();

            String select = "Select idObservacion from observacion order by idObservacion DESC LIMIT 1;";
            PreparedStatement ps2 = this.getCon().prepareStatement(select);
            rs = ps2.executeQuery();
            while (rs.next()) {
                idObservacion = rs.getInt(1);
                System.out.println(idObservacion);
            }
            try {
                String sql1 = "insert into detalleObservacionAdmin values(0,?,?):";
                PreparedStatement ps1 = this.getCon().prepareStatement(sql1);
                ps1.setInt(1, idObservacion);
                ps1.setInt(2, id);
                rs = ps1.executeQuery();
                System.out.println(id);
            } catch (Exception ex) {
                throw ex;
            }

        } catch (Exception e) {
            throw e;
        } finally {
            this.desconectar();
        }
        return list;
    }

}
