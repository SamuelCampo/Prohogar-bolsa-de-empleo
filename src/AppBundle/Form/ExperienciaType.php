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

class ExperienciaType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        $builder
            ->add('cargo', null, array(
                'label' => 'Cargo',
                'attr' => array('class' => 'myclass')
            ))
            ->add('empresa', null, array(
                'label' => 'Empresa',
                'attr' => array('class' => 'myclass')
            ))
            ->add('telefono', null, array(
                'label' => 'Telefono',
                'attr' => array('class' => 'myclass')
            ))
            ->add('fechaInicio', DateType::class, array(
                'label' => 'Fecha Inicio',
                'widget' => 'choice',
                'days' => range(1,1),
                'years' => range(date('Y'), date('Y') - 70),
                'attr' => array('class' => 'myclass')
            ))

            ->add('fechaFin', DateType::class, array(
                //'widget' => 'single_text',
                'label' => 'Fecha Fin',
                'widget' => 'choice',
                'days' => range(1,1),
                'years' => range(date('Y'), date('Y') - 70),
                'attr' => array('class' => 'myclass')
            ))

            //->add('fechaFin', DateType::class, array(
              //  'format' =>'MMM-yyyy  d',
              //  'years' => range(date('Y'), date('Y')+12),
              //  'days' => array(1),
                
                //'empty_value' => array('year' => 'Select Year', 'month' => 'Select Month', 'day' => false)
               // )
               // )

            ->add('motivoSalida', null, array(
                'label' => 'Motivo de Salida',
                'attr' => array('class' => 'myclass')
            ))
            ->add('imageFile', FileType::class,array(
                'label' => 'Certificado de Trabajo',
                'required'=> false,
            ));

    }
    /**
     * {@inheritdoc}
     */
    public function configureOptions(OptionsResolver $resolver)
    {
        $resolver->setDefaults(array(
            'data_class' => 'BackendBundle\Entity\Experiencia'
        ));
    }

    /**
     * {@inheritdoc}
     */
    public function getBlockPrefix()
    {
        return 'backendbundle_experiencia';
    }


}
