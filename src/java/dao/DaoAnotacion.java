/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import conexion.ConexionBD;
import core.Anotacion;
import interfaces.DaoAnotacionInterface;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author k.zambrano.torres
 */
public class DaoAnotacion implements DaoAnotacionInterface {

    @Override
    public ArrayList<Anotacion> lista() throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("select * from anotaciones");
        ResultSet rst = consulta.executeQuery();
        ArrayList<Anotacion> lista = new ArrayList<Anotacion>();
        while (rst.next()) {
            lista.add(new Anotacion(rst.getInt("idanotaciones"),
                    rst.getInt("idProblema"),
                    rst.getString("descripcion"),
                    rst.getString("fechaAnotacion")));
        }

        return lista;
    }

    @Override
    public boolean agregar(Anotacion anotacion) throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("insert into anotaciones values(null,'"+anotacion.getIdproblema()+"','"+anotacion.getDescripcion()+"','"+anotacion.getFechaAnotacion()+"')");
        if(consulta.execute())
            return true;
        else
            return false;
    }

    @Override
    public boolean eliminar(int idanotacion) throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("delete from anotaciones where idanotaciones='"+idanotacion+"'");
        if(consulta.execute())
            return true;
        else
            return false;
    }

}
