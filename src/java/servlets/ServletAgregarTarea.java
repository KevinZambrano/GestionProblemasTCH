/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import core.Preventiveaction;
import dao.DaoPreventiveaction;
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
@WebServlet(name = "ServletAgregarTarea", urlPatterns = {"/ServletAgregarTarea"})
public class ServletAgregarTarea extends HttpServlet {

    

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
        //processRequest(request, response);
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
        try{
            String idpbi = request.getParameter("txtIdProblema");
            String descripcion = request.getParameter("txtDescripcion");
            String responsable = request.getParameter("txtResponsable");
            String personaresponsable = request.getParameter("txtPersonaResponsable");
            String lineaservicio = request.getParameter("txtLineaServicio");
            String fechatermino = request.getParameter("txtFechaTermino");
            String estado = request.getParameter("txtEstado");
            SimpleDateFormat suma = new SimpleDateFormat(" HH:mm:ss");
            DaoPreventiveaction daoPreventiveaction = new DaoPreventiveaction();
            if(!daoPreventiveaction.agregar(new Preventiveaction(0,
                    Integer.parseInt(idpbi),
                    descripcion,
                    responsable,
                    personaresponsable,
                    lineaservicio,
                    fechatermino+suma.format(new Date()),
                    estado))){
                response.sendRedirect("ibm/accionesPreventivas.jsp?idpbi="+idpbi);
            }else{
                response.sendRedirect("error.jsp?mensaje=No se pudo agregar.");
            }
        }catch(Exception ex){
            
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
