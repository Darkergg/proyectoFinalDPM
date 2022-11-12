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
@WebServlet(name = "EstadoController", urlPatterns = {"/estadoController"})
public class EstadoController extends HttpServlet {

    private final DaoEstado daoEst = new DaoEstado();
    private final Estado est = new Estado();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();
        RequestDispatcher rd = null;

        try {
            //Seteando valores
            est.setIdEstado(Integer.parseInt(request.getParameter("txtIdEstado")));
            est.setEstado(request.getParameter("txtEstado"));
            
            if (request.getParameter("btnAdd") != null) {
                daoEst.insertarEstado(est);
                response.sendRedirect("SuperAdministrador/estado.jsp");
            } else if (request.getParameter("btnEdit") != null) {
                est.setEstado(request.getParameter("txtActEstado"));
                daoEst.modificarEstado(est);
                response.sendRedirect("SuperAdministrador/estado.jsp");
            } else if (request.getParameter("btnDelete") != null) {
                daoEst.eliminarEstado(est);
                response.sendRedirect("SuperAdministrador/estado.jsp");
            }
            rd = request.getRequestDispatcher("SuperAdministrador/estado.jsp");
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
