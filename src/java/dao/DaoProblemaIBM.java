/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.ConexionBD;
import core.ProblemaIBM;
import interfaces.DaoProblemaIBMInterface;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author k.zambrano.torres
 */
public class DaoProblemaIBM implements DaoProblemaIBMInterface {

    @Override
    public ArrayList<ProblemaIBM> lista() throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("select * from problemasibm");
        ResultSet rst = consulta.executeQuery();
        ArrayList<ProblemaIBM> lista = new ArrayList<ProblemaIBM>();
        while (rst.next()) {
            lista.add(new ProblemaIBM(rst.getInt("idproblema"),
                    rst.getString("mesproblema"),
                    rst.getString("estado"),
                    rst.getString("descripcion"),
                    rst.getString("fechaentregareal"),
                    rst.getString("fechainicioincidente"),
                    rst.getString("fechaterminoincidente"),
                    rst.getString("servicioafectado")));
        }
        return lista;
    }

    @Override
    public boolean agregar(ProblemaIBM problema) throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("insert into problemasibm values('" + problema.getIdproblema() + "',"
                + "'" + problema.getMesproblema() + "',"
                + "'" + problema.getEstado() + "',"
                + "'" + problema.getDescripcion() + "',"
                + "'" + problema.getFechaentregareal() + "',"
                + "'" + problema.getFechainicioincidente() + "',"
                + "'" + problema.getFechaterminoincidente() + "',"
                + "'" + problema.getServicioafectado() + "')");
                
        if (consulta.execute()) {
            return true;
        } else {
            return false;
        }
    }
    
    
}
