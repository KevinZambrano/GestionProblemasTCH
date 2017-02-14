/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import core.Preventiveaction;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author k.zambrano.torres
 */
public interface DaoPreventiveactionInterface {
    
     public ArrayList<Preventiveaction> lista() throws SQLException, ClassNotFoundException;

    public boolean agregar(Preventiveaction preventiveaction) throws SQLException, ClassNotFoundException;
}
