/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.modelo;

/**
 *
 * @author josue
 */
public class Observaciones {
    private int idObervacion;
    private int idInvestigacion;
    private String contObservacion;
    private String fecha;

    public Observaciones() {
    }

    public Observaciones(int idObervacion, int idInvestigacion, String contObservacion, String fecha) {
        this.idObervacion = idObervacion;
        this.idInvestigacion = idInvestigacion;
        this.contObservacion = contObservacion;
        this.fecha = fecha;
    }

    public int getIdObervacion() {
        return idObervacion;
    }

    public void setIdObervacion(int idObervacion) {
        this.idObervacion = idObervacion;
    }

    public int getIdInvestigacion() {
        return idInvestigacion;
    }

    public void setIdInvestigacion(int idInvestigacion) {
        this.idInvestigacion = idInvestigacion;
    }

    public String getContObservacion() {
        return contObservacion;
    }

    public void setContObservacion(String contObservacion) {
        this.contObservacion = contObservacion;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }
    
    
    
}
