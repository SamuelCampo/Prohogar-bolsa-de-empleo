<?php

namespace BackendBundle\Entity;

use Doctrine\ORM\Mapping as ORM;
use Symfony\Component\HttpFoundation\File\File;
use Symfony\Component\Validator\Constraints as Assert;
use Symfony\Component\HttpFoundation\File\UploadedFile;
use Vich\UploaderBundle\Mapping\Annotation as Vich;
use Vich\UploaderBundle\Form\Type\VichFileType;

/**
 * @ORM\Entity
 * @Vich\Uploadable
 */

/**
 * Experiencia
 * @Vich\Uploadable
 * @ORM\Table(name="experiencia")
 * @ORM\Entity(repositoryClass="BackendBundle\Repository\ExperienciaRepository")
 */

class Experiencia
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
     * @ORM\Column(name="cargo", type="string", length=255, nullable=true)
     */
    private $cargo;

    /**
     * @var string
     *
     * @ORM\Column(name="empresa", type="string", length=255, nullable=true)
     */
    private $empresa;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono", type="string", length=20, nullable=true)
     */
    private $telefono;

    /**
     * @var \Date
     *
     * @ORM\Column(name="fechaInicio", type="date", nullable=true)
     */
    private $fechaInicio;

    /**
     * @var \Date
     *
     * @ORM\Column(name="fechaFin", type="date", nullable=true)
     */
    private $fechaFin;

    /**
     * @var string
     *
     * @ORM\Column(name="motivo_salida", type="string", length=255, nullable=true)
     */
    private $motivoSalida;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     * 
     * @Vich\UploadableField(mapping="certificados_laborales", fileNameProperty="imagen")
     * 
     * @var File
     */
    private $imageFile;
    
    /**
     * @var string
     *
     * @ORM\Column(name="imagen", type="string", length=300, nullable=true)
     */
    private $imagen;

     /**
     * @var \User
     *
     * @ORM\ManyToOne(targetEntity="User")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="user_id", referencedColumnName="id")
     * })
     */
    private $user;


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
     * Set cargo
     *
     * @param string $cargo
     *
     * @return Experiencia
     */
    public function setCargo($cargo)
    {
        $this->cargo = $cargo;

        return $this;
    }

    /**
     * Get cargo
     *
     * @return string
     */
    public function getCargo()
    {
        return $this->cargo;
    }

    /**
     * Set empresa
     *
     * @param string $empresa
     *
     * @return Experiencia
     */
    public function setEmpresa($empresa)
    {
        $this->empresa = $empresa;

        return $this;
    }

    /**
     * Get empresa
     *
     * @return string
     */
    public function getEmpresa()
    {
        return $this->empresa;
    }

    /**
     * Set telefono
     *
     * @param string $telefono
     *
     * @return Experiencia
     */
    public function setTelefono($telefono)
    {
        $this->telefono = $telefono;

        return $this;
    }

    /**
     * Get telefono
     *
     * @return string
     */
    public function getTelefono()
    {
        return $this->telefono;
    }

    /**
     * Set fechaInicio
     *
     * @param \Date $fechaInicio
     *
     * @return Experiencia
     */
    public function setFechaInicio($fechaInicio)
    {
        $this->fechaInicio = $fechaInicio;

        return $this;
    }

    /**
     * Get fechaInicio
     *
     * @return \Date
     */
    public function getFechaInicio()
    {
        return $this->fechaInicio;
    }

    /**
     * Set fechaFin
     *
     * @param \Date $fechaFin
     *
     * @return Experiencia
     */
    public function setFechaFin($fechaFin)
    {
        $this->fechaFin = $fechaFin;

        return $this;
    }

    /**
     * Get fechaFin
     *
     * @return \Date
     */
    public function getFechaFin()
    {
        return $this->fechaFin;
    }

    /**
     * Set motivoSalida
     *
     * @param string $motivoSalida
     *
     * @return motivoSalida
     */
    public function setMotivoSalida($motivoSalida)
    {
        $this->motivoSalida = $motivoSalida;

        return $this;
    }

    /**
     * Get motivoSalida
     *
     * @return string
     */
    public function getMotivoSalida()
    {
        return $this->motivoSalida;
    }

    /**
     * Set imagen
     *
     * @param string $imagen
     *
     * @return Experiencia
     */
    public function setImagen($imagen)
    {
        $this->imagen = $imagen;
        //dump($imagen);

        return $this;
    }

    /**
     * Get imagen
     *
     * @return string
     */
    public function getImagen()
    {
        return $this->imagen;
    }

    public function setImageFile(File $imagen = null)
    {
        $this->imageFile = $imagen;

        if ($imagen) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            //$this->updatedAt = new \DateTimeImmutable();
        }
        
        return $this;
    }

    /**
     * @return File|null
     */
    public function getImageFile()
    {
        return $this->imageFile;
    }

    /**
     * Set user
     *
     * @param \BackendBundle\Entity\User $user
     *
     * @return Torneos
     */
    public function setUser(\BackendBundle\Entity\User $user = null)
    {
        $this->user = $user;

        return $this;
    }

    /**
     * Get user
     *
     * @return \BackendBundle\Entity\User
     */
    public function getUser()
    {
        return $this->user;
    }

    public function __toString(){
        return $this->cargo;
    }
}

