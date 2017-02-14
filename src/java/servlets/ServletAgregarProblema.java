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
import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author k.zambrano.torres
 */
@WebServlet(name = "ServletAgregarProblema", urlPatterns = {"/ServletAgregarProblema"})
public class ServletAgregarProblema extends HttpServlet {

    

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
            String idproblema = request.getParameter("txtIdProblema");
            String estado = request.getParameter("txtEstado");
            String resumen = request.getParameter("txtResumen");
            String grupoAsignado = request.getParameter("txtGrupoAsignado");
            String usuarioAsignado = request.getParameter("txtUsuarioAsignado");
            String fechaDeseada = request.getParameter("txtFechaDeseada");
            String prioridad = request.getParameter("txtIdPrioridad");
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            SimpleDateFormat suma = new SimpleDateFormat(" HH:mm:ss");
            String fechaEnvio = dateFormat.format(new Date());
            DaoProblema daoProblema = new DaoProblema();
            
            
            if(!daoProblema.agregar(new Problema(Integer.parseInt(idproblema),
                                             estado,
                                             resumen, 
                                             grupoAsignado,
                                             usuarioAsignado,
                                             fechaEnvio, fechaDeseada+suma.format(new Date()), prioridad, fechaEnvio))){
                response.sendRedirect("amdocs/listaProblemas.jsp");
            }else{
                response.sendRedirect("amdocs/error.jsp?mensaje=No se pudo agregar.");
            }
        } catch (Exception es) {
                response.sendRedirect("amdocs/error.jsp?mensaje=No se pudo agregar.");
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
