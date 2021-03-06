<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Cursos</title>

    <!-- Bootstrap Core CSS -->
    <link href="../resources/css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="../resources/css/cursos.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="../resources/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href='https://fonts.googleapis.com/css?family=Kaushan+Script' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Droid+Serif:400,700,400italic,700italic' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Roboto+Slab:400,100,300,700' rel='stylesheet' type='text/css'>

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->

</head>

<body id="page-top" class="index" link="black" vlink="yellow" alink="blue">

    <!-- Navigation -->
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header page-scroll">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand page-scroll" href="../sesion">Hobbies</a>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li class="hidden">
                        <a href="#page-top"></a>
                    </li>
                   
                    <li>
                        <a class="page-scroll" href="#page-top">Inicio</a>
                    </li>
                     <li>
                        <a class="page-scroll" href="#services">Objetivos</a>
                    </li>
                    <li>
                        <a class="page-scroll" href="#tipos">Tipos Caminada</a>
                    </li>
                    <li>
                       <a class="page-scroll" href="#team">Relacionados</a> 
                    </li>
                    <li>
                        <a class="page-scroll" href="#contact">Inscripciones</a>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <!-- Header2 -->
    <header>
        <div class="container">
            <div class="intro-text">
                <div class="intro-lead-in">Cursos</div>
                <div class="intro-heading">Musica</div>
                <a href="#services" class="page-scroll btn btn-xl">Leer M�s</a>
            </div>
        </div>
    </header>

    
   <!-- Services Section -->
    <section id="services">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Musica</h2>
                    <h3 class="section-subheading text-muted">Una Vibraci�n para el Coraz�n</h3>
                </div>
            </div>
            <div class="row text-center">
            <c:forEach items="${objetivoobj}" var="objetivoDTO">
                <div class="col-md-4">
                   <img class="img-circle" height="200" width="200" src=<c:out value="${objetivoDTO.imagen}"/>>
                    <h4 class="service-heading"></h4>
                    <p class="text-muted" align="justify"><c:out value="${objetivoDTO.objetivo}"/></p>
                </div>
                </c:forEach>
                
            </div>
        </div>
    </section>
    
    
    <!-- About Section -->
    <section id="tipos">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Tipos Caminada</h2>
                    <h3 class="section-subheading text-muted"></h3>
                </div>
            </div>
			       
				<table>
				 <c:forEach items="${tipoobj}" var="tipoDTO">
				 <div class="col-md-4">
                   <img class="img-circle" height="200" width="200" src=<c:out value="${tipoDTO.imagen2}"/>>
                    <h4 class="service-heading"></h4>
                    <p class="text-muted" align="justify"><c:out value="${tipoDTO.titulo}"/></p>
                    <p class="text-muted" align="justify"><c:out value="${tipoDTO.descripcion}"/></p>
                </div>	     
				  <tr>
					
					<td></td>
				    <td><img class="img-circle" src=<c:out value="${tipoDTO.imagen2}"/>></td>
				    <td>    </td>
				    <td>   </td>
				    <td>
                    <ul>
                        <li>                    
                         <h4 class="subheading"><c:out value="${tipoDTO.titulo}"/></h4>
                         <p class="text-muted" align="justify"><c:out value="${tipoDTO.descripcion}"/> </p>
    					 </li></ul>
                     </td> 
				    
				  </tr>
				  <tr></tr>
				  
				  </c:forEach>
				  
				</table>
           
                            
    </section>

    <!-- Team Section -->
    <section id="team" class="bg-light-gray">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Temas Relacionados</h2>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="../resources/img/team/camina6.jpg" height="250" width="300" class="img-rounded" alt="">
                        <p class="text-muted"> <a href="#portfolioModal1"class="portfolio-link" data-toggle="modal">Recomendaciones</a></p>
                        
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="../resources/img/team/Camina8.jpg" height="250" width="300" class="img-rounded" alt="">
                         <p class="text-muted"><a href="#portfolioModal2" class="portfolio-link" data-toggle="modal">Beneficios</a></p>
                        
                    </div>
                </div>
                <div class="col-sm-4">
                    <div class="team-member">
                        <img src="../resources/img/team/aireLibre.jpg" height="250" width="300" class="img-rounded" alt="">
                        <p class="text-muted"><a href="#portfolioModal3" class="portfolio-link" data-toggle="modal">Niveles Caminatas</a></p>
                        
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-lg-8 col-lg-offset-2 text-center">
                    <p class="large text-muted"></p>
                </div>
            </div>
        </div>
    </section>

    <!-- Clients Aside -->
   <!-- <aside class="clients">
        <div class="container">
            <div class="row">
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="../resources/img/logos/envato.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="../resources/img/logos/designmodo.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="../resources/img/logos/themeforest.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
                  <div class="col-md-3 col-sm-6">
                    <a href="#">
                        <img src="../resources/img/logos/creative-market.jpg" class="img-responsive img-centered" alt="">
                    </a>
                </div>
            </div>
        </div>
    </aside>-->
    
    <!-- Contact Section -->
    <section id="contact">
        <div class="container">
            <div class="row">
                <div class="col-lg-12 text-center">
                    <h2 class="section-heading">Inscripciones</h2>
                    <h3 class="section-subheading text-muted">Podras Inscribirte para participar en las caminadas programadas por el Inder Medellin</h3>
                </div>
            </div>
      
                <h1><font color="D7DF01">Pr�ximas Caminadas</font></h1>
                <br>
                <br>
                <table>
                <tr>
                 <td><img src="../resources/img/recorridos/12sep.png"></td>
                 <td><ul>
                 <font color="#ffffff">
                <li>Dia: 12 Septiembre</li>
                <li>Hora de salida: 07:00 a 07:30 am</li>
                <li>Punto de encuentro: Estaci�n Metro Estadio, plazoleta del ajedrez</li>
                <li>Recorrido: Altares Sagrados del Cerro el Volador</li>
                <li>Duraci�n: 4 Horas incluye las paradas técnicas</li>
                <li>Nivel: Nivel 2 Medio Bajo para caminantes principiantes</li>
                </ul></td>
                </tr>
                
                <tr>
                <td> <br></td>
                <td><br></td>
                </tr>
                
                <tr>
                <td> 
                <form>
                <font color="#ffffff">
                <table>
                <tr>
                <td>Nombres:</td>
                <td> <input type="text" id="txtNombre"></td>
                </tr>
                <tr>
                <td></td>
                <td></td>
                </tr>
                <tr>
                <td>Apellidos:</td>
                <td><input type="text" id="txtApellido"></td>
                </tr>
                 <tr>
                <td></td>
                <td></td>
                </tr>
                <tr>
                <td>Telefono:</td>
                <td><input type="text" id="txtTelefono"></td>
                </tr>
                 <tr>
                <td></td>
                <td></td>
                </tr>
                <tr>
                <td>Correo:</td>
                <td><input type="text" id="txtCorreo"></td></font>
                </tr>
                 <tr>
                <td></td>
                <td></td>
                </tr>
                 <tr>
                <td></td>
                <td></td>
                </tr>
                <tr>
                <td><button type="submit" class="btn btn-xl">Inscribirse</button></td>
                <td></td>
                </tr>
                </table>
                </font>
                </form>  </td>
                
                
                <td>   </td>
                </tr></table>
                
                
                <br>
                <br>
                
                
                
                    <!--  <form name="sentMessage" id="contactForm" novalidate>
                        <div class="row">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Your Name *" id="name" required data-validation-required-message="Please enter your name.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Your Email *" id="email" required data-validation-required-message="Please enter your email address.">
                                    <p class="help-block text-danger"></p>
                                </div>
                                <div class="form-group">
                                    <input type="tel" class="form-control" placeholder="Your Phone *" id="phone" required data-validation-required-message="Please enter your phone number.">
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <textarea class="form-control" placeholder="Your Message *" id="message" required data-validation-required-message="Please enter a message."></textarea>
                                    <p class="help-block text-danger"></p>
                                </div>
                            </div>
                            <div class="clearfix"></div>
                            <div class="col-lg-12 text-center">
                                <div id="success"></div>
                                <button type="submit" class="btn btn-xl">Send Message</button>
                            </div>
                        </div>
                    </form>-->
            
        </div>
    </section>

    <footer>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <span class="copyright">Copyright &copy; Your Website 2014</span>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline social-buttons">
                        <li><a href="#"><i class="fa fa-twitter"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-facebook"></i></a>
                        </li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a>
                        </li>
                    </ul>
                </div>
                <div class="col-md-4">
                    <ul class="list-inline quicklinks">
                        <li><a href="#">Privacy Policy</a>
                        </li>
                        <li><a href="#">Terms of Use</a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
    </footer>

    <!-- Portfolio Modals -->
    <!-- Use the modals below to showcase details about your portfolio projects! -->

    <!-- Portfolio Modal 1 -->
    <div class="portfolio-modal modal fade" id="portfolioModal1" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Recomendaciones</h2>
                            
                            <p align="center">Todas las personas deben responsabilizarse de seguir las siguientes recomendaciones:
								</p>
								<br>
								<br>
								<br>
								<p align="justify">
								<b>Seguridad:</b>
								
								Portar su botiquín personal, abstenerse de suministrar y recibir medicamentos de otras personas y usar  protector  solar.
								Abstenerse de participar, si se encuentra en estado de somnolencia (sin dormir), enfermo, con alguna condición especial que le impida caminar, en estado de embriaguez o enguayabado.
								Si consume medicamentos de control, asegurarse de tomarlos en las horas establecidas para evitar inconvenientes de salud durante la caminada.
								Evitar caminar solo e informar cualquier anomalía detectada en el recorrido; también debe informar si debe realizar alguna parada por fatiga o necesidad fisiológica.
								Evitar tocar los panales, nidos u otros animales, además de cercas con carga eléctrica o de púas y entre otros elementos que alteren la seguridad de la caminada y representen un riesgo para su integridad.
								Informar a la familia y/o persona responsable la actividad que va a realizar.
								Abstenerse de recoger frutas y flores de árboles, cultivos y del suelo.
								
								</p>
								<p align="justify">
								<b>Indumentaria:</b>
								
								Utilizar ropa cómoda y adecuada para caminar, preferiblemente de algodón y colores claros, pues refleja la luz solar y produce menos calor, camisa de manga larga, gorra o sombrero, medias y ropa liviana o de repuesto, zapatos de cuero y suela gruesa.
								Evitar emplear fajas o bolsas plásticas y  pantalones cortos ya que el follaje y las ramas pueden lacerar y cortar  la piel, además se expone a las picaduras de insectos; evitar usar ropa negra y de uso privativo de las fuerzas militares, policía, etc.
								Equipamiento:
								
								Utilizar morral con cargadera doble y cómoda para un adecuado balanceo, un plástico grande o carpa para protegerse de la lluvia o sentarse a descansar, termos plásticos para cargar líquidos (agua preferiblemente).
								Evitar llevar joyas, radios u objetos de valor y dinero en exceso.
								</p>
								<p align="justify">
								<b>Alimentación:</b>
								
								Es de vital importancia el consumo del desayuno, antes de la caminada, absténgase de caminar en ayunas; no practicar durante la caminada dietas especiales
								Se recomienda: portar agua, jugos, frutas, frutos secos (maní, nueces, almendras), productos energéticos para caminadas largas como bocadillo de guayaba, panela, arequipe, almuerzo higiénicamente preparado para evitar su deterioro. Evite incluir alimentos que se descompongan fácilmente con el cambio de temperatura, empacados herméticamente para evitar pérdidas o derrames.
								Llevar suficiente hidratación para los recorridos, un litro de agua por caminada, consumiendo pequeños sorbos de manera permanente.
								</p>
								<p align="justify">
								<b>Higiene:</b>
								
								Portar papel higiénico y bolsas para recoger las basuras (las basuras deben regresar a la casa de cada caminante o ser depositadas en las cestas de basura).
								</p>
								<p align="justify">
								<b>Recomendaciones Técnicas:</b>
								
								Se debe iniciar con la caminada que más se adecúe a su necesidad e interés, estado o nivel de entrenamiento (condición física); las caminadas de los niveles 1 y 2 son las recomendadas para principiantes.
								No se debe iniciar con las caminadas de nivel 3, porque son actividades que demandan un proceso de adaptación de varios meses, ya que estas tienen más kilómetros de recorrido y requieren más tiempo, además con ascensos y descensos no aptos para las personas que apenas se inician en la realización de actividad física.
								Las personas que presenten algún tipo de antecedente de lesión, deben tener en la cuenta que no es recomendable que participen de la caminada nivel 3.</p>

                        
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> cerrar </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 2 -->
    <div class="portfolio-modal modal fade" id="portfolioModal2" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <h2>Beneficios</h2>
                            
                           
                            <p align="justify">
                           <b>Acondicionamiento físico</b></p>
							<p align="justify">
							Práctica de ejercicio físico moderado y de mantenimiento.
							Prevención de enfermedades.
							Promoción de la salud.
							</p>
							<p align="justify">
							<b>Salud mental</b></p>
							<p align="justify">
							Excelente alternativa para el tiempo de ocio, la recreación y el uso creativo del tiempo libre.
							Relajación.
							Disfrute.  
							
							</p>
							
							<p align="justify">
							<b>Aprendizaje</b>
							</p>
							<p align="justify">
							Es una experiencia lúdico-pedagógica que brinda la posibilidad de intercambiar saberes entre los participantes y los lugareños.
							Conocimiento del medio ambiente.
							Conocimiento de la diversidad cultural.
							</p>
							<p align="justify">
							<b>Bienestar colectivo</b></p>
							<p align="justify">
							Las caminadas ecológicas son un espacio para:
							La socialización, la creación de nuevos vínculos y la inclusión social.
							El fortalecimiento del vínculo familiar y grupal.
							La dinamización de procesos de identidad y pertenencia.
							La reconstrucción del tejido social, presentando y promoviendo diferentes miradas de nuestros entornos geográficos, ecológicos, ambientales, históricos, culturales.
							La sana convivencia ciudadana, la tolerancia y la exaltación de valores biológicos, psicológicos, sociales, afectivos, proponiendo así una ecología humana.
							La sensibilidad ambiental y compromiso con otras formas de vida.
							
							</p>
							<p align="justify">
							<b>Conservación del medio ambiente</b></p>
							<p align="justify">
							Las caminadas ecológicas son un importante medio para promover la valoración y el cuidado del medio ambiente y la naturaleza:
							Partir de un inventario y/o reconocimiento previo de lugares significativos para las comunidades involucradas.
							Programarlas con un grupo de guías especializados que lidere la gestión y/o el proceso cultural comunitario.
							Difundir la accesibilidad al lugar, los medios de transporte y la hora de encuentro.
							Precisar la cantidad de participantes, su edad, su sexo y el interés del grupo.
							Inventariar previamente la historia, la geografía, la cultura, la espacialidad, el paisajismo y las características ambientales del recorrido.
							Prever y acordar el inicio y fin del recorrido, las paradas técnicas de descanso y reagrupamiento, las paradas de sensibilización ambiental y las paradas de alimentación.
							Informar previamente a los lugareños y autoridades del sector los objetivos e identificación del programa.
							Acordar previamente las recomendaciones a los practicantes para antes, durante y después de la caminada.
							Difundir y promover comportamientos humanos adecuados en ambientes naturales (cómo vestirse, hidratarse y comer). 
							
							</p>
							
							<p align="justify">
							El caminante es una persona alegre y sencilla que aprecia la compañía de los demás, que admira y respeta la naturaleza y está ávida de conocimientos.
							Capacidad de asombro y disfrute.
							Disposición para aprender.
							Responsabilidad social y ambiental.
							Respeto por los demás y por el entorno, solidaridad, tolerancia, sociabilidad.
							Valoración de la salud física y mental.
                            </p>
                            
                           
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i>Cerrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 3 -->
    <div class="portfolio-modal modal fade" id="portfolioModal3" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Niveles Caminadas</h2>
                            <br>
                            <br>
                            <p align="justify">
                            Los niveles de las caminadas se relacionan con el esfuerzo físico que se requiere para su realización, esto es, la sumatoria de diferentes  variantes como el tiempo de ejecución, kilómetros recorridos, temperatura ambiente, ascensos y descensos, también en el gasto de energía influyen las condiciones del terreno que se recorre. Se clasifican en:  
								<br><br>
								
								<b>Caminadas Nivel 1 o Bajo</b>
								
								Distancia: de 4 hasta 6 kilómetros. Hasta 2 horas de recorrido, incluyendo las paradas técnicas.
								
								Terrenos: planos, vías carreteables, superficies regulares, vías de interés de la ciudad, senderos y caminos reales.
								
								Altura: con ascensos y descensos hasta 200 metros y altitudes hasta de 2500 metros sobre el nivel del mar.
								
								Público a quién se dirigen: aptas para principiantes y pueden asistir personas desde los 10 años de edad. 
								
								<br>
								<br>
								<b>Caminadas Nivel 2 o Bajo Medio</b>
								
								Distancia: hasta 8 kilómetros. Hasta 4 horas de recorrido, incluye las paradas técnicas.
								
								Terrenos: planos, vía carreteables, senderos y caminos reales con leves ascensos y descensos.
								
								Altura: con ascensos y descensos hasta 400 metros y altitudes hasta 2500 metros sobre el nivel del mar.
								
								Público a quién se dirigen: aptas para principiantes y pueden asistir personas desde los 10 años de edad.
								
								<br>
								<br>
								<b>Caminadas Nivel 3 o Medio</b>
								
								
								Distancia: hasta 12 kilómetros.  6 horas de recorrido, incluyendo las paradas técnicas
								
								Terrenos: planos, vía carreteables, senderos y caminos reales con ascensos y descensos, caminos estrechos e irregulares.
								
								Altura: con ascensos y descensos hasta 600 metros y altitudes hasta 3100 metros sobre el nivel del mar.
								
								Público a quién se dirigen: aptas para personas con buen estado físico y activas desde los 10 años de edad. 
								</p>
                            
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Cerrar </button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 4 -->
    <div class="portfolio-modal modal fade" id="portfolioModal4" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-responsive img-centered" src="../resources/img/portfolio/golden-preview.png" alt="">
                            <p>Start Bootstrap's Agency theme is based on Golden, a free PSD website template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Golden is a modern and clean one page web template that was made exclusively for Best PSD Freebies. This template has a great portfolio, timeline, and meet your team sections that can be easily modified to fit your needs.</p>
                            <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/golden-free-one-page-web-template/">FreebiesXpress.com</a>.</p>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 5 -->
    <div class="portfolio-modal modal fade" id="portfolioModal5" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-responsive img-centered" src="../img/portfolio/escape-preview.png" alt="">
                            <p>Escape is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Escape is a one page web template that was designed with agencies in mind. This template is ideal for those looking for a simple one page solution to describe your business and offer your services.</p>
                            <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/escape-one-page-psd-web-template/">FreebiesXpress.com</a>.</p>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Portfolio Modal 6 -->
    <div class="portfolio-modal modal fade" id="portfolioModal6" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-content">
            <div class="close-modal" data-dismiss="modal">
                <div class="lr">
                    <div class="rl">
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-lg-8 col-lg-offset-2">
                        <div class="modal-body">
                            <!-- Project Details Go Here -->
                            <h2>Project Name</h2>
                            <p class="item-intro text-muted">Lorem ipsum dolor sit amet consectetur.</p>
                            <img class="img-responsive img-centered" src="../img/portfolio/dreams-preview.png" alt="">
                            <p>Dreams is a free PSD web template built by <a href="https://www.behance.net/MathavanJaya">Mathavan Jaya</a>. Dreams is a modern one page web template designed for almost any purpose. It’s a beautiful template that’s designed with the Bootstrap framework in mind.</p>
                            <p>You can download the PSD template in this portfolio sample item at <a href="http://freebiesxpress.com/gallery/dreams-free-one-page-web-template/">FreebiesXpress.com</a>.</p>
                            <button type="button" class="btn btn-primary" data-dismiss="modal"><i class="fa fa-times"></i> Close Project</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- jQuery -->
    <script src="../resources/js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="../resources/js/bootstrap.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-easing/1.3/jquery.easing.min.js"></script>
    <script src="../resources/js/classie.js"></script>
    <script src="../resources/js/cbpAnimatedHeader.js"></script>

    <!-- Contact Form JavaScript -->
    <script src="../resources/js/jqBootstrapValidation.js"></script>
    <script src="../resources/js/contact_me.js"></script>

    <!-- Custom Theme JavaScript -->
    <script src="../resources/js/agency.js"></script>

</body>

</html>
