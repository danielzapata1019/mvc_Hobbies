package co.com.hobbies.servicios;
import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import co.com.udem.hobbies.jdbc.model.*;
import co.com.udem.hobbies.jdbc.dao.ObjetivoCamDAO;
import co.com.udem.hobbies.jdbc.dao.TipoCamDAO;
import co.com.udem.hobbies.jdbc.entity.Caminar;

public class CaminarServicesImpLocal implements CaminarServicesInterface{

	private ApplicationContext context;

	public List<CaminarDTO> getObjetivos() {

		context = new ClassPathXmlApplicationContext("Spring-Module.xml");

		// Se obtiene el servicio que implementa los servicios de la base de
		// datos
		ObjetivoCamDAO ojetivoDAO = (ObjetivoCamDAO) context.getBean("objetivoCamDAO");

		// Crear la lista con los DTO
		List<CaminarDTO> objetivoList = new ArrayList<CaminarDTO>();
		List<Caminar> objetivos = ojetivoDAO.getObjetivoList();
		for (Caminar objetivo : objetivos) {
			// Creando un objeto de la lista de tipo sesionDTO
			CaminarDTO objetivoDTO = new CaminarDTO();
			objetivoDTO.setImagen(objetivo.getImagen());
			objetivoDTO.setObjetivo(objetivo.getObjetivo());
			// Adicionando el objeto a la lista
			objetivoList.add(objetivoDTO);
		}
		return objetivoList;
	}
	
	public List<CaminarDTO> getTipos() {

		context = new ClassPathXmlApplicationContext("Spring-Module.xml");

		// Se obtiene el servicio que implementa los servicios de la base de
		// datos
		TipoCamDAO tipoDAO = (TipoCamDAO) context.getBean("tipoCamDAO");

		// Crear la lista con los DTO
		List<CaminarDTO> tipoList = new ArrayList<CaminarDTO>();
		List<Caminar> tipos = tipoDAO.getTipoList();
		for (Caminar tipo : tipos) {
			// Creando un objeto de la lista de tipo sesionDTO
			CaminarDTO tipoDTO = new CaminarDTO();
			tipoDTO.setImagen2(tipo.getImagen2());
			tipoDTO.setTitulo(tipo.getTitulo());
			tipoDTO.setDescripcion(tipo.getDescripcion());
			// Adicionando el objeto a la lista
			tipoList.add(tipoDTO);
		}
		return tipoList;
	}
	
}
