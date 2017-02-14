/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import core.ProblemaIBM;
import dao.DaoProblemaIBM;
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
@WebServlet(name = "ServletAgregarProblemaIBM", urlPatterns = {"/ServletAgregarProblemaIBM"})
public class ServletAgregarProblemaIBM extends HttpServlet {

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
            String idproblema = request.getParameter("txtIdProblema");
            String mesproblema = request.getParameter("txtMesProblema");
            String estado = request.getParameter("txtEstado");
            String descripcion = request.getParameter("txtDescripcion");
            String fechaentregareal = request.getParameter("txtFechaEntregaReal");
            String fechainicioincidente = request.getParameter("txtFechaInicioIncidente");
            String fechaterminoincidente = request.getParameter("txtFechaTerminoIncidente");
            String servicioafectado = request.getParameter("txtServicioAfectado");
            /*String acciones = request.getParameter("txtAcciones");
            String responsable = request.getParameter("txtResponsable");
            String personaresponsable = request.getParameter("txtPersonaResponsable");
            String lineaservicio = request.getParameter("txtLineaServicio");
            String fechatermino =request.getParameter("txtFechaTermino");
            String estadopa = request.getParameter("txtEstadoPA");*/
            SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
            SimpleDateFormat suma = new SimpleDateFormat(" HH:mm:ss");
            
            DaoProblemaIBM daoProblemaIBM = new DaoProblemaIBM();
            ProblemaIBM problema = new ProblemaIBM(Integer.parseInt(idproblema),
                                                   mesproblema,
                                                   estado,
                                                   descripcion,
                                                   fechaentregareal+suma.format(new Date()),
                                                   fechainicioincidente+suma.format(new Date()),
                                                   fechaterminoincidente+suma.format(new Date()),
                                                   servicioafectado);
            if(!daoProblemaIBM.agregar(problema))
                response.sendRedirect("ibm/listaProblemas.jsp");
            else
                response.sendRedirect("ibm/error.jsp?mensaje=No se pudo agregar.");
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
