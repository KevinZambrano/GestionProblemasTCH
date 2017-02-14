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
public class Anotacion {
    
    private int idanotacion;
    private int idproblema;
    private String descripcion;
    private String fechaAnotacion;

    public int getIdanotacion() {
        return idanotacion;
    }

    public void setIdanotacion(int idanotacion) {
        this.idanotacion = idanotacion;
    }

    public int getIdproblema() {
        return idproblema;
    }

    public void setIdproblema(int idproblema) {
        this.idproblema = idproblema;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getFechaAnotacion() {
        return fechaAnotacion;
    }

    public void setFechaAnotacion(String fechaAnotacion) {
        this.fechaAnotacion = fechaAnotacion;
    }

    public Anotacion(int idanotacion, int idproblema, String descripcion, String fechaAnotacion) {
        this.idanotacion = idanotacion;
        this.idproblema = idproblema;
        this.descripcion = descripcion;
        this.fechaAnotacion = fechaAnotacion;
    }

    public Anotacion() {
    }
    
    
}
