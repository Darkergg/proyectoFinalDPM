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
public class Investigacion {

    private int idInvestigacion;
    private int estado;
    private int investigador;
    private String titulo;
    private String contenido;
    private String pais;
    private String fecha;
    private String portada;

    public Investigacion() {
    }

    public Investigacion(int idInvestigacion, int estado, int investigador, String titulo, String contenido, String pais, String fecha, String portada) {
        this.idInvestigacion = idInvestigacion;
        this.estado = estado;
        this.investigador = investigador;
        this.titulo = titulo;
        this.contenido = contenido;
        this.pais = pais;
        this.fecha = fecha;
        this.portada = portada;
    }

    public int getIdInvestigacion() {
        return idInvestigacion;
    }

    public void setIdInvestigacion(int idInvestigacion) {
        this.idInvestigacion = idInvestigacion;
    }

    public int getEstado() {
        return estado;
    }

    public void setEstado(int estado) {
        this.estado = estado;
    }

    public int getInvestigador() {
        return investigador;
    }

    public void setInvestigador(int investigador) {
        this.investigador = investigador;
    }

    public String getTitulo() {
        return titulo;
    }

    public void setTitulo(String titulo) {
        this.titulo = titulo;
    }

    public String getContenido() {
        return contenido;
    }

    public void setContenido(String contenido) {
        this.contenido = contenido;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getFecha() {
        return fecha;
    }

    public void setFecha(String fecha) {
        this.fecha = fecha;
    }

    public String getPortada() {
        return portada;
    }

    public void setPortada(String portada) {
        this.portada = portada;
    }  

}
