/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import core.Problema;
import dao.DaoProblema;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author k.zambrano.torres
 */
@WebServlet(name = "ServletModificarProblema", urlPatterns = {"/ServletModificarProblema"})
public class ServletModificarProblema extends HttpServlet {

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
        // processRequest(request, response);
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
        try {
            String id = request.getParameter("txtIdProblema");
            String estado = request.getParameter("txtEstado");
            String resumen = request.getParameter("txtResumen");
            String grupoasignado = request.getParameter("txtGrupoAsignado");
            String usuarioAsignado = request.getParameter("txtUsuarioAsignado");
            String fechaDeseada = request.getParameter("txtFechaDeseada");
            String prioridad = request.getParameter("txtPrioridad");

            Problema problema = new Problema(Integer.parseInt(id), estado, resumen, grupoasignado, usuarioAsignado, fechaDeseada, fechaDeseada, prioridad, fechaDeseada);
            DaoProblema daoProblema = new DaoProblema();
            if (daoProblema.modificar(Integer.parseInt(id), problema)) {
                response.sendRedirect("listaProblemas.jsp");
            } else {
                response.sendRedirect("error.jsp?mensaje=No se modifico problema.");
            }
        } catch (Exception ex) {
            response.sendRedirect("error.jsp?mensaje=No se modifico problema.");
        }
        //processRequest(request, response);
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
