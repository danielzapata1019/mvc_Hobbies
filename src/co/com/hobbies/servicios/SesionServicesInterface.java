package co.com.hobbies.servicios;

import java.util.List;

import co.com.udem.hobbies.jdbc.model.*;

/**
 * Recuperar la informacion de los objetos sesion que se muestran en pantalla
 * @author Daniel
 *
 */

public interface SesionServicesInterface {
	
	public List<SesionDTO> getSesiones();
		
	

}
