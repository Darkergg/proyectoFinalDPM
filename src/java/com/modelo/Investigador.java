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
public class Investigador {
    
    private int idInvestigador;
    private Usuarios usuarios;
    private String nombre;
    private String apellido;
    private String pais;
    private String ciudad;
    private String fechaNac;
    private int cantInvestigadores;

    public Investigador() {
    }

    public Investigador(int idInvestigador, Usuarios usuario, String nombre, String apellido, String pais, String ciudad, String fechaNac, int cantInvestigadores) {
        this.idInvestigador = idInvestigador;
        this.usuarios = usuario;
        this.nombre = nombre;
        this.apellido = apellido;
        this.pais = pais;
        this.ciudad = ciudad;
        this.fechaNac = fechaNac;
        this.cantInvestigadores = cantInvestigadores;
    }

    public int getIdInvestigador() {
        return idInvestigador;
    }

    public void setIdInvestigador(int idInvestigador) {
        this.idInvestigador = idInvestigador;
    }

    public Usuarios getUsuarios() {
        return usuarios;
    }

    public void setUsuarios(Usuarios usuarios) {
        this.usuarios = usuarios;
    }


    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getPais() {
        return pais;
    }

    public void setPais(String pais) {
        this.pais = pais;
    }

    public String getCiudad() {
        return ciudad;
    }

    public void setCiudad(String ciudad) {
        this.ciudad = ciudad;
    }

    public String getFechaNac() {
        return fechaNac;
    }

    public void setFechaNac(String fechaNac) {
        this.fechaNac = fechaNac;
    }

    public int getCantInvestigadores() {
        return cantInvestigadores;
    }

    public void setCantInvestigadores(int cantInvestigadores) {
        this.cantInvestigadores = cantInvestigadores;
    }

    
    
}
