package com.controllers;

import com.dao.DaoInvestigacion;
import com.modelo.Investigacion;
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
@WebServlet(name = "InvestigacionInvestigadorInvestigacionController", urlPatterns = {"/investigacionInvestigadorInvestigacionController"})
public class investigacionInvestigadorInvestigacionController extends HttpServlet {

    private final DaoInvestigacion daoInvest = new DaoInvestigacion();
    private final Investigacion invest = new Investigacion();

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession sesion = request.getSession();
        RequestDispatcher rd = null;

        try {
            //Seteando valores
            invest.setIdInvestigacion(Integer.parseInt(request.getParameter("txtIdInvestigacion")));

            if (request.getParameter("btnEdit") != null) {
                invest.setFecha(request.getParameter("txtFecha"));
                invest.setPortada(request.getParameter("image"));
                invest.setInvestigador(Integer.parseInt(request.getParameter("txtInvestigador")));
                invest.setContenido(request.getParameter("txtInvestigacion"));
                invest.setEstado(Integer.parseInt(request.getParameter("txtEstado")));
                invest.setPais(request.getParameter("cmbPais"));
                invest.setTitulo(request.getParameter("txtTitulo"));
                daoInvest.modificarInvestigacion(invest);
                response.sendRedirect("Investigador/misInvestigaciones.jsp");
                
            } else if (request.getParameter("btnDelete") != null) {
                daoInvest.eliminarInvestigacion(invest);
                response.sendRedirect("Investigador/misInvestigaciones.jsp");
            }
            rd = request.getRequestDispatcher("Investigador/misInvestigaciones.jsp");
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
