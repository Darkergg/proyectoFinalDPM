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
public class Rol {
    private int idRol;
    private String Rol;

    public Rol() {
    }

    public Rol(int idRol, String Rol) {
        this.idRol = idRol;
        this.Rol = Rol;
    }

    public int getIdRol() {
        return idRol;
    }

    public void setIdRol(int idRol) {
        this.idRol = idRol;
    }

    public String getRol() {
        return Rol;
    }

    public void setRol(String Rol) {
        this.Rol = Rol;
    }
    
    
    
}
