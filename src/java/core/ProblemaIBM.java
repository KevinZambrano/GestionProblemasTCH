/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package core;

/**
 *
 * @author k.zambrano.torres
 */
public class ProblemaIBM {
    
    private int idproblema;
    private String mesproblema;
    private String estado;
    private String descripcion;
    private String fechaentregareal;
    private String fechainicioincidente;
    private String fechaterminoincidente;
    private String servicioafectado;

    public int getIdproblema() {
        return idproblema;
    }

    public void setIdproblema(int idproblema) {
        this.idproblema = idproblema;
    }

    public String getMesproblema() {
        return mesproblema;
    }

    public void setMesproblema(String mesproblema) {
        this.mesproblema = mesproblema;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFechaentregareal() {
        return fechaentregareal;
    }

    public void setFechaentregareal(String fechaentregareal) {
        this.fechaentregareal = fechaentregareal;
    }

    public String getFechainicioincidente() {
        return fechainicioincidente;
    }

    public void setFechainicioincidente(String fechainicioincidente) {
        this.fechainicioincidente = fechainicioincidente;
    }

    public String getFechaterminoincidente() {
        return fechaterminoincidente;
    }

    public void setFechaterminoincidente(String fechaterminoincidente) {
        this.fechaterminoincidente = fechaterminoincidente;
    }

    public String getServicioafectado() {
        return servicioafectado;
    }

    public void setServicioafectado(String servicioafectado) {
        this.servicioafectado = servicioafectado;
    }

    

    public ProblemaIBM(int idproblema, String mesproblema, String estado, String descripcion, String fechaentregareal, String fechainicioincidente, String fechaterminoincidente, String servicioafectado) {
        this.idproblema = idproblema;
        this.mesproblema = mesproblema;
        this.estado = estado;
        this.descripcion = descripcion;
        this.fechaentregareal = fechaentregareal;
        this.fechainicioincidente = fechainicioincidente;
        this.fechaterminoincidente = fechaterminoincidente;
        this.servicioafectado = servicioafectado;
    }

    public ProblemaIBM() {
    }
    
    
}