/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package interfaces;

import core.ProblemaIBM;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author k.zambrano.torres
 */
public interface DaoProblemaIBMInterface {

    public ArrayList<ProblemaIBM> lista() throws SQLException, ClassNotFoundException;

    public boolean agregar(ProblemaIBM problema) throws SQLException, ClassNotFoundException;
    
}
