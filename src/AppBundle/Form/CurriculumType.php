<?php

namespace AppBundle\Form;

use Symfony\Component\Form\AbstractType;
use Symfony\Component\Form\FormBuilderInterface;
use Symfony\Component\OptionsResolver\OptionsResolver;
use Symfony\Component\Form\Extension\Core\Type\DateType;

use Symfony\Bridge\Doctrine\Form\Type\EntityType;
use Symfony\Component\Form\Extension\Core\Type\ChoiceType;
use Vich\UploaderBundle\Form\Type\VichFileType;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\Form\Extension\Core\Type\FileType;
use Symfony\Component\Form\Extension\Core\Type\TextareaType;

class CurriculumType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $now = new \DateTime();
        $builder
            //->add('intereses')
            ->add('intereses', EntityType::class, array(
                'label' => 'Trabajos que puede realizar',
                'class' => 'BackendBundle:Intereses',
                'expanded' => true,
                'multiple' => true,
                'required' => false,
                'query_builder' => null, // omit it will load all entity by default
                'by_reference' => true, // not needed
                // Using new option introduced in 2.7 see the [doc](http://symfony.com/doc/2.7/reference/forms/types/choice.html#choice-value)
                
            ))
            //->add('tipoTrabajo')
            ->add('tipoTrabajo', null, array(
                'label' => 'Busco trabajo de',
                'required' => true,
                'attr' => array('class' => 'myclass')
            )) 
            ->add('horarioTrabajo', null, array(
                'label' => 'Horario de Trabajo',
                'required' => true,
                'attr' => array('class' => 'myclass')
            )) 
            ->add('horasLibres', null, array(
                'label' => 'Acepto horas libres extras',
                
            ))
            ->add('aspiracionSalarial', null, array(
                'label' => 'Cual es tu aspiración salarial',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('cedula', null, array(
                'label' => 'Ingrese Cédula o Pasaporte',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('cedulasimagenesFile', FileType::class,array(
                    'label' => 'Subir cédula de identidad',
                    'required'=> false,
            ))
            ->add('nombre', null, array(
                'label' => 'Nombres',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))           
            ->add('apellido', null, array(
                'label' => 'Apellidos',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('biografia', TextareaType::class, array(
                'label' => 'Como me identifico, Identifiquese utilizando un máximo de 500 caracteres',
                'required' => true,
                'attr' => array('class' => 'myclass',
                                'maxlength' => '500')
            ))
            ->add('fechaNacimiento', DateType::class, array(
                'label' => 'Fecha de Nacimiento',
                'widget' => 'single_text',
                'html5' => false,
                'required'=> true,
                'attr' => array(
                    'class' => 'form-control ct-input-bg input-lg input-inline datepicker myclass',
                    'placeholder' => 'aaaa-mm-dd',
                    'data-provide' => 'datepicker',
                    'data-date-format' => 'yyyy-mm-dd',
                    'data-date-autoclose' => true,
                    //'data-date-start-date' => $now->format('Y-m-d'),
                    'data-date-role' => 'init'
                )
            ))
            ->add('sexo', null, array(
                'label' => 'Sexo',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('signoZodiaco', null, array(
                'label' => 'Signo del Zodíaco',
                'attr' => array('class' => 'myclass')
            ))
            ->add('pais', null, array(
                'label' => 'Donde Naciste?',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('ciudad', null, array(
                'label' => 'Ciudad de Residencia?',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('estadoCivil', null, array(
                'label' => 'Estado Civil',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('direccion', null, array(
                'label' => 'Dirección Exacta',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('barrio', null, array(
                'label' => 'En que barrio de la cuidad vives',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('sectorVivienda', null, array(
                'label' => 'En que sector de la ciudad vives ',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('vivienda', null, array(
                'label' => 'Tu casa es',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('tiempoarriendo', null, array(
                'label' => 'Indique que tiempo arrienda',
                'required' => true,
                'attr' => array('class' => 'myclass',
                                'readonly' => 'true')
            ))

            ->add('tieneHijos', null, array(
                'required' => true,
                'label' => 'Tiene Hijos',
                
            ))
            ->add('hijos', null, array(
                'label' => 'Indique cuantos hijos tiene',
                'attr' => array('class' => 'myclass',
                                'readonly' => 'true')
            ))
            ->add('detalleHijos', TextareaType::class, array(
                'label' => 'Indique sexo, edad de sus hijos y quien los cuida mientras trabaja?',
                'attr' => array('class' => 'myclass',
                                'readonly' => 'true',
                                'maxlength' => '1000',
                                'placeholder'=>'Utilice un renglon para cada niño: Sexo, Edad')
            ))

            ->add('madreSoltera', null, array(
                'label' => 'Eres madre soltera',
                
            ))
            ->add('ligadura', null, array(
                'label' => 'Ya te realizaste la ligadura',
                
            ))
            ->add('raza', null, array(
                'label' => 'Etnia',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('celular', null, array(
                'label' => 'Número de teléfono celular',
                'required' => true,
                'attr' => array('class' => 'myclass')
            ))
            ->add('otrocelular', null, array(
                'label' => 'Número de teléfono celular (Adicional)',
                'attr' => array('class' => 'myclass')
            ))
            ->add('telefono', null, array(
                'label' => 'Número de teléfono fijo',
                'attr' => array('class' => 'myclass')
            ))
            ->add('religion', null, array(
                'label' => 'Religión',
                'attr' => array('class' => 'myclass')
            ))
            ->add('discapacidad', null, array(
                'label' => 'Tienes alguna discapacidad',
            ))
            ->add('tipoDiscapacidad', null, array(
                    'label' => 'Si corresponde indique Que tipo de discapacidad tiene?',
                    'attr' => array('class' => 'myclass',
                                    'readonly' => 'true')
            ))
            ->add('porcentajeDiscapacidad', null, array(
                'label' => 'Si corresponde, indique que porcentaje de discapacidad tiene?',
                'attr' => array('class' => 'myclass',
                                'readonly' => 'true')
            ))     
                
            
            ->add('idiomas', EntityType::class, array(
                'label' => 'Que idiomas hablas',
                'class' => 'BackendBundle:Idiomas',
                'expanded' => true,
                'multiple' => true,
                'required' => false,
                'query_builder' => null, // omit it will load all entity by default
                'by_reference' => true, // not needed
                // Using new option introduced in 2.7 see the [doc](http://symfony.com/doc/2.7/reference/forms/types/choice.html#choice-value)
                
            ))
            ->add('estudios', null, array(
                'label' => 'Estudios realizados',
                'attr' => array('class' => 'myclass')
            ))

            ->add('capacitacion', null, array(
                'label' => 'Indique sus cursos de capacitación',
                'attr' => array('class' => 'myclass')
            ))

            ->add('conducir', null, array(
                'label' => 'Sabes conducir automóvil',
                
            ))

            ->add('licencia', null, array(
                'label' => 'Que tipo de licencia tiene?',
                'attr' => array('class' => 'myclass',
                                'readonly' => 'true')
            ))
            ->add('licenciasimagenesFile', FileType::class,array(
                    'label' => 'Subir licencia',
                    'required'=> false,
                    'attr' => array('readonly' => 'true')
            ))
            ->add('aptitudes', EntityType::class, array(
                'class' => 'BackendBundle:Aptitudes',
                'expanded' => true,
                'multiple' => true,
                'required' => false,
                'query_builder' => null, // omit it will load all entity by default
                'by_reference' => true, // not needed
                // Using new option introduced in 2.7 see the [doc](http://symfony.com/doc/2.7/reference/forms/types/choice.html#choice-value)
                
            ))

            ->add('nivelCocina', ChoiceType::class, array(
                'label' => 'Cuál es su nivel de conocimiento de cocina?',
                'attr' => array('class' => 'myclass'),
                'choices' => array(
                    'Escoja una opción' => 'No aplica',
                    'Básico' => 'Básico',
                    'Muy Bien' => 'Muy Bien',                    
                    'Excelente' => 'Excelente',
                )
            ))

            ->add('nivelLimpieza', ChoiceType::class, array(
                'label' => 'Cuál es su nivel de conocimiento de limpieza?',
                'attr' => array('class' => 'myclass'),
                'choices' => array(
                    'Escoja una opción' => 'No aplica',
                    'Básico' => 'Básico',
                    'Muy Bien' => 'Muy Bien',                    
                    'Excelente' => 'Excelente',
                )
            ))

            ->add('nivelPlancha', ChoiceType::class, array(
                'label' => 'Cuál es su nivel de conocimiento en planchado?',
                'attr' => array('class' => 'myclass'),
                'choices' => array(
                    'Escoja una opción' => 'No aplica',
                    'Básico' => 'Básico',
                    'Muy Bien' => 'Muy Bien',                    
                    'Excelente' => 'Excelente',
                )
            ))

            ->add('responsabilidades', EntityType::class, array(
                'class' => 'BackendBundle:Responsabilidades',
                'expanded' => true,
                'multiple' => true,
                'required' => false,
                'query_builder' => null, // omit it will load all entity by default
                'by_reference' => true, // not needed
                // Using new option introduced in 2.7 see the [doc](http://symfony.com/doc/2.7/reference/forms/types/choice.html#choice-value)
                
            ))
            ->add('tipoSangre', null, array(
                'label' => 'Tipo de Sangre',
                'attr' => array('class' => 'myclass')
            ))
            ->add('estatura', null, array(
                'label' => 'Estatura en centimetros',
                'attr' => array('class' => 'myclass')
            ))
            ->add('peso', null, array(
                'label' => 'Peso en libras',
                'attr' => array('class' => 'myclass')
            ))

            ->add('enfermedades', EntityType::class, array(
                'class' => 'BackendBundle:Enfermedades',
                'expanded' => true,
                'multiple' => true,
                'required' => false,
                'query_builder' => null, // omit it will load all entity by default
                'by_reference' => true, // not needed
                // Using new option introduced in 2.7 see the [doc](http://symfony.com/doc/2.7/reference/forms/types/choice.html#choice-value)
                
            ))
            ->add('otraEnfermedad', null, array(
                'label' => 'Otra enfermedad',
                'attr' => array('class' => 'myclass')
            ))

            ->add('servicioFile', FileType::class,array(
                    'label' => 'Planilla de Servico Básico',
                    'required'=> false,
                 ))
            
            ->add('carnetFile', FileType::class,array(
                    'label' => 'Carnet del Conadis',
                    'required'=> false,
                 ))
                 
            ->add('certificadoFile', FileType::class,array(
                    'label' => 'Mecanizado del IESS (Certificado Laboral)',
                    'required'=> false,
                 ))     
            
            ->add('imageFile', FileType::class,array(
                'label' => 'Fotografía Formal',
                'required'=> false,
                 ))

            ->add('video', null, array(
                'label' => 'Video de presentación (enlace de youtube. Ejemplo: https://youtu.be/0YNzVSZZCbo)',
                'attr' => array('class' => 'myclass')
            ));
    }
    
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'BackendBundle\Entity\Curriculum'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'backendbundle_curriculum';
    }


}
