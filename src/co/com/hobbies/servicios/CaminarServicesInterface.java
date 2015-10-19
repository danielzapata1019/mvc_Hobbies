package co.com.hobbies.servicios;
import java.util.List;

import co.com.udem.hobbies.jdbc.model.*;

public interface CaminarServicesInterface {
	
		public List<CaminarDTO> getObjetivos();
		public List<CaminarDTO> getTipos();
}

