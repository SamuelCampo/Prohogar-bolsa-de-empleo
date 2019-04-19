<?php

namespace BackendBundle\Datatables;

use Sg\DatatablesBundle\Datatable\AbstractDatatable;
use Sg\DatatablesBundle\Datatable\Style;
use Sg\DatatablesBundle\Datatable\Column\Column;
use Sg\DatatablesBundle\Datatable\Column\BooleanColumn;
use Sg\DatatablesBundle\Datatable\Column\ActionColumn;
use Sg\DatatablesBundle\Datatable\Column\MultiselectColumn;
use Sg\DatatablesBundle\Datatable\Column\VirtualColumn;
use Sg\DatatablesBundle\Datatable\Column\DateTimeColumn;
use Sg\DatatablesBundle\Datatable\Column\ImageColumn;
use Sg\DatatablesBundle\Datatable\Filter\TextFilter;
use Sg\DatatablesBundle\Datatable\Filter\NumberFilter;
use Sg\DatatablesBundle\Datatable\Filter\SelectFilter;
use Sg\DatatablesBundle\Datatable\Filter\DateRangeFilter;
use Sg\DatatablesBundle\Datatable\Editable\CombodateEditable;
use Sg\DatatablesBundle\Datatable\Editable\SelectEditable;
use Sg\DatatablesBundle\Datatable\Editable\TextareaEditable;
use Sg\DatatablesBundle\Datatable\Editable\TextEditable;

/**
 * Class CurriculumDatatable
 *
 * @package BackendBundle\Datatables
 */
class CurriculumDatatable extends AbstractDatatable
{
    /**
     * {@inheritdoc}
     */
    public function buildDatatable(array $options = array())
    {
        $this->language->set(array(
            'cdn_language_by_locale' => true
            //'language' => 'de'
        ));

        $this->ajax->set(array(
        ));

        $this->options->set(array(
            'individual_filtering' => true,
            'individual_filtering_position' => 'head',
            'order_cells_top' => true,
            'classes' => Style::BOOTSTRAP_3_STYLE,
            'paging_type' => Style::FULL_NUMBERS_PAGINATION,
        ));

        $this->features->set(array(
        ));

        $this->columnBuilder
            ->add('ciudad.nombre', Column::class, array(
                    'title' => 'Ej: (Quito, Ambato)',
                    ))
            ->add('sectorVivienda.nombre', Column::class, array(
                'title' => 'Ej: (Norte, Centro, Sur)',
                ))        
            ->add('barrio', Column::class, array(
                    'title' => 'Ej: (Inca, Carapungo)',

                    ))
            //->add('apellido', Column::class, array(
            //        'title' => 'Apellido',
            //    ))    
            ->add('tipoTrabajo.nombre', Column::class, array(
                'title' => 'Ej: (Tiempo completo)',
                ))
            
            ->add('intereses.nombre', Column::class, array(
                'title' => 'Ej: (Empleada, chofer)',
                'data' => 'intereses[, ].nombre'
                ))
            ->add(null, ActionColumn::class, array(
                'title' => 'Acciones',
                'actions' => array(
                    array(
                        'route' => 'curriculum_show',
                        'route_parameters' => array(
                            'id' => 'id'
                        ),
                        'label' => $this->translator->trans('sg.datatables.actions.show'),
                        'icon' => 'glyphicon glyphicon-eye-open',
                        'attributes' => array(
                            'rel' => 'tooltip',
                            'title' => $this->translator->trans('sg.datatables.actions.show'),
                            'class' => 'btn btn-primary btn-xs',
                            'role' => 'button'
                        ),
                    ),
                    /*
                    array(
                        'route' => 'curriculum_edit',
                        'route_parameters' => array(
                            'id' => 'id'
                        ),
                        'label' => $this->translator->trans('sg.datatables.actions.edit'),
                        'icon' => 'glyphicon glyphicon-edit',
                        'attributes' => array(
                            'rel' => 'tooltip',
                            'title' => $this->translator->trans('sg.datatables.actions.edit'),
                            'class' => 'btn btn-primary btn-xs',
                            'role' => 'button'
                        ),
                    )
                    */
                )
            ))
        ;
    }

    /**
     * {@inheritdoc}
     */
    public function getEntity()
    {
        return 'BackendBundle\Entity\Curriculum';
    }

    /**
     * {@inheritdoc}
     */
    public function getName()
    {
        return 'curriculum_datatable';
    }
}