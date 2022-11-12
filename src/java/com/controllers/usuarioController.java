/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.controllers;

import com.dao.DaoIngresoUsuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Alexander_Garcia
 */
@WebServlet(name = "UsuarioController", urlPatterns = {"/usuarioController"})
public class usuarioController extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();

        if (request.getParameter("btnIngresar") != null) {
            DaoIngresoUsuario login = new DaoIngresoUsuario();
            String userName = request.getParameter("txtUserName");
            String password = request.getParameter("txtPassword");
            try {
                switch (login.login(userName, password)) {
                    case "1":
                        sesion.setAttribute("rol", "superAdministrador");
                        sesion.setAttribute("nombre", userName);
                        int id = login.idSuperAdmin(userName);
                        sesion.setAttribute("id", id);
                        response.sendRedirect("/ProyectoDAM/SuperAdministrador/dashBoardSuperAdmin.jsp");
                        break;
                    case "2":
                        sesion.setAttribute("rol", "administrador");
                        sesion.setAttribute("nombre", userName);
                        int id2 = login.idAdmin(userName);
                        sesion.setAttribute("id", id2);
                        response.sendRedirect("/ProyectoDAM/Admin/dashBoardAdmin.jsp");
                        break;
                    case "3":
                        sesion.setAttribute("rol", "investigador");
                        sesion.setAttribute("nombre", userName);
                        int id3 = login.idInvestigador(userName);
                        sesion.setAttribute("id", id3);
                        response.sendRedirect("/ProyectoDAM/Investigador/dashBoardInvestigador.jsp");
                        break;
                    default:
                        response.sendRedirect("/ProyectoDAM/error/login.jsp");
                        break;
                }
            } catch (Exception e) {
                Logger.getLogger(DaoIngresoUsuario.class.getName()).log(Level.SEVERE, null, e);
            }
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
