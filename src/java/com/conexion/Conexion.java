package com.conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 * @author José Marroquin & Josué Aquino
 * clase: Conexion.java
 * packages: com.conexion
 * Fecha: 07/10/2022
 */

public class Conexion {
    private Connection con;

    public Connection getCon() {
        return con;
    }

    public void setCon(Connection con) {
        this.con = con;
    }
    
     public String conectar() throws SQLException{
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sistemainvestigacion?user=root&password=");
            return "Conexión exitosa";
            
        } catch (ClassNotFoundException | SQLException e) {
             e.getMessage();
            return "Error al conectar "+e.getMessage();
        }
    }
    
      public String desconectar() throws SQLException {
        try {
            if (con != null) {
                if (con.isClosed() == false) {
                    con.close(); 
                }
            }
            return "Desconecto Exitosamente";
        } catch (SQLException e) {
            e.getMessage();
            return "Error al desconectar"+e.getMessage();
        }
    }
}
