package co.com.hobbies.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import co.com.hobbies.servicios.CaminarServicesImpLocal;
import co.com.hobbies.servicios.CaminarServicesInterface;

@Controller
public class CaminarController {
	@RequestMapping(value="/pages/objetivo", method=RequestMethod.GET)//Necesitamos un action, Mandamos nombre del acction
		public ModelAndView objetivos(){
		
		/*Invocar el servicio*/
		
		//CaminarServicesInterface rObjetivo= new CaminarServicesImpLocal();
		
		ModelAndView model = new ModelAndView();
		model.addObject("objetivoobj",new CaminarServicesImpLocal().getObjetivos()); //lista de objetos hobby
		model.addObject("tipoobj", new CaminarServicesImpLocal().getTipos()); //lista de objetos hub
		model.setViewName("/pages/AireLibre");
		return model;
		
		/*Sesion sesion= new Sesion();//instanciamos el sesion
		sesion.setTitulo("Aire Libre");
		sesion.setImagen("resources/img/portfolio/aireLibre2.jpg");*///damos la direccion de una imagen
		
		/*ModelAndView modelAndView = new ModelAndView("/pages/AireLibre","objetivoobj", rObjetivo.getObjetivos());
		return modelAndView; 
		
	}
	
	public ModelAndView tipos(){
		
		/*Invocar el servicio*/
		
		/*CaminarServicesInterface rTipo= new CaminarServicesImpLocal();
		
		
		ModelAndView modelAndView = new ModelAndView("/pages/AireLibre","tipoobj", rTipo.getTipos());
		return modelAndView; 
		*/
	}

}



