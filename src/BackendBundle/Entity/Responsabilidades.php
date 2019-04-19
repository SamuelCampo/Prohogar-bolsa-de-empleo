<?php

namespace BackendBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Responsabilidades
 *
 * @ORM\Table(name="responsabilidades")
 * @ORM\Entity(repositoryClass="BackendBundle\Repository\ResponsabilidadesRepository")
 */
class Responsabilidades
{
    /**
     * @var int
     *
     * @ORM\Column(name="id", type="integer")
     * @ORM\Id
     * @ORM\GeneratedValue(strategy="AUTO")
     */
    private $id;

    /**
     * @var string
     *
     * @ORM\Column(name="nombre", type="string", length=255, nullable=true)
     */
    private $nombre;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Curriculum", mappedBy="responsabilidades")
     */
    private $curriculum;
    
    /**
     * Constructor
     */
    public function __construct()
    {
        $this->curriculum = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Get id
     *
     * @return int
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * Set nombre
     *
     * @param string $nombre
     *
     * @return Responsabilidades
     */
    public function setNombre($nombre)
    {
        $this->nombre = $nombre;

        return $this;
    }

    /**
     * Get nombre
     *
     * @return string
     */
    public function getNombre()
    {
        return $this->nombre;
    }

    /**
     * Add curriculum
     *
     * @param \BackendBundle\Entity\Curriculum $curriculum
     *
     * @return Responsabilidades
     */
    public function addCurriculum(\BackendBundle\Entity\Curriculum $curriculum)
    {
        $this->curriculum[] = $curriculum;

        return $this;
    }

    /**
     * Remove curriculum
     *
     * @param \BackendBundle\Entity\Curriculum $curriculum
     */
    public function removeCurriculum(\BackendBundle\Entity\curriculum $curriculum)
    {
        $this->curriculum->removeElement($curriculum);
    }

    /**
     * Get curriculum
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getCurriculum()
    {
        return $this->curriculum;
    }

    public function __toString(){
        return $this->nombre;
    }
}

