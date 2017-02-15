/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.ConexionBD;
import core.Preventiveaction;
import interfaces.DaoPreventiveactionInterface;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author k.zambrano.torres
 */
public class DaoPreventiveaction implements DaoPreventiveactionInterface{

    @Override
    public ArrayList<Preventiveaction> lista() throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("select * from preventiveactions");
        ResultSet rst = consulta.executeQuery();
        ArrayList<Preventiveaction> lista = new ArrayList<Preventiveaction>();
        while(rst.next()){
            lista.add(new Preventiveaction(rst.getInt("idpa"),
                                           rst.getInt("idproblema"),
                                           rst.getString("descripcion"),
                                           rst.getString("responsable"),
                                           rst.getString("personaresponsable"),
                                           rst.getString("lineaservicio"),
                                           rst.getString("fechatermino"),
                                           rst.getString("estado")));
        }
        return lista;
    }

    @Override
    public boolean agregar(Preventiveaction preventiveaction) throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("insert into preventiveactions values(null,?,?,?,?,?,?,?)");
        consulta.setInt(1, preventiveaction.getIdproblema());
        consulta.setString(2, preventiveaction.getDescripcion());
        consulta.setString(3, preventiveaction.getResponsable());
        consulta.setString(4, preventiveaction.getPersonaresponsable());
        consulta.setString(5, preventiveaction.getLineaservicio());
        consulta.setString(6, preventiveaction.getFechatermino());
        consulta.setString(7, preventiveaction.getEstado());
        if(consulta.execute())
            return true;
        else
            return false;
    }
    
   
}
