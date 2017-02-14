/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import core.Anotacion;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author k.zambrano.torres
 */
public interface DaoAnotacionInterface {

    public ArrayList<Anotacion> lista() throws SQLException, ClassNotFoundException;

    public boolean agregar(Anotacion anotacion) throws SQLException, ClassNotFoundException;
    
    public boolean eliminar(int idanotacion) throws SQLException, ClassNotFoundException;
}
