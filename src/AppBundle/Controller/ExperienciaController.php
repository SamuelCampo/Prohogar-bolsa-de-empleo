<?php

namespace AppBundle\Controller;

use BackendBundle\Entity\Experiencia;
//use FOS\UserBundle\Entity\UserManager;
use Symfony\Bundle\FrameworkBundle\Controller\Controller;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Method;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Route;use Symfony\Component\HttpFoundation\Request;
use Sensio\Bundle\FrameworkExtraBundle\Configuration\Security;

/**
 * Experiencium controller.
 *
 * @Route("experiencia")
 */
class ExperienciaController extends Controller
{
    /**
     * Lists all experiencium entities.
     *
     * @Route("/", name="experiencia_index")
     * @Method("GET")
     */
    public function indexAction()
    {
        $em = $this->getDoctrine()->getManager();
        $user = $this->getUser();
        //$experiencias = $em->getRepository('BackendBundle:Experiencia')->findAll();
        $experiencias = $em->getRepository('BackendBundle:Experiencia')->findByUser($user);

        return $this->render('experiencia/index.html.twig', array(
            'experiencias' => $experiencias,
        ));
    }

    /**
     * Creates a new experiencium entity.
     *
     * @Route("/new", name="experiencia_new")
     * @Method({"GET", "POST"})
     */
    public function newAction(Request $request)
    {
        $experiencium = new Experiencia();
        $form = $this->createForm('AppBundle\Form\ExperienciaType', $experiencium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $user = $this->getUser();
            $experiencium->setUser($user);
            $em->persist($experiencium);
            $em->flush();

            return $this->redirectToRoute('experiencia_show', array('id' => $experiencium->getId()));
        }

        return $this->render('experiencia/new.html.twig', array(
            'experiencium' => $experiencium,
            'form' => $form->createView(),
        ));
    }

    /**
     * Finds and displays a experiencium entity.
     *
     * @Route("/{id}", name="experiencia_show")
     * @Method("GET")
     */
    public function showAction(Request $request, Experiencia $experiencium)
    {
        $deleteForm = $this->createDeleteForm($experiencium);
        $em = $this->getDoctrine()->getManager();
        $var = $request->get("id");

        $cv = $em->getRepository('BackendBundle:Experiencia')->findOneBy(
            array(
                "id"=> $var
            ));
        
        $idCV=$cv->getUser()->getId();
        $var=$this->getUser()->getId();
        
        if ($idCV != $var){
            return $this->redirectToRoute("experiencia_index");
        }else{
            return $this->render('experiencia/show.html.twig', array(
                'experiencium' => $experiencium,
                'delete_form' => $deleteForm->createView(),
                'idCV' => $idCV,
            ));
        }
    }

    /**
     * Displays a form to edit an existing experiencium entity.
     *
     * @Route("/{id}/edit", name="experiencia_edit")
     * @Method({"GET", "POST"})
     */
    public function editAction(Request $request, Experiencia $experiencium)
    {
        $deleteForm = $this->createDeleteForm($experiencium);
        $editForm = $this->createForm('AppBundle\Form\ExperienciaType', $experiencium);
        $editForm->handleRequest($request);

        //Controlar usuario correcto para edicion
        $em = $this->getDoctrine()->getManager();
       
        $var = $request->get("id");

        $cv = $em->getRepository('BackendBundle:Experiencia')->findOneBy(
            array(
                "id"=> $var
            ));
        
        $idCV=$cv->getUser()->getId();
        $var=$this->getUser()->getId();
        
        //var_dump ($idCV);
        //var_dump ($var);
        //exit;
        
        if ($idCV != $var){
            return $this->redirectToRoute("experiencia_index");
        }else{
            if ($editForm->isSubmitted() && $editForm->isValid()) {
                $user = $this->getUser();
                $experiencium->setUser($user);
                $this->getDoctrine()->getManager()->flush();

                //return $this->redirectToRoute('experiencia_edit', array('id' => $experiencium->getId()));
                return $this->redirectToRoute('experiencia_index');
            }
        }

        return $this->render('experiencia/edit.html.twig', array(
            'experiencium' => $experiencium,
            'edit_form' => $editForm->createView(),
            'delete_form' => $deleteForm->createView(),
        ));
    }

    /**
     * Deletes a experiencium entity.
     *
     * @Route("/{id}", name="experiencia_delete")
     * @Method("DELETE")
     */
    public function deleteAction(Request $request, Experiencia $experiencium)
    {
        $form = $this->createDeleteForm($experiencium);
        $form->handleRequest($request);

        if ($form->isSubmitted() && $form->isValid()) {
            $em = $this->getDoctrine()->getManager();
            $em->remove($experiencium);
            $em->flush();
        }

        return $this->redirectToRoute('experiencia_index');
    }

    /**
     * Creates a form to delete a experiencium entity.
     *
     * @param Experiencia $experiencium The experiencium entity
     *
     * @return \Symfony\Component\Form\Form The form
     */
    private function createDeleteForm(Experiencia $experiencium)
    {
        return $this->createFormBuilder()
            ->setAction($this->generateUrl('experiencia_delete', array('id' => $experiencium->getId())))
            ->setMethod('DELETE')
            ->getForm()
        ;
    }
    
}
