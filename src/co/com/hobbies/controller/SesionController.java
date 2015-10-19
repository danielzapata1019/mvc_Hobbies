package co.com.hobbies.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.com.hobbies.servicios.SesionServicesImplLocal;
import co.com.hobbies.servicios.SesionServicesInterface;

@Controller

public class SesionController {// crea el objeto tipo modelAndView
	
	@RequestMapping(value="/sesion", method=RequestMethod.GET)//Necesitamos un action, Mandamos nombre del acction
	public ModelAndView inicioSesiones(){
		
		/*Invocar el servicio*/
		
		SesionServicesInterface rSesion= new SesionServicesImplLocal();
		
		
		
		/*Sesion sesion= new Sesion();//instanciamos el sesion
		sesion.setTitulo("Aire Libre");
		sesion.setImagen("resources/img/portfolio/aireLibre2.jpg");*///damos la direccion de una imagen
		
		ModelAndView modelAndView = new ModelAndView("index","sesionobj", rSesion.getSesiones());//el New sesion es el nombre de la clase donde tenemos la portada
		return modelAndView; 
	}

}
