package co.com.hobbies.servicios;

import java.util.ArrayList;
import java.util.List;

import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import co.com.udem.hobbies.jdbc.model.*;
import co.com.udem.hobbies.jdbc.dao.JDBCSesionDAO;
import co.com.udem.hobbies.jdbc.dao.SesionDAO;
import co.com.udem.hobbies.jdbc.entity.Sesion;
import co.com.udem.hobbies.jdbc.model.SesionDTO;


public class SesionServicesImplLocal implements SesionServicesInterface{
	
	private ApplicationContext context;

	public List<SesionDTO> getSesiones() {

		context = new ClassPathXmlApplicationContext("Spring-Module.xml");

		// Se obtiene el servicio que implementa los servicios de la base de
		// datos
		SesionDAO sesionDAO = (SesionDAO) context.getBean("sesionDAO");

		// Crear la lista con los DTO
		List<SesionDTO> sesionList = new ArrayList<SesionDTO>();
		List<Sesion> sesions = sesionDAO.getSesionList();
		for (Sesion sesion : sesions) {
			// Creando un objeto de la lista de tipo sesionDTO
			SesionDTO sesionDTO = new SesionDTO();
			sesionDTO.setTitulo(sesion.getTitulo());
			sesionDTO.setImagen(sesion.getImagen());
			sesionDTO.setLink(sesion.getLink());
			// Adicionando el objeto a la lista
			sesionList.add(sesionDTO);
		}
		return sesionList;
	}
	
	
	
	
	/*
	public List<SesionDTO> getSesiones(){
		
		SesionDAO sesionDAO = new JDBCSesionDAO();
		List<Sesion> sesions= sesionDAO.getSesionList();
		for(Sesion sesion: sesions){
			
		}
		
		/**crear la Lista*/
		
		/*List<SesionDTO> sesionList=new ArrayList<SesionDTO>();    //quien haga la instancia de este list sera un objeto
		
		/** creando un objeto*/
		/*SesionDTO sesion= new SesionDTO();//instanciamos el sesion
		sesion.setTitulo("Entretenimiento");
		sesion.setImagen("resources/img/portfolio/entretenimiento2.jpg");//damos la direccion de una imagen
		sesionList.add(sesion);
		
		SesionDTO sesion2= new SesionDTO();//instanciamos el sesion
		sesion2.setTitulo("Aire Libre");
		sesion2.setImagen("resources/img/portfolio/aireLibre2.jpg");//damos la direccion de una imagen
		sesion2.setLink("pages/AireLibre.jsp");
		sesionList.add(sesion2);
		
		SesionDTO sesion3= new SesionDTO();//instanciamos el sesion
		sesion3.setTitulo("Cursos");
		sesion3.setImagen("resources/img/portfolio/corazonMusic.jpg");//damos la direccion de una imagen
		sesionList.add(sesion3);
		
		SesionDTO sesion4= new SesionDTO();//instanciamos el sesion
		sesion4.setTitulo("Arte");
		sesion4.setImagen("resources/img/portfolio/arte.jpg");//damos la direccion de una imagen
		sesionList.add(sesion4);
		
		SesionDTO sesion5= new SesionDTO();//instanciamos el sesion
		sesion5.setTitulo("Deporte");
		sesion5.setImagen("resources/img/portfolio/deporte.jpg");//damos la direccion de una imagen
		sesionList.add(sesion5);
		
		SesionDTO sesion6= new SesionDTO();//instanciamos el sesion
		sesion6.setTitulo("Humanitario");
		sesion6.setImagen("resources/img/portfolio/humanitario.jpg");//damos la direccion de una imagen
		sesionList.add(sesion6);
		
		
		return sesionList;
		
	}
*/
}
