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

class BuscadorType extends AbstractType
{
    /**
     * {@inheritdoc}
     */
    public function buildForm(FormBuilderInterface $builder, array $options)
    {
        
        $builder
            ->add('ciudad', null, array(
                'label' => 'Ciudad',
                'placeholder' => false,
            ))
            ->add('tipoTrabajo', null, array(
                'label' => 'Disponibilidad',
                'placeholder' => false,
            )) 
            ->add('sectorVivienda', null, array(
                'label' => 'Sector',
                'placeholder' => false,
            ))
            ->add('intereses', null, array(
                'label' => 'Oficios',
                'multiple' => false,
                'mapped' => false,
                'placeholder' => false,
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
