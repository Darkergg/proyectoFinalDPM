/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Main.java to edit this template
 */
package com.conexion;

import static java.lang.System.out;

/**
 *
 * @author Alexander_Garcia
 */
public class Test {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws Exception {
        Conexion con=new Conexion();
        con.conectar();
        out.println(con.conectar());

    }
    
}
