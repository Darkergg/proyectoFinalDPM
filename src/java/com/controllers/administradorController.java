/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.DaoAdministrador;
import com.modelo.Administrador;
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
@WebServlet(name = "AdministradorController", urlPatterns = {"/administradorController"})
public class administradorController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        RequestDispatcher rd = null;
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();

        Administrador admin = new Administrador();
        Usuarios user = new Usuarios();
        DaoAdministrador daoAdmin = new DaoAdministrador();
        String msj = null;

        try {

            if (request.getParameter("btnGuardar") != null) {
                user.setCodUsuario(Integer.parseInt(request.getParameter("selectUsuario")));
                admin.setUsuario(user);
                admin.setNombre(request.getParameter("txtNombre"));
                admin.setApellido(request.getParameter("txtApellidos"));
                admin.setPais(request.getParameter("cmbNacionalidad"));
                admin.setCiudad(request.getParameter("txtCiudad"));
                admin.setFechaNac(request.getParameter("txtFecha"));

                daoAdmin.insertAdmin(admin);
                msj = "Datos insertados correctamente";
                response.sendRedirect("SuperAdministrador/gestionarAdministrador.jsp");
            }
            if (request.getParameter("btnModificar") != null) {
                user.setCodUsuario(Integer.parseInt(request.getParameter("selectUsuario")));
                admin.setUsuario(user);
                admin.setNombre(request.getParameter("txtNombre"));
                admin.setApellido(request.getParameter("txtApellidos"));
                admin.setPais(request.getParameter("cmbNacionalidad"));
                admin.setCiudad(request.getParameter("txtCiudad"));
                admin.setFechaNac(request.getParameter("txtFecha"));
                admin.setIdAdmin(Integer.parseInt(request.getParameter("txtIdAdmin")));

                daoAdmin.modificarAdministrador(admin);
                msj = "Datos modificados correctamente";
                response.sendRedirect("SuperAdministrador/gestionarAdministrador.jsp");
            }
            if (request.getParameter("btnEliminar") != null) {
                admin.setIdAdmin(Integer.parseInt(request.getParameter("txtIdAdmin")));

                daoAdmin.eliminarAdministrador(admin);
                msj = "Datos eliminados correctamente";
                response.sendRedirect("SuperAdministrador/gestionarAdministrador.jsp");
            }
            rd = request.getRequestDispatcher("SuperAdministrador/gestionarAdministrador.jsp");
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
