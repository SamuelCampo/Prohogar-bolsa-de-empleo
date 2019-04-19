<?php

namespace AppBundle\Twig;


//Extension que saca el nombre del dia
class EdadUsuarioExtension extends \Twig_Extension
{

public function getFunctions()
{

    return array(
    new \Twig_SimpleFunction('edad_usuario', array($this, 'edad_usuario')),
    );

}


public function getName()
{

    return 'edad_usuario_extension';

}


public function edad_usuario($fecha)
{

    $cumpleanos = new \DateTime($fecha);
    $hoy = new \DateTime();
    $edad = $hoy->diff($cumpleanos);
    //echo $annos->y;

    return $edad->y;

 }
}