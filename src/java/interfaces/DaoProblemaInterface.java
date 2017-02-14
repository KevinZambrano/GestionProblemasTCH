package interfaces;

import java.sql.SQLException;
import java.util.ArrayList;

import core.Problema;

public interface DaoProblemaInterface {

	public ArrayList<Problema> lista() throws SQLException, ClassNotFoundException;

	public boolean agregar(Problema problema) throws SQLException, ClassNotFoundException;

	public Problema buscar(int idProblema) throws SQLException, ClassNotFoundException;
	
	public boolean eliminar(int idProblema) throws SQLException, ClassNotFoundException;
	
	public boolean modificar(int idProblema, Problema problema) throws SQLException, ClassNotFoundException;
        
        public int problemasBajoInvestigacion () throws SQLException, ClassNotFoundException;
        
        public int problemasEnRevision () throws SQLException, ClassNotFoundException;
        
        public int totalProblemas () throws SQLException, ClassNotFoundException;
}
