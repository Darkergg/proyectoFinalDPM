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
public class Tags {
    
    private int idTags;
    private String contTags;

    public Tags() {
    }

    public Tags(int idTags, String contTags) {
        this.idTags = idTags;
        this.contTags = contTags;
    }

    public int getIdTags() {
        return idTags;
    }

    public void setIdTags(int idTags) {
        this.idTags = idTags;
    }

    public String getContTags() {
        return contTags;
    }

    public void setContTags(String contTags) {
        this.contTags = contTags;
    }

    
}
