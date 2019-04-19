<?php

namespace AppBundle\Controller;

use BackendBundle\Entity\Curriculum;
use BackendBundle\Entity\Intereses;
use BackendBundle\Entity\TipoTrabajo;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;
use Symfony\Component\HttpFoundation\Request;
use Symfony\Component\HttpFoundation\Response;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;
use BackendBundle\Entity\User;



/**
 * Curriculum controller.
 *
 * @Route("curriculum")
 */
class CurriculumController extends Controller
{
    /**
     * Lists all curriculum entities.
     *
     * @Route("/", name="curriculum_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();

        //$curricula = $em->getRepository('BackendBundle:Curriculum')->findAll();
        $user = $this->getUser();
        $curricula = $em->getRepository('BackendBundle:Curriculum')->findByUser($user);

        return $this->render('curriculum/index.html.twig', array(
            'curricula' => $curricula,
        ));
    }

    /**
     * Lists all curriculum entities.
     *
     * @Route("/databases", name="curriculum_all")
     * @Method("GET")
     */
    public function nuestrabaseAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();

        $curriculum = new Curriculum();
		$form = $this->createForm('AppBundle\Form\BuscadorType', $curriculum);

        $curricula = $em->getRepository('BackendBundle:Curriculum')->findAll();
        $paginator=$this->get('knp_paginator');
        $pagination = $paginator->paginate(
                $curricula, $request->query->getInt('page',1),5);


        return $this->render('curriculum/nuestrabase.html.twig', array(
            'pagination'=>$pagination,
            'form' => $form->createView(),
        ));

    }

    /**
     * Creates a new curriculum entity.
     *
     * @Route("/new", name="curriculum_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $em = $this->getDoctrine()->getManager();
        $user = $this->getUser();
        $curricula = $em->getRepository('BackendBundle:Curriculum')->findByUser($user);

        
        if (!count($curricula) < 1) {
            //echo "vacio";
            //exit;
            return $this->redirectToRoute('curriculum_index');
         }

        $curriculum = new Curriculum();
        $form = $this->createForm('AppBundle\Form\CurriculumType', $curriculum);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $user = $this->getUser();
            $curriculum->setUser($user);

            //Recoge video youtube y solo guarda el codigo para mostrar
            $video=$form->get("video")->getData();
            $salida = strstr($video,".be"); 
            $codigo=substr($salida, 4);  
            
            $curriculum->setVideo($codigo);

            $curriculum->setEstado(1);
            $curriculum->setFechaSuscripcion(new \DateTime("now"));

            $em->persist($curriculum);
            $em->flush();

            return $this->redirectToRoute('curriculum_show', array('id' => $curriculum->getId()));
        }

        return $this->render('curriculum/new.html.twig', array(
            'curriculum' => $curriculum,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a curriculum entity.
     *
     * @Route("/{id}", name="curriculum_show")
     * @Method("GET")
     */
    public function showAction(Request $request,Curriculum $curriculum)
    {
        $deleteForm = $this->createDeleteForm($curriculum);
        $em = $this->getDoctrine()->getManager();
        //$user = $this->getUser();
        //$experiencias = $em->getRepository('BackendBundle:Experiencia')->findByUser($user);
        $var = $request->get("id");
        $cv = $em->getRepository('BackendBundle:Curriculum')->findOneBy(
            array(
                "id"=> $var
            ));

        $idCV=$cv->getUser()->getId();
        //var_dump($idCV);exit;
        $experiencias = $em->getRepository('BackendBundle:Experiencia')->findBy(
            array(
                "user"=> $idCV
            ));


        return $this->render('curriculum/show.html.twig', array(
            'curriculum' => $curriculum,
            'experiencias' => $experiencias,
            'idCV' => $idCV,
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Displays a form to edit an existing curriculum entity.
     *
     * @Route("/{id}/edit", name="curriculum_edit")
     * @Method({"GET", "POST"})
     * 
     */
    public function editAction(Request $request, Curriculum $curriculum)
    {
        $deleteForm = $this->createDeleteForm($curriculum);
        $editForm = $this->createForm('AppBundle\Form\CurriculumType', $curriculum);
        $editForm->handleRequest($request);
        
        //Controlar usuario correcto para edicion
        $em = $this->getDoctrine()->getManager();
        $cv = $em->getRepository('BackendBundle:Curriculum')->findOneBy(
            array(
                "user"=> $this->getUser()->getId()
            ));
        
        $idCV=$cv->getId();    
        $var = $request->get("id");

        if ($idCV != $var){
            return $this->redirectToRoute("curriculum_index");
        }else{        
            if ($editForm->isSubmitted() && $editForm->isValid()) {
                //Recoge video youtube y solo guarda el codigo para mostrar
                $video=$editForm->get("video")->getData();
                $salida = strstr($video,".be"); 
                $codigo=substr($salida, 4);  

                //echo $codigo;exit;
                
                $curriculum->setVideo($codigo);
                $this->getDoctrine()->getManager()->flush();

                //return $this->redirectToRoute('curriculum_edit', array('id' => $curriculum->getId()));
                return $this->redirectToRoute('curriculum_new');
            }

        }

        return $this->render('curriculum/edit.html.twig', array(
            'curriculum' => $curriculum,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a curriculum entity.
     *
     * @Route("/{id}", name="curriculum_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Curriculum $curriculum)
    {
        $form = $this->createDeleteForm($curriculum);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($curriculum);
            $em->flush();
        }

        return $this->redirectToRoute('curriculum_index');
    }

    /**
     * Creates a form to delete a curriculum entity.
     *
     * @param Curriculum $curriculum The curriculum entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Curriculum $curriculum)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('curriculum_delete', array('id' => $curriculum->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }

    
}
