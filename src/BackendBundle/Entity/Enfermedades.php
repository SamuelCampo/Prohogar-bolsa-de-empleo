<?php

namespace BackendBundle\Entity;

use Doctrine\ORM\Mapping as ORM;

/**
 * Enfermedades
 *
 * @ORM\Table(name="enfermedades")
 * @ORM\Entity(repositoryClass="BackendBundle\Repository\EnfermedadesRepository")
 */
class Enfermedades
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
     * @ORM\ManyToMany(targetEntity="Curriculum", mappedBy="enfermedades")
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
     * @return Enfermedades
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
     * @return Enfermedades
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
    public function removeCurriculum(\BackendBundle\Entity\Curriculum $curriculum)
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
