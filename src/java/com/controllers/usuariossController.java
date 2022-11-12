/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.DaoUsuario;
import com.modelo.Usuarios;
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
 *
 * @author Virov
 */
@WebServlet(name = "UsuariossController", urlPatterns = {"/usuariossController"})
public class usuariossController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = null;
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();

        Usuarios users = new Usuarios();
        DaoUsuario daoUsers = new DaoUsuario();
        String msj = null;
        try {

            if (request.getParameter("btnGuardar") != null) {
                users.setUserName(request.getParameter("txtNombre"));
                users.setPassword(request.getParameter("txtPassword"));
                users.setRol(request.getParameter("cmbRoles"));

                daoUsers.insertarUsuario(users);
                msj = "Datos insertados correctamente";
                response.sendRedirect("SuperAdministrador/mantenimientoUsuario.jsp");
            }
            if (request.getParameter("btnModificar") != null) {
                users.setUserName(request.getParameter("txtNombre"));
                users.setPassword(request.getParameter("txtPassword"));
                users.setRol(request.getParameter("cmbRoles"));
                users.setCodUsuario(Integer.parseInt(request.getParameter("txtIdUsuario")));
                daoUsers.modificarUsuario(users);
                msj = "Datos modificados correctamente";
                response.sendRedirect("SuperAdministrador/mantenimientoUsuario.jsp");
            }
            if (request.getParameter("btnEliminar") != null) {
                users.setCodUsuario(Integer.parseInt(request.getParameter("txtIdUsuario")));

                daoUsers.eliminarUsuario(users);
                msj = "Datos eliminados correctamente";
                response.sendRedirect("SuperAdministrador/mantenimientoUsuario.jsp");
            }
            rd = request.getRequestDispatcher("SuperAdministrador/mantenimientoUsuario.jsp");
            //request.setAttribute("msj", msj);
        } catch (Exception e) {
            request.setAttribute("error", e.toString());
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
