package com.controllers;

import com.dao.*;
import com.modelo.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * @author José Marroquin & Josué Aquino clase: Conexion.java packages:
 * com.conexion Fecha: 07/10/2022
 */
@WebServlet(name = "PaisesController", urlPatterns = {"/paisesController"})
public class PaisesController extends HttpServlet {

    private final DaoPais daoPais = new DaoPais();
    private final Paises Pa = new Paises();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();
        RequestDispatcher rd = null;

        try {
            //Seteando valores
            Pa.setIdPais(Integer.parseInt(request.getParameter("txtIdPais")));
            Pa.setPais(request.getParameter("txtPais"));
            
            if (request.getParameter("btnAdd") != null) {
                daoPais.insertarPaises(Pa);
                response.sendRedirect("SuperAdministrador/paises.jsp");
            } else if (request.getParameter("btnEdit") != null) {
                Pa.setPais(request.getParameter("txtActPais"));
                daoPais.modificarPaises(Pa);
                response.sendRedirect("SuperAdministrador/paises.jsp");
            } else if (request.getParameter("btnDelete") != null) {
                daoPais.eliminarPaises(Pa);
                response.sendRedirect("SuperAdministrador/paises.jsp");
            }
            rd = request.getRequestDispatcher("SuperAdministrador/paises.jsp");
        } catch (Exception e) {
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
