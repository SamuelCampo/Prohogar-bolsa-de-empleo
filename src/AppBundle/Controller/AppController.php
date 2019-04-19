<?php

namespace AppBundle\Controller;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Symfony\Component\HttpFoundation\Session\Session;

use BackendBundle\Entity\Curriculum;
use BackendBundle\Entity\User;

use AppBundle\Form\CurriculumType;
use AppBundle\Form\UserType;
use AppBundle\Form\RecuperarType;
use AppBundle\Form\ClaveType;

use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;


class AppController extends Controller {

	private $session;

	public function __construct() {
		$this->session = new Session();
	}

	public function homeAction(Request $request) {
		$em = $this->getDoctrine()->getManager();
		
		$curriculum = new Curriculum();
		$form = $this->createForm('AppBundle\Form\BuscadorType', $curriculum);
		
		//$curricula = $em->getRepository('BackendBundle:Curriculum')->findAll();
		$curricula = $em->getRepository('BackendBundle:Curriculum')
    	->findBy( array(), array('video' => 'desc'));
        $paginator=$this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $curricula, $request->query->getInt('page',1),4);
        return $this->render('AppBundle:App:home.html.twig', array(
			'pagination'=>$pagination,
			'form' => $form->createView(),
        ));
		
		/*
		return $this->render('AppBundle:App:home.html.twig',array(
		));
		*/
	}

	public function nosotrosAction(Request $request) {
        return $this->render('AppBundle:App:nosotros.html.twig');
	}

	public function quincetipsAction(Request $request) {
        return $this->render('AppBundle:App:quincetips.html.twig');
	}

	public function politicasprivacidadAction(Request $request) {
        return $this->render('AppBundle:App:politicasprivacidad.html.twig');
	}

	public function contactoAction(Request $request) {
		if ($request->isMethod('POST')) {
			$nombre=$request->get("nombre");
			$email=$request->get("email");
			$telefono=$request->get("telefono");
			$tema=$request->get("tema");
			$mensaje=$request->get("mensaje");
			if (($nombre=="")||($email=="")||($tema=="")||($mensaje=="")||($telefono=="")){
				return $this->render('AppBundle:App:contacto.html.twig');
			}

					$status = "Pronto nos pondremos en contacto.";
					$emailreceptor="itobar@prohogar.com.ec";
					//$emailreceptor="juanitourquiza@gmail.com";
					$asunto="Contacto cleanjob.com.ec";
            		$texto=$this->renderView(
               		'Emails/contacto.html.twig',
                	array(
							'nombre' => $nombre,
							'email' => $email,
							'telefono' => $telefono,
							'tema' => $tema,
							'mensaje' => $mensaje,
						)
           			);
					$this->get('app.enviomail_service')->sendEmail($emailreceptor,$asunto,$texto);

					$this->session->getFlashBag()->add("status", $status);
					return $this->redirect("home");
			
			//echo $nombre;
			//echo $email;
			//echo $tema;
			//echo $mensaje;
			//exit;
		}	
		return $this->render('AppBundle:App:contacto.html.twig');
	}

	public function registroAction(Request $request) {
		$user = new User();
		$form = $this->createForm(UserType::class, $user);
		
		//var_dump ($id); exit;

		$form->handleRequest($request);
		if ($form->isSubmitted()) {
			if ($form->isValid()) {
				$em = $this->getDoctrine()->getManager();
				//$user_repo = $em->getRepository("BackendBundle:User");

				$query = $em->createQuery('SELECT u FROM BackendBundle:User u WHERE u.email = :email')
					->setParameter('email', $form->get("email")->getData());
				$user_isset = $query->getResult();

				if (count($user_isset) == 0) {
					$factory = $this->get("security.encoder_factory");
					$encoder = $factory->getEncoder($user);

					$emailreceptor=$form->get("email")->getData();
					$claveactivacion=$form->get("password")->getData();
					$nombreusuario=$form->get("username")->getData();
					$asunto="Registro nuevo usuario";

					$password = $encoder->encodePassword($form->get("password")->getData(), $user->getSalt());
					$user->setPassword($password);

					//Luego coger del FORM el tipo de User
					 
					//$user->setImagen(null);
					//$user->setImagenFile(null);
					 $user->setRole("ROLE_USER");	
          			 $user->setEstado("1");

					//$fecha=new \DateTime('now');
					//$user->setUpdatedAt($fecha);
					

					$em->persist($user);
					$flush = $em->flush();

					
					$status = "Te has registrado correctamente";
						//Envio simple
						/*
						$emailService = $this->get('app.enviomail_service');
						
						$nombre=$nombreusuario;
						$email=$emailreceptor;
						$text = "De: " . $nombre
						. " Email: " . $email
						. " Mensaje: Este es un mensaje de prueba";
						$emailService->sendEmail(
						'juanitourquiza@gmail.com',
						'Formulario de contacto',
						$text
						);
						*/

            		$texto=$this->renderView(
               		'Emails/registration.html.twig',
                	array(
							'nombreusuario' => $nombreusuario,
							'emailreceptor' => $emailreceptor,
							'claveactivacion' => $claveactivacion
						)
           			);
					$this->get('app.enviomail_service')->sendEmail($emailreceptor,$asunto,$texto);

					$this->session->getFlashBag()->add("status", $status);
					return $this->redirect("login");
					
				} else {
					$status = "El Usuario ya existe !!";
				}
			} else {
				$status = "No te has registrado correctamente !!";
			}

			$this->session->getFlashBag()->add("status", $status);
		}
				
		return $this->render('AppBundle:App:registro.html.twig', array(
					"form" => $form->createView()
		));
		
	}

	public function registroclienteAction(Request $request) {
		$user = new User();
		$form = $this->createForm(UserType::class, $user);
		
		//var_dump ($id); exit;

		$form->handleRequest($request);
		if ($form->isSubmitted()) {
			if ($form->isValid()) {
				$em = $this->getDoctrine()->getManager();
				//$user_repo = $em->getRepository("BackendBundle:User");

				$query = $em->createQuery('SELECT u FROM BackendBundle:User u WHERE u.email = :email')
					->setParameter('email', $form->get("email")->getData());
				$user_isset = $query->getResult();

				if (count($user_isset) == 0) {
					$factory = $this->get("security.encoder_factory");
					$encoder = $factory->getEncoder($user);

					$emailreceptor=$form->get("email")->getData();
					$claveactivacion=$form->get("password")->getData();
					$nombreusuario=$form->get("username")->getData();
					$asunto="Registro nuevo usuario";

					$password = $encoder->encodePassword($form->get("password")->getData(), $user->getSalt());
					$user->setPassword($password);

					//Luego coger del FORM el tipo de User
					 
					//$user->setImagen(null);
					//$user->setImagenFile(null);
					 $user->setRole("ROLE_CLIENTE");	
          			 $user->setEstado("1");

					//$fecha=new \DateTime('now');
					//$user->setUpdatedAt($fecha);
					

					$em->persist($user);
					$flush = $em->flush();

					
					$status = "Te has registrado correctamente";
						//Envio simple
						/*
						$emailService = $this->get('app.enviomail_service');
						
						$nombre=$nombreusuario;
						$email=$emailreceptor;
						$text = "De: " . $nombre
						. " Email: " . $email
						. " Mensaje: Este es un mensaje de prueba";
						$emailService->sendEmail(
						'juanitourquiza@gmail.com',
						'Formulario de contacto',
						$text
						);
						*/

            		$texto=$this->renderView(
               		'Emails/registration.html.twig',
                	array(
							'nombreusuario' => $nombreusuario,
							'emailreceptor' => $emailreceptor,
							'claveactivacion' => $claveactivacion
						)
           			);
					$this->get('app.enviomail_service')->sendEmail($emailreceptor,$asunto,$texto);

					$this->session->getFlashBag()->add("status", $status);
					//return $this->redirect("login");
					return $this->redirectToRoute('login');
					
				} else {
					$status = "El Usuario ya existe !!";
				}
			} else {
				$status = "No te has registrado correctamente !!";
			}

			$this->session->getFlashBag()->add("status", $status);
		}
				
		return $this->render('AppBundle:App:registro.html.twig', array(
					"form" => $form->createView()
		));
		
	}


	public function loginAction(Request $request) {
		if (is_object($this->getUser())) {
			return $this->redirect('home');
		}

		$authenticationUtils = $this->get('security.authentication_utils');
		$error = $authenticationUtils->getLastAuthenticationError();
		$lastUsername = $authenticationUtils->getLastUsername();

		return $this->render('AppBundle:App:login.html.twig', array(
					'last_username' => $lastUsername,
					'error' => $error
		));
	}

	public function recuperarAction(Request $request) {
		$user = new User();
		$form = $this->createForm(RecuperarType::class, $user);

		$form->handleRequest($request);
		if ($form->isSubmitted()) {
			if ($form->isValid()) {
				$Obj = $this->getDoctrine()->getRepository('BackendBundle:User');
				$user_isset=$Obj->findOneByEmail($form->get("email")->getData());
				
				

				//$task = $em->getRepository('cursoTaskBundle:Task2')->find($id);
				
				//var_dump ($user_isset);
				//exit;

				if (count($user_isset) == 1) {
					

					$factory = $this->get("security.encoder_factory");
					$encoder = $factory->getEncoder($user);

					$em = $this->getDoctrine()->getManager();
					$user = $em->getRepository('BackendBundle:User')->find($user_isset->getId());

					$emailreceptor=$form->get("email")->getData();
					$claveactivacion=rand();
					//123456=$2y$04$wNg7iw3o.PoQvY7kY6FZhO54ng1Arrf8P4uYa1TOh1OXU84sghZxy
					$asunto="Clave temporal";

					$password = $encoder->encodePassword($claveactivacion, $user->getSalt());
					$user->setPassword($password);
					$em->persist($user);
					$flush = $em->flush();

					$status = "Clave modificada correctamente";
						//Envio simple
						/*
						$emailService = $this->get('app.enviomail_service');
						
						$nombre=$nombreusuario;
						$email=$emailreceptor;
						$text = "De: " . $nombre
						. " Email: " . $email
						. " Mensaje: Este es un mensaje de prueba";
						$emailService->sendEmail(
						'juanitourquiza@gmail.com',
						'Formulario de contacto',
						$text
						);
						*/

            		$texto=$this->renderView(
               		'Emails/clave.html.twig',
                	array(					
							'emailreceptor' => $emailreceptor,
							'claveactivacion' => $claveactivacion
						)
           			);
					$this->get('app.enviomail_service')->sendEmail($emailreceptor,$asunto,$texto);

					$this->session->getFlashBag()->add("status", $status);
					return $this->redirect("login");
					
				} else {
					$status = "El Usuario no esta registrado";
				}
			} else {
				$status = "No te has registrado correctamente !!";
			}

			$this->session->getFlashBag()->add("status", $status);
		}
				
		return $this->render('AppBundle:App:recuperar.html.twig', array(
					"form" => $form->createView()
		));
		
	}

	public function claveAction(Request $request) {
		$user = new User();
		$form = $this->createForm(ClaveType::class, $user);

		$form->handleRequest($request);
		if ($form->isSubmitted()) {
			if ($form->isValid()) {
					$factory = $this->get("security.encoder_factory");
					$encoder = $factory->getEncoder($user);

					$em = $this->getDoctrine()->getManager();
					$user = $em->getRepository('BackendBundle:User')->find($this->getUser()->getId());

					$password = $encoder->encodePassword($form->get("password")->getData(), $user->getSalt());
					$user->setPassword($password);
					
					$em->persist($user);
					$flush = $em->flush();

					$status = "Clave modificada correctamente";
					$this->session->getFlashBag()->add("status", $status);
					return $this->redirect("login");
			} else {
				$status = "No te has registrado correctamente !!";
			}
			$this->session->getFlashBag()->add("status", $status);
		}
		return $this->render('AppBundle:App:clave.html.twig', array(
					"form" => $form->createView()
		));
		
	}


    public function searchAction(Request $request) {
        $em=$this->getDoctrine()->getManager();

        $curriculum = new Curriculum();
		$form = $this->createForm('AppBundle\Form\BuscadorType', $curriculum);
        
        $form->handleRequest($request);

		
        $search=$form->get("ciudad")->getData()->getId();
        $search1=$form->get("tipoTrabajo")->getData()->getId();
        $search2=$form->get("sectorVivienda")->getData()->getId();
        $search3=$form->get("intereses")->getData()->getId();
		
		
		$dql="Select c from BackendBundle:Curriculum c "
             . " join BackendBundle:Intereses i "      
			 . "where c.tipoTrabajo = $search1 "
             . " or c.sectorVivienda = $search2 "
             . " or i.id = $search3 "
             . " or c.ciudad = $search"
			 
			 . "order by c.ciudad asc";
            $query=$em->createQuery($dql);
				
        
        //if ($form->isSubmitted() && $form->isValid()) {
            
            //->setParameter('search1',$search1);
            //->setParameter('search2',$search2);
            //->setParameter('search3',$search3);
            
            $paginator=$this->get('knp_paginator');
            $pagination = $paginator->paginate(
                    $query, $request->query->getInt('page',1),50);
            
            return $this->render('curriculum/nuestrabase.html.twig', array(
                'pagination'=>$pagination,
                'form' => $form->createView(),
            ));
        //}
    }

	public function busquedaAction(Request $request) {
		$isAjax = $request->isXmlHttpRequest();
		// Get your Datatable ...
		$datatable = $this->get('app.datatable.curriculum');
		$datatable->buildDatatable();
		// or use the DatatableFactory
		/** @var DatatableInterface $datatable */
		//$datatable = $this->get('sg_datatables.factory')->create(PostDatatable::class);
		//$datatable->buildDatatable();
		if ($isAjax) {
			$responseService = $this->get('sg_datatables.response');
			$responseService->setDatatable($datatable);
			$responseService->getDatatableQueryBuilder();
			return $responseService->getResponse();
		}
		return $this->render('curriculum/busqueda.html.twig', array(
		'datatable' => $datatable,
		));
    }

	/**
	 * Finds and displays a Post entity.
	 *
	 * @param Post $post
	 *
	 * @Route("/{_locale}/{id}.{_format}", name = "post_show", options = {"expose" = true})
	 * @Method("GET")
	 * @Security("has_role('ROLE_USER')")
	 *
	 * @return Response
	 */

	public function showAction(Post $post)
	{
		return $this->render('curriculum/muestra.html.twig', array(
			'post' => $post
		));
	}
}
