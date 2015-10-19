package co.com.hobbies.modelo;

import java.io.Serializable;

/**
 * Clase que contiene la Informacion de las sesiones de la portada
 * @author Daniel
 *
 */
public class SesionDTOold implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = 292407813194348828L;

	/**
	 * Titulo de la Sesion
	 */
	private String titulo;
	
	/**
	 * Imagen Asociada a la sesion
	 */
	private String imagen;
	
	private String link;
	
	
	public String getLink() {
		return link;
	}
	public void setLink(String link) {
		this.link = link;
	}
	public String getTitulo() {
		return titulo;
	}
	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}
	public String getImagen() {
		return imagen;
	}
	public void setImagen(String imagen) {
		this.imagen = imagen;
	}
	
	

}
