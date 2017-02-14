package core;

public class Problema {

	private int idProblema;
	private String estado;
	private String resumen;
	private String grupoAsignado;
	private String usuarioAsignado;
	private String fechaEnvio;
	private String fechaDeseada;
	private String prioridad;
	private String fechaUltimaModificacion;
	/**
	 * @return the idProblema
	 */
	public int getIdProblema() {
		return idProblema;
	}
	/**
	 * @param idProblema the idProblema to set
	 */
	public void setIdProblema(int idProblema) {
		this.idProblema = idProblema;
	}
	/**
	 * @return the estado
	 */
	public String getEstado() {
		return estado;
	}
	/**
	 * @param estado the estado to set
	 */
	public void setEstado(String estado) {
		this.estado = estado;
	}
	/**
	 * @return the resumen
	 */
	public String getResumen() {
		return resumen;
	}
	/**
	 * @param resumen the resumen to set
	 */
	public void setResumen(String resumen) {
		this.resumen = resumen;
	}
	/**
	 * @return the grupoAsignado
	 */
	public String getGrupoAsignado() {
		return grupoAsignado;
	}
	/**
	 * @param grupoAsignado the grupoAsignado to set
	 */
	public void setGrupoAsignado(String grupoAsignado) {
		this.grupoAsignado = grupoAsignado;
	}
	/**
	 * @return the usuarioAsignado
	 */
	public String getUsuarioAsignado() {
		return usuarioAsignado;
	}
	/**
	 * @param usuarioAsignado the usuarioAsignado to set
	 */
	public void setUsuarioAsignado(String usuarioAsignado) {
		this.usuarioAsignado = usuarioAsignado;
	}
	/**
	 * @return the fechaEnvio
	 */
	public String getFechaEnvio() {
		return fechaEnvio;
	}
	/**
	 * @param fechaEnvio the fechaEnvio to set
	 */
	public void setFechaEnvio(String fechaEnvio) {
		this.fechaEnvio = fechaEnvio;
	}
	/**
	 * @return the fechaDeseada
	 */
	public String getFechaDeseada() {
		return fechaDeseada;
	}
	/**
	 * @param fechaDeseada the fechaDeseada to set
	 */
	public void setFechaDeseada(String fechaDeseada) {
		this.fechaDeseada = fechaDeseada;
	}
	/**
	 * @return the prioridad
	 */
	public String getPrioridad() {
		return prioridad;
	}
	/**
	 * @param prioridad the prioridad to set
	 */
	public void setPrioridad(String prioridad) {
		this.prioridad = prioridad;
	}
	/**
	 * @return the fechaUltimaModificacion
	 */
	public String getFechaUltimaModificacion() {
		return fechaUltimaModificacion;
	}
	/**
	 * @param fechaUltimaModificacion the fechaUltimaModificacion to set
	 */
	public void setFechaUltimaModificacion(String fechaUltimaModificacion) {
		this.fechaUltimaModificacion = fechaUltimaModificacion;
	}
	/**
	 * @param idProblema
	 * @param estado
	 * @param resumen
	 * @param grupoAsignado
	 * @param usuarioAsignado
	 * @param fechaEnvio
	 * @param fechaDeseada
	 * @param prioridad
	 * @param fechaUltimaModificacion
	 */
	public Problema(int idProblema, String estado, String resumen, String grupoAsignado, String usuarioAsignado,
			String fechaEnvio, String fechaDeseada, String prioridad, String fechaUltimaModificacion) {
		super();
		this.idProblema = idProblema;
		this.estado = estado;
		this.resumen = resumen;
		this.grupoAsignado = grupoAsignado;
		this.usuarioAsignado = usuarioAsignado;
		this.fechaEnvio = fechaEnvio;
		this.fechaDeseada = fechaDeseada;
		this.prioridad = prioridad;
		this.fechaUltimaModificacion = fechaUltimaModificacion;
	}
	/**
	 * 
	 */
	public Problema() {
		super();
	}
	/* (non-Javadoc)
	 * @see java.lang.Object#toString()
	 */
	@Override
	public String toString() {
		return "Problema [idProblema=" + idProblema + ", estado=" + estado + ", resumen=" + resumen + ", grupoAsignado="
				+ grupoAsignado + ", usuarioAsignado=" + usuarioAsignado + ", fechaEnvio=" + fechaEnvio
				+ ", fechaDeseada=" + fechaDeseada + ", prioridad=" + prioridad + ", fechaUltimaModificacion="
				+ fechaUltimaModificacion + "]";
	}
	
	
}
