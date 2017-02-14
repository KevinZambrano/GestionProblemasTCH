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
public class Preventiveaction {
    
    private int idpa;
    private int idproblema;
    private String descripcion;
    private String responsable;
    private String personaresponsable;
    private String lineaservicio;
    private String fechatermino;
    private String estado;

    public int getIdpa() {
        return idpa;
    }

    public void setIdpa(int idpa) {
        this.idpa = idpa;
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

    public String getResponsable() {
        return responsable;
    }

    public void setResponsable(String responsable) {
        this.responsable = responsable;
    }

    public String getPersonaresponsable() {
        return personaresponsable;
    }

    public void setPersonaresponsable(String personaresponsable) {
        this.personaresponsable = personaresponsable;
    }

    public String getLineaservicio() {
        return lineaservicio;
    }

    public void setLineaservicio(String lineaservicio) {
        this.lineaservicio = lineaservicio;
    }

    public String getFechatermino() {
        return fechatermino;
    }

    public void setFechatermino(String fechatermino) {
        this.fechatermino = fechatermino;
    }

    public String getEstado() {
        return estado;
    }

    public void setEstado(String estado) {
        this.estado = estado;
    }

    public Preventiveaction(int idpa, int idproblema, String descripcion, String responsable, String personaresponsable, String lineaservicio, String fechatermino, String estado) {
        this.idpa = idpa;
        this.idproblema = idproblema;
        this.descripcion = descripcion;
        this.responsable = responsable;
        this.personaresponsable = personaresponsable;
        this.lineaservicio = lineaservicio;
        this.fechatermino = fechatermino;
        this.estado = estado;
    }

    public Preventiveaction() {
    }
    
    
}
