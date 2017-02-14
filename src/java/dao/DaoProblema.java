package dao;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conexion.ConexionBD;
import core.Anotacion;
import core.Problema;
import interfaces.DaoProblemaInterface;
import java.text.SimpleDateFormat;
import java.util.Date;

public class DaoProblema implements DaoProblemaInterface {

    public boolean agregar(Problema problema) throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("insert into problemas values('" + problema.getIdProblema() + "',"
                + "'" + problema.getEstado() + "',"
                + "'" + problema.getResumen() + "',"
                + "'" + problema.getGrupoAsignado() + "',"
                + "'" + problema.getUsuarioAsignado() + "',"
                + "'" + problema.getFechaEnvio() + "',"
                + "'" + problema.getFechaDeseada() + "',"
                + "'" + problema.getPrioridad() + "',"
                + "'" + problema.getFechaUltimaModificacion() + "')");
        if (consulta.execute()) {
            return true;
        } else {
            return false;
        }
    }

    /**
     *
     * @param idProblema
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public Problema buscar(int idProblema) throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("select * from problemas where idProblema='" + idProblema + "'");
        ResultSet rst = consulta.executeQuery();
        Problema problema = new Problema();
        while (rst.next()) {
            problema = new Problema(rst.getInt("idProblema"),
                    rst.getString("estado"),
                    rst.getString("resumen"),
                    rst.getString("grupoAsignado"),
                    rst.getString("usuarioAsignado"),
                    rst.getString("fechaEnvio"),
                    rst.getString("fechaDeseada"),
                    rst.getString("prioridad"),
                    rst.getString("fechaUltimaMod"));
        }
        return problema;
    }

    public boolean eliminar(int idProblema) throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("delete from problemas where idProblema='" + idProblema + "'");
        if (consulta.execute()) {
            return true;
        } else {
            return false;
        }
    }

    /**
     *
     * @param idProblema
     * @param problema
     * @return
     * @throws SQLException
     * @throws ClassNotFoundException
     */
    public boolean modificar(int idProblema, Problema problema) throws SQLException, ClassNotFoundException {
        SimpleDateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        String fechaUltimaMod = dateFormat.format(new Date());
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("update problemas set estado='" + problema.getEstado() + "',set resumen='" + problema.getResumen() + "', set grupoAsignado='" + problema.getGrupoAsignado() + "', set usuarioAsignado='" + problema.getUsuarioAsignado() + "',set fechaDeseada='" + problema.getFechaDeseada() + "', set prioridad='" + problema.getPrioridad() + "',set fechaUltimaMod='" + fechaUltimaMod + "' where idProblema='" + idProblema + "'");
        if (consulta.execute()) {
            return true;
        } else {
            return false;
        }
    }

    /**
     *
     * @return @throws SQLException
     * @throws ClassNotFoundException
     */
    public ArrayList<core.Problema> lista() throws SQLException, ClassNotFoundException {
        ConexionBD con = ConexionBD.getInstancia();
        PreparedStatement consulta = con.getConnection().prepareStatement("select * from problemas");
        ResultSet rst = consulta.executeQuery();
        ArrayList<Problema> lista = new ArrayList<Problema>();
        while (rst.next()) {
            lista.add(new Problema(rst.getInt("idProblema"),
                    rst.getString("estado"),
                    rst.getString("resumen"),
                    rst.getString("grupoAsignado"),
                    rst.getString("usuarioAsignado"),
                    rst.getString("fechaEnvio"),
                    rst.getString("fechaDeseada"),
                    rst.getString("prioridad"),
                    rst.getString("fechaUltimaMod")));
        }
        return lista;
    }

    @Override
    public int problemasBajoInvestigacion() throws SQLException, ClassNotFoundException {
        int total = 0;
        for (Problema problema : lista()) {
            if (problema.getEstado().equals("Bajo investigacion")
                    || problema.getEstado().equals("Bajo investigación")
                    || problema.getEstado().equals("Bajo investigaciÃ³n")) {
                total = total + 1;
            }
        }

        return total;
    }

    @Override
    public int problemasEnRevision() throws SQLException, ClassNotFoundException {
        int total = 0;
        for (Problema problema : lista()) {
            if (problema.getEstado().equals("En revisión")
                    || problema.getEstado().equals("En revision")
                    || problema.getEstado().equals("En revisiÃ³n")) {
                total = total + 1;
            }
        }

        return total;
    }

    @Override
    public int totalProblemas() throws SQLException, ClassNotFoundException {
        int total = 0;
        for (Problema problema : lista()) {

            total = total + 1;

        }
        return total;
    }

}
