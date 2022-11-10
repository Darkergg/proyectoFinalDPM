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
public class Paises {
    private int IdPais;
    private String Pais;

    public Paises() {
    }

    public Paises(int IdPais, String Pais) {
        this.IdPais = IdPais;
        this.Pais = Pais;
    }

    public int getIdPais() {
        return IdPais;
    }

    public void setIdPais(int IdPais) {
        this.IdPais = IdPais;
    }

    public String getPais() {
        return Pais;
    }

    public void setPais(String Pais) {
        this.Pais = Pais;
    }
    
    
    
}
