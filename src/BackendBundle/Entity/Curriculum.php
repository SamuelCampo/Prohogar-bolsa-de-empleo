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
 * Curriculum
 * @Vich\Uploadable
 * @ORM\Table(name="curriculum")
 * @ORM\Entity(repositoryClass="BackendBundle\Repository\CurriculumRepository")
 */
class Curriculum
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
     * @ORM\Column(name="nombre", type="string", length=50, nullable=true)
     */
    private $nombre;

    /**
     * @var string
     *
     * @ORM\Column(name="apellido", type="string", length=50, nullable=true)
     */
    private $apellido;

    /**
     * @var text
     *
     * @ORM\Column(name="biografia", type="text", nullable=true)
     */
    private $biografia;

    /**
     * @var string
     *
     * @ORM\Column(name="telefono", type="string", length=20, nullable=true)
     */
    private $telefono;

    /**
     * @var string
     *
     * @ORM\Column(name="direccion", type="string", length=255, nullable=true)
     */
    private $direccion;

    /**
     * @var string
     *
     * @ORM\Column(name="tiempoarriendo", type="string", length=255, nullable=true)
     */
    private $tiempoarriendo;



    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="user_images", fileNameProperty="imagen")
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
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="servicio_basico", fileNameProperty="servicio")
     *
     * @var File
     */
    private $servicioFile;

    /**
     * @var string
     *
     * @ORM\Column(name="servicio", type="string", length=300, nullable=true)
     */
    private $servicio;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="carnet_conadis", fileNameProperty="carnet")
     *
     * @var File
     */
    private $carnetFile;

    /**
     * @var string
     *
     * @ORM\Column(name="carnet", type="string", length=300, nullable=true)
     */
    private $carnet;

    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="certificado_trabajo", fileNameProperty="certificado")
     *
     * @var File
     */
    private $certificadoFile;

    /**
     * @var string
     *
     * @ORM\Column(name="certificado", type="string", length=300, nullable=true)
     */
    private $certificado;



    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="licencias_imagenes", fileNameProperty="licenciasimagenes")
     *
     * @var File
     */
    private $licenciasimagenesFile;

    /**
     * @var string
     *
     * @ORM\Column(name="licenciasimagenes", type="string", length=300, nullable=true)
     */
    private $licenciasimagenes;


    /**
     * NOTE: This is not a mapped field of entity metadata, just a simple property.
     *
     * @Vich\UploadableField(mapping="cedulas_imagenes", fileNameProperty="cedulasimagenes")
     *
     * @var File
     */
    private $cedulasimagenesFile;

    /**
     * @var string
     *
     * @ORM\Column(name="cedulasimagenes", type="string", length=300, nullable=true)
     */
    private $cedulasimagenes;





    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_nacimiento", type="date", nullable=true)
     */
    private $fechaNacimiento;

    /**
     * @var string
     *
     * @ORM\Column(name="cedula", type="string", length=20, nullable=true)
     */
    private $cedula;

    /**
     * @var string
     *
     * @ORM\Column(name="celular", type="string", length=20, nullable=true)
     */
    private $celular;

    /**
     * @var string
     *
     * @ORM\Column(name="otrocelular", type="string", length=20, nullable=true)
     */
    private $otrocelular;

    /**
     * @var boolean
     *
     * @ORM\Column(name="tiene_hijos", type="boolean", nullable=true)
     */
    private $tieneHijos;

    /**
     * @var integer
     *
     * @ORM\Column(name="hijos", type="integer", nullable=true)
     */
    private $hijos;

    /**
     * @var text
     *
     * @ORM\Column(name="detalle_Hijos", type="text", nullable=true)
     */
    private $detalleHijos;

    /**
     * @var boolean
     *
     * @ORM\Column(name="madre_soltera", type="boolean", nullable=true)
     */
    private $madreSoltera;

    /**
     * @var boolean
     *
     * @ORM\Column(name="ligadura", type="boolean", nullable=true)
     */
    private $ligadura;

    /**
     * @var boolean
     *
     * @ORM\Column(name="horas_libres", type="boolean", nullable=true)
     */
    private $horasLibres;

    /**
     * @var bool
     *
     * @ORM\Column(name="estado", type="boolean", nullable=true)
     */
    private $estado;

    /**
     * @var \DateTime
     *
     * @ORM\Column(name="fecha_suscripcion", type="date", nullable=true)
     */
    private $fechaSuscripcion;

    /**
     * @var boolean
     *
     * @ORM\Column(name="discapacidad", type="boolean", nullable=true)
     */
    private $discapacidad;

    /**
     * @var boolean
     *
     * @ORM\Column(name="conducir", type="boolean", nullable=true)
     */
    private $conducir;

    /**
     * @var string
     *
     * @ORM\Column(name="capacitacion", type="string", length=255, nullable=true)
     */
    private $capacitacion;

    /**
     * @var string
     *
     * @ORM\Column(name="aspiracion_salarial", type="string", length=255, nullable=true)
     */
    private $aspiracionSalarial;

    /**
     * @var string
     *
     * @ORM\Column(name="barrio", type="string", length=255, nullable=true)
     */
    private $barrio;

    /**
     * @var string
     *
     * @ORM\Column(name="video", type="string", length=300, nullable=true)
     */
    private $video;

    /**
     * @var string
     *
     * @ORM\Column(name="estatura", type="string", length=300, nullable=true)
     */
    private $estatura;

    /**
     * @var string
     *
     * @ORM\Column(name="peso", type="string", length=300, nullable=true)
     */
    private $peso;

    /**
     * @var string
     *
     * @ORM\Column(name="tipo_discapacidad", type="string", length=300, nullable=true)
     */
    private $tipoDiscapacidad;

    /**
     * @var string
     *
     * @ORM\Column(name="porcentaje_discapacidad", type="string", length=300, nullable=true)
     */
    private $porcentajeDiscapacidad;

    /**
     * @var string
     *
     * @ORM\Column(name="nivel_cocina", type="string", length=300, nullable=true)
     */
    private $nivelCocina;

    /**
     * @var string
     *
     * @ORM\Column(name="nivel_limpieza", type="string", length=300, nullable=true)
     */
    private $nivelLimpieza;

    /**
     * @var string
     *
     * @ORM\Column(name="nivel_plancha", type="string", length=300, nullable=true)
     */
    private $nivelPlancha;

    /**
     * @var string
     *
     * @ORM\Column(name="otra_enfermedad", type="string", length=255, nullable=true)
     */
    private $otraEnfermedad;

    /**
     * @var \Sexo
     *
     * @ORM\ManyToOne(targetEntity="Sexo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="sexo_id", referencedColumnName="id")
     * })
     */
    private $sexo;

    /**
     * @var \SignoZodiaco
     *
     * @ORM\ManyToOne(targetEntity="SignoZodiaco")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="signo_zodiaco_id", referencedColumnName="id")
     * })
     */
    private $signoZodiaco;

    /**
     * @var \Licencia
     *
     * @ORM\ManyToOne(targetEntity="Licencia")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="licencia_id", referencedColumnName="id")
     * })
     */
    private $licencia;

    /**
     * @var \EstadoCivil
     *
     * @ORM\ManyToOne(targetEntity="EstadoCivil")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="estado_civil_id", referencedColumnName="id")
     * })
     */
    private $estadoCivil;

    /**
     * @var \HorarioTrabajo
     *
     * @ORM\ManyToOne(targetEntity="HorarioTrabajo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="horario_trabajo_id", referencedColumnName="id")
     * })
     */
    private $horarioTrabajo;

    /**
     * @var \Vivienda
     *
     * @ORM\ManyToOne(targetEntity="Vivienda")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="vivienda_id", referencedColumnName="id")
     * })
     */
    private $vivienda;

    /**
     * @var \Raza
     *
     * @ORM\ManyToOne(targetEntity="Raza")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="raza_id", referencedColumnName="id")
     * })
     */
    private $raza;

    /**
     * @var \Ciudad
     *
     * @ORM\ManyToOne(targetEntity="Ciudad")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="ciudad_id", referencedColumnName="id")
     * })
     */
    private $ciudad;

    /**
     * @var \TipoSangre
     *
     * @ORM\ManyToOne(targetEntity="TipoSangre")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="tipo_sangre_id", referencedColumnName="id")
     * })
     */
    private $tipoSangre;

    /**
     * @var \Estudios
     *
     * @ORM\ManyToOne(targetEntity="Estudios")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="estudios_id", referencedColumnName="id")
     * })
     */
    private $estudios;

    /**
     * @var \Religion
     *
     * @ORM\ManyToOne(targetEntity="Religion")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="religion_id", referencedColumnName="id")
     * })
     */
    private $religion;

    /**
     * @var \TipoTrabajo
     *
     * @ORM\ManyToOne(targetEntity="TipoTrabajo")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="tipo_trabajo_id", referencedColumnName="id")
     * })
     */
    private $tipoTrabajo;

    /**
     * @var \Pais
     *
     * @ORM\ManyToOne(targetEntity="Pais")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="pais_id", referencedColumnName="id")
     * })
     */
    private $pais;

    /**
     * @var \SectorVivienda
     *
     * @ORM\ManyToOne(targetEntity="SectorVivienda")
     * @ORM\JoinColumns({
     *   @ORM\JoinColumn(name="sector_vivienda_id", referencedColumnName="id")
     * })
     */
    private $sectorVivienda;

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
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Aptitudes", inversedBy="curriculum")
     * @ORM\JoinTable(name="curriculum_aptitudes",
     *   joinColumns={
     *     @ORM\JoinColumn(name="curriculum_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="aptitudes_id", referencedColumnName="id")
     *   }
     * )
     */
    private $aptitudes;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Enfermedades", inversedBy="curriculum")
     * @ORM\JoinTable(name="curriculum_enfermedades",
     *   joinColumns={
     *     @ORM\JoinColumn(name="curriculum_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="enfermedades_id", referencedColumnName="id")
     *   }
     * )
     */
    private $enfermedades;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Idiomas", inversedBy="curriculum")
     * @ORM\JoinTable(name="curriculum_idiomas",
     *   joinColumns={
     *     @ORM\JoinColumn(name="curriculum_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="idiomas_id", referencedColumnName="id")
     *   }
     * )
     */
    private $idiomas;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Intereses", inversedBy="curriculum")
     * @ORM\JoinTable(name="curriculum_intereses",
     *   joinColumns={
     *     @ORM\JoinColumn(name="curriculum_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="intereses_id", referencedColumnName="id")
     *   }
     * )
     */
    private $intereses;

    /**
     * @var \Doctrine\Common\Collections\Collection
     *
     * @ORM\ManyToMany(targetEntity="Responsabilidades", inversedBy="curriculum")
     * @ORM\JoinTable(name="curriculum_responsabilidades",
     *   joinColumns={
     *     @ORM\JoinColumn(name="curriculum_id", referencedColumnName="id")
     *   },
     *   inverseJoinColumns={
     *     @ORM\JoinColumn(name="responsabilidades_id", referencedColumnName="id")
     *   }
     * )
     */
    private $responsabilidades;

    /**
     * Constructor
     */
    public function __construct()
    {
        $this->aptitudes = new \Doctrine\Common\Collections\ArrayCollection();
        $this->enfermedades = new \Doctrine\Common\Collections\ArrayCollection();
        $this->idiomas = new \Doctrine\Common\Collections\ArrayCollection();
        $this->intereses = new \Doctrine\Common\Collections\ArrayCollection();
        $this->responsabilidades = new \Doctrine\Common\Collections\ArrayCollection();
    }


    /**
     * Set id
     *
     * @param string $id
     *
     * @return curriculum
     */
    public function setId($id)
    {
        $this->id = $id;

        return $this;
    }

    /**
     * Get id
     *
     * @return string
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
     * @return curriculum
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
     * Set apellido
     *
     * @param string $apellido
     *
     * @return curriculum
     */
    public function setApellido($apellido)
    {
        $this->apellido = $apellido;

        return $this;
    }

    /**
     * Get apellido
     *
     * @return string
     */
    public function getApellido()
    {
        return $this->apellido;
    }

    /**
     * Set telefono
     *
     * @param string $telefono
     *
     * @return curriculum
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
     * Set direccion
     *
     * @param string $direccion
     *
     * @return curriculum
     */
    public function setDireccion($direccion)
    {
        $this->direccion = $direccion;

        return $this;
    }

    /**
     * Get direccion
     *
     * @return string
     */
    public function getDireccion()
    {
        return $this->direccion;
    }

    /**
     * Set tiempoarriendo
     *
     * @param string $tiempoarriendo
     *
     * @return curriculum
     */
    public function setTiempoarriendo($tiempoarriendo)
    {
        $this->tiempoarriendo = $tiempoarriendo;

        return $this;
    }

    /**
     * Get tiempoarriendo
     *
     * @return string
     */
    public function getTiempoarriendo()
    {
        return $this->tiempoarriendo;
    }

    /**
     * Set biografia
     *
     * @param text $biografia
     *
     * @return curriculum
     */
    public function setBiografia($biografia)
    {
        $this->biografia = $biografia;

        return $this;
    }

    /**
     * Get biografia
     *
     * @return text
     */
    public function getBiografia()
    {
        return $this->biografia;
    }

    /**
     * Set imagen
     *
     * @param string $imagen
     *
     * @return curriculum
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

    /**
     * Set servicio
     *
     * @param string $servicio
     *
     * @return curriculum
     */
    public function setServicio($servicio)
    {
        $this->servicio = $servicio;

        return $this;
    }

    /**
     * Get servicio
     *
     * @return string
     */
    public function getServicio()
    {
        return $this->servicio;
    }

    /**
     * Set carnet
     *
     * @param string $carnet
     *
     * @return curriculum
     */
    public function setCarnet($carnet)
    {
        $this->carnet = $carnet;

        return $this;
    }

    /**
     * Get carnet
     *
     * @return string
     */
    public function getCarnet()
    {
        return $this->carnet;
    }

    /**
     * Set certificado
     *
     * @param string $certificado
     *
     * @return curriculum
     */
    public function setCertificado($certificado)
    {
        $this->certificado = $certificado;

        return $this;
    }

    /**
     * Get certificado
     *
     * @return string
     */
    public function getCertificado()
    {
        return $this->certificado;
    }


    /**
     * Set cedulasimagenes
     *
     * @param string $cedulasimagenes
     *
     * @return curriculum
     */
    public function setCedulasimagenes($cedulasimagenes)
    {
        $this->cedulasimagenes = $cedulasimagenes;

        return $this;
    }

    /**
     * Get cedulasimagenes
     *
     * @return string
     */
    public function getCedulasimagenes()
    {
        return $this->cedulasimagenes;
    }


    /**
     * Set licenciasimagenes
     *
     * @param string $licenciasimagenes
     *
     * @return curriculum
     */
    public function setLicenciasimagenes($licenciasimagenes)
    {
        $this->licenciasimagenes = $licenciasimagenes;

        return $this;
    }

    /**
     * Get licenciasimagenes
     *
     * @return string
     */
    public function getLicenciasimagenes()
    {
        return $this->licenciasimagenes;
    }


    /**
     * Set fechaNacimiento
     *
     * @param \DateTime $fechaNacimiento
     *
     * @return curriculum
     */
    public function setFechaNacimiento($fechaNacimiento)
    {
        $this->fechaNacimiento = $fechaNacimiento;

        return $this;
    }

    /**
     * Get fechaNacimiento
     *
     * @return \DateTime
     */
    public function getFechaNacimiento()
    {
        return $this->fechaNacimiento;
    }

    /**
     * Set fechaSuscripcion
     *
     * @param \DateTime $fechaSuscripcion
     *
     * @return curriculum
     */
    public function setFechaSuscripcion($fechaSuscripcion)
    {
        $this->fechaSuscripcion = $fechaSuscripcion;

        return $this;
    }

    /**
     * Get fechaSuscripcion
     *
     * @return \DateTime
     */
    public function getFechaSuscripcion()
    {
        return $this->fechaSuscripcion;
    }

    /**
     * Set estado
     *
     * @param boolean $estado
     *
     * @return User
     */
    public function setEstado($estado)
    {
        $this->estado = $estado;

        return $this;
    }

    /**
     * Get estado
     *
     * @return bool
     */
    public function getEstado()
    {
        return $this->estado;
    }

    /**
     * Set cedula
     *
     * @param string $cedula
     *
     * @return curriculum
     */
    public function setCedula($cedula)
    {
        $this->cedula = $cedula;

        return $this;
    }

    /**
     * Get cedula
     *
     * @return string
     */
    public function getCedula()
    {
        return $this->cedula;
    }

    /**
     * Set celular
     *
     * @param string $celular
     *
     * @return curriculum
     */
    public function setCelular($celular)
    {
        $this->celular = $celular;

        return $this;
    }

    /**
     * Get celular
     *
     * @return string
     */
    public function getCelular()
    {
        return $this->celular;
    }

    /**
     * Set otrocelular
     *
     * @param string $otrocelular
     *
     * @return curriculum
     */
    public function setOtrocelular($otrocelular)
    {
        $this->otrocelular = $otrocelular;

        return $this;
    }

    /**
     * Get otrocelular
     *
     * @return string
     */
    public function getOtrocelular()
    {
        return $this->otrocelular;
    }

    /**
     * Set tieneHijos
     *
     * @param boolean $tieneHijos
     *
     * @return curriculum
     */
    public function setTieneHijos($tieneHijos)
    {
        $this->tieneHijos = $tieneHijos;

        return $this;
    }

    /**
     * Get tieneHijos
     *
     * @return boolean
     */
    public function getTieneHijos()
    {
        return $this->tieneHijos;
    }


    /**
     * Set hijos
     *
     * @param integer $hijos
     *
     * @return curriculum
     */
    public function setHijos($hijos)
    {
        $this->hijos = $hijos;

        return $this;
    }

    /**
     * Get hijos
     *
     * @return integer
     */
    public function getHijos()
    {
        return $this->hijos;
    }

    /**
     * Set detalleHijos
     *
     * @param text $detalleHijos
     *
     * @return curriculum
     */
    public function setDetalleHijos($detalleHijos)
    {
        $this->detalleHijos = $detalleHijos;

        return $this;
    }

    /**
     * Get detalleHijos
     *
     * @return text
     */
    public function getDetalleHijos()
    {
        return $this->detalleHijos;
    }

    /**
     * Set madreSoltera
     *
     * @param boolean $madreSoltera
     *
     * @return curriculum
     */
    public function setMadreSoltera($madreSoltera)
    {
        $this->madreSoltera = $madreSoltera;

        return $this;
    }

    /**
     * Get madreSoltera
     *
     * @return boolean
     */
    public function getMadreSoltera()
    {
        return $this->madreSoltera;
    }

    /**
     * Set ligadura
     *
     * @param boolean $ligadura
     *
     * @return curriculum
     */
    public function setLigadura($ligadura)
    {
        $this->ligadura = $ligadura;

        return $this;
    }

    /**
     * Get ligadura
     *
     * @return boolean
     */
    public function getLigadura()
    {
        return $this->ligadura;
    }


    /**
     * Set horasLibres
     *
     * @param boolean $horasLibres
     *
     * @return curriculum
     */
    public function setHorasLibres($horasLibres)
    {
        $this->horasLibres = $horasLibres;

        return $this;
    }

    /**
     * Get horasLibres
     *
     * @return boolean
     */
    public function getHorasLibres()
    {
        return $this->horasLibres;
    }



    /**
     * Set discapacidad
     *
     * @param boolean $discapacidad
     *
     * @return curriculum
     */
    public function setDiscapacidad($discapacidad)
    {
        $this->discapacidad = $discapacidad;

        return $this;
    }

    /**
     * Get discapacidad
     *
     * @return boolean
     */
    public function getDiscapacidad()
    {
        return $this->discapacidad;
    }

    /**
     * Set conducir
     *
     * @param boolean $conducir
     *
     * @return curriculum
     */
    public function setConducir($conducir)
    {
        $this->conducir = $conducir;

        return $this;
    }

    /**
     * Get conducir
     *
     * @return boolean
     */
    public function getConducir()
    {
        return $this->conducir;
    }

    /**
     * Set capacitacion
     *
     * @param string $capacitacion
     *
     * @return curriculum
     */
    public function setCapacitacion($capacitacion)
    {
        $this->capacitacion = $capacitacion;

        return $this;
    }

    /**
     * Get capacitacion
     *
     * @return string
     */
    public function getCapacitacion()
    {
        return $this->capacitacion;
    }

    /**
     * Set aspiracionSalarial
     *
     * @param string $aspiracionSalarial
     *
     * @return curriculum
     */
    public function setAspiracionSalarial($aspiracionSalarial)
    {
        $this->aspiracionSalarial = $aspiracionSalarial;

        return $this;
    }

    /**
     * Get aspiracionSalarial
     *
     * @return string
     */
    public function getAspiracionSalarial()
    {
        return $this->aspiracionSalarial;
    }

    /**
     * Set barrio
     *
     * @param string $barrio
     *
     * @return curriculum
     */
    public function setBarrio($barrio)
    {
        $this->barrio = $barrio;

        return $this;
    }

    /**
     * Get barrio
     *
     * @return string
     */
    public function getBarrio()
    {
        return $this->barrio;
    }

    /**
     * Set video
     *
     * @param string $video
     *
     * @return curriculum
     */
    public function setVideo($video)
    {
        $this->video = $video;

        return $this;
    }

    /**
     * Get video
     *
     * @return string
     */
    public function getVideo()
    {
        return $this->video;
    }

    /**
     * Set estatura
     *
     * @param string $estatura
     *
     * @return curriculum
     */
    public function setEstatura($estatura)
    {
        $this->estatura = $estatura;

        return $this;
    }

    /**
     * Get estatura
     *
     * @return string
     */
    public function getEstatura()
    {
        return $this->estatura;
    }

    /**
     * Set peso
     *
     * @param string $peso
     *
     * @return curriculum
     */
    public function setPeso($peso)
    {
        $this->peso = $peso;

        return $this;
    }

    /**
     * Get peso
     *
     * @return string
     */
    public function getPeso()
    {
        return $this->peso;
    }

    /**
     * Set sexo
     *
     * @param \BackendBundle\Entity\Sexo $sexo
     *
     * @return curriculum
     */
    public function setSexo(\BackendBundle\Entity\Sexo $sexo = null)
    {
        $this->sexo = $sexo;

        return $this;
    }

    /**
     * Get sexo
     *
     * @return \BackendBundle\Entity\Sexo
     */
    public function getSexo()
    {
        return $this->sexo;
    }

    /**
     * Set signoZodiaco
     *
     * @param \BackendBundle\Entity\SignoZodiaco $signoZodiaco
     *
     * @return curriculum
     */
    public function setSignoZodiaco(\BackendBundle\Entity\SignoZodiaco $signoZodiaco = null)
    {
        $this->signoZodiaco = $signoZodiaco;

        return $this;
    }

    /**
     * Get signoZodiaco
     *
     * @return \BackendBundle\Entity\SignoZodiaco
     */
    public function getSignoZodiaco()
    {
        return $this->signoZodiaco;
    }

    /**
     * Set Licencia
     *
     * @param \BackendBundle\Entity\Licencia $licencia
     *
     * @return curriculum
     */
    public function setLicencia(\BackendBundle\Entity\Licencia $licencia = null)
    {
        $this->licencia = $licencia;

        return $this;
    }

    /**
     * Get Licencia
     *
     * @return \BackendBundle\Entity\Licencia
     */
    public function getLicencia()
    {
        return $this->licencia;
    }

    /**
     * Set estadoCivil
     *
     * @param \BackendBundle\Entity\EstadoCivil $estadoCivil
     *
     * @return curriculum
     */
    public function setEstadoCivil(\BackendBundle\Entity\EstadoCivil $estadoCivil = null)
    {
        $this->estadoCivil = $estadoCivil;

        return $this;
    }

    /**
     * Get estadoCivil
     *
     * @return \BackendBundle\Entity\EstadoCivil
     */
    public function getEstadoCivil()
    {
        return $this->estadoCivil;
    }

    /**
     * Set horarioTrabajo
     *
     * @param \BackendBundle\Entity\HorarioTrabajo $horarioTrabajo
     *
     * @return curriculum
     */
    public function setHorarioTrabajo(\BackendBundle\Entity\HorarioTrabajo $horarioTrabajo = null)
    {
        $this->horarioTrabajo = $horarioTrabajo;

        return $this;
    }

    /**
     * Get horarioTrabajo
     *
     * @return \BackendBundle\Entity\HorarioTrabajo
     */
    public function getHorarioTrabajo()
    {
        return $this->horarioTrabajo;
    }

    /**
     * Set vivienda
     *
     * @param \BackendBundle\Entity\Vivienda $vivienda
     *
     * @return curriculum
     */
    public function setVivienda(\BackendBundle\Entity\Vivienda $vivienda = null)
    {
        $this->vivienda = $vivienda;

        return $this;
    }

    /**
     * Get vivienda
     *
     * @return \BackendBundle\Entity\Vivienda
     */
    public function getVivienda()
    {
        return $this->vivienda;
    }

    /**
     * Set raza
     *
     * @param \BackendBundle\Entity\Raza $raza
     *
     * @return curriculum
     */
    public function setRaza(\BackendBundle\Entity\Raza $raza = null)
    {
        $this->raza = $raza;

        return $this;
    }

    /**
     * Get raza
     *
     * @return \BackendBundle\Entity\Raza
     */
    public function getRaza()
    {
        return $this->raza;
    }

    /**
     * Set ciudad
     *
     * @param \BackendBundle\Entity\Ciudad $ciudad
     *
     * @return curriculum
     */
    public function setCiudad(\BackendBundle\Entity\Ciudad $ciudad = null)
    {
        $this->ciudad = $ciudad;

        return $this;
    }

    /**
     * Get ciudad
     *
     * @return \BackendBundle\Entity\Ciudad
     */
    public function getCiudad()
    {
        return $this->ciudad;
    }

    /**
     * Set tipoSangre
     *
     * @param \BackendBundle\Entity\TipoSangre $tipoSangre
     *
     * @return curriculum
     */
    public function setTipoSangre(\BackendBundle\Entity\TipoSangre $tipoSangre = null)
    {
        $this->tipoSangre = $tipoSangre;

        return $this;
    }

    /**
     * Get tipoSangre
     *
     * @return \BackendBundle\Entity\TipoSangre
     */
    public function getTipoSangre()
    {
        return $this->tipoSangre;
    }


    /**
     * Set tipoDiscapacidad
     *
     * @param $tipoDiscapacidad
     *
     * @return curriculum
     */
    public function setTipoDiscapacidad($tipoDiscapacidad)
    {
        $this->tipoDiscapacidad = $tipoDiscapacidad;

        return $this;
    }

    /**
     * Get tipoDiscapacidad
     *
     * @return string
     */
    public function getTipoDiscapacidad()
    {
        return $this->tipoDiscapacidad;
    }



    /**
     * Set porcentajeDiscapacidad
     *
     * @param $porcentajeDiscapacidad
     *
     * @return curriculum
     */
    public function setPorcentajeDiscapacidad($porcentajeDiscapacidad)
    {
        $this->porcentajeDiscapacidad = $porcentajeDiscapacidad;

        return $this;
    }

    /**
     * Get porcentajeDiscapacidad
     *
     * @return string
     */
    public function getPorcentajeDiscapacidad()
    {
        return $this->porcentajeDiscapacidad;
    }

    /**
     * Set nivelCocina
     *
     * @param $nivelCocina
     *
     * @return curriculum
     */
    public function setNivelCocina($nivelCocina)
    {
        $this->nivelCocina = $nivelCocina;

        return $this;
    }

    /**
     * Get nivelCocina
     *
     * @return string
     */
    public function getNivelCocina()
    {
        return $this->nivelCocina;
    }


    /**
     * Set nivelLimpieza
     *
     * @param $nivelLimpieza
     *
     * @return curriculum
     */
    public function setNivelLimpieza($nivelLimpieza)
    {
        $this->nivelLimpieza = $nivelLimpieza;

        return $this;
    }

    /**
     * Get nivelLimpieza
     *
     * @return string
     */
    public function getNivelLimpieza()
    {
        return $this->nivelLimpieza;
    }

    /**
     * Set nivelPlancha
     *
     * @param $nivelPlancha
     *
     * @return curriculum
     */
    public function setNivelPlancha($nivelPlancha)
    {
        $this->nivelPlancha = $nivelPlancha;

        return $this;
    }

    /**
     * Get nivelPlancha
     *
     * @return string
     */
    public function getNivelPlancha()
    {
        return $this->nivelPlancha;
    }


    /**
     * Set otraEnfermedad
     *
     * @param $otraEnfermedad
     *
     * @return curriculum
     */
    public function setOtraEnfermedad($otraEnfermedad)
    {
        $this->otraEnfermedad = $otraEnfermedad;

        return $this;
    }

    /**
     * Get otraEnfermedad
     *
     * @return string
     */
    public function getOtraEnfermedad()
    {
        return $this->otraEnfermedad;
    }



    /**
     * Set estudios
     *
     * @param \BackendBundle\Entity\Estudios $estudios
     *
     * @return curriculum
     */
    public function setEstudios(\BackendBundle\Entity\Estudios $estudios = null)
    {
        $this->estudios = $estudios;

        return $this;
    }

    /**
     * Get estudios
     *
     * @return \BackendBundle\Entity\Estudios
     */
    public function getEstudios()
    {
        return $this->estudios;
    }

    /**
     * Set religion
     *
     * @param \BackendBundle\Entity\Religion $religion
     *
     * @return curriculum
     */
    public function setReligion(\BackendBundle\Entity\Religion $religion = null)
    {
        $this->religion = $religion;

        return $this;
    }

    /**
     * Get religion
     *
     * @return \BackendBundle\Entity\Religion
     */
    public function getReligion()
    {
        return $this->religion;
    }

    /**
     * Set tipoTrabajo
     *
     * @param \BackendBundle\Entity\TipoTrabajo $tipoTrabajo
     *
     * @return curriculum
     */
    public function setTipoTrabajo(\BackendBundle\Entity\TipoTrabajo $tipoTrabajo = null)
    {
        $this->tipoTrabajo = $tipoTrabajo;

        return $this;
    }

    /**
     * Get tipoTrabajo
     *
     * @return \BackendBundle\Entity\TipoTrabajo
     */
    public function getTipoTrabajo()
    {
        return $this->tipoTrabajo;
    }

    /**
     * Set pais
     *
     * @param \BackendBundle\Entity\Pais $pais
     *
     * @return curriculum
     */
    public function setPais(\BackendBundle\Entity\Pais $pais = null)
    {
        $this->pais = $pais;

        return $this;
    }

    /**
     * Get pais
     *
     * @return \BackendBundle\Entity\Pais
     */
    public function getPais()
    {
        return $this->pais;
    }

    /**
     * Set sectorVivienda
     *
     * @param \BackendBundle\Entity\SectorVivienda $sectorVivienda
     *
     * @return curriculum
     */
    public function setSectorVivienda(\BackendBundle\Entity\SectorVivienda $sectorVivienda = null)
    {
        $this->sectorVivienda = $sectorVivienda;

        return $this;
    }

    /**
     * Get sectorVivienda
     *
     * @return \BackendBundle\Entity\SectorVivienda
     */
    public function getSectorVivienda()
    {
        return $this->sectorVivienda;
    }

    /**
     * Add aptitude
     *
     * @param \BackendBundle\Entity\Aptitudes $aptitude
     *
     * @return curriculum
     */
    public function addAptitude(\BackendBundle\Entity\Aptitudes $aptitude)
    {
        $this->aptitudes[] = $aptitude;

        return $this;
    }

    /**
     * Remove aptitude
     *
     * @param \BackendBundle\Entity\Aptitudes $aptitude
     */
    public function removeAptitude(\BackendBundle\Entity\Aptitudes $aptitude)
    {
        $this->aptitudes->removeElement($aptitude);
    }

    /**
     * Get aptitudes
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getAptitudes()
    {
        return $this->aptitudes;
    }

    /**
     * Add enfermedade
     *
     * @param \BackendBundle\Entity\Enfermedades $enfermedade
     *
     * @return curriculum
     */
    public function addEnfermedade(\BackendBundle\Entity\Enfermedades $enfermedade)
    {
        $this->enfermedades[] = $enfermedade;

        return $this;
    }

    /**
     * Remove enfermedade
     *
     * @param \BackendBundle\Entity\Enfermedades $enfermedade
     */
    public function removeEnfermedade(\BackendBundle\Entity\Enfermedades $enfermedade)
    {
        $this->enfermedades->removeElement($enfermedade);
    }

    /**
     * Get enfermedades
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getEnfermedades()
    {
        return $this->enfermedades;
    }

    /**
     * Add idioma
     *
     * @param \BackendBundle\Entity\Idiomas $idioma
     *
     * @return curriculum
     */
    public function addIdioma(\BackendBundle\Entity\Idiomas $idioma)
    {
        $this->idiomas[] = $idioma;

        return $this;
    }

    /**
     * Remove idioma
     *
     * @param \BackendBundle\Entity\Idiomas $idioma
     */
    public function removeIdioma(\BackendBundle\Entity\Idiomas $idioma)
    {
        $this->idiomas->removeElement($idioma);
    }

    /**
     * Get idiomas
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIdiomas()
    {
        return $this->idiomas;
    }

    /**
     * Add interese
     *
     * @param \BackendBundle\Entity\Intereses $interese
     *
     * @return curriculum
     */
    public function addInterese(\BackendBundle\Entity\Intereses $interese)
    {
        $this->intereses[] = $interese;

        return $this;
    }

    /**
     * Remove interese
     *
     * @param \BackendBundle\Entity\Intereses $interese
     */
    public function removeInterese(\BackendBundle\Entity\Intereses $interese)
    {
        $this->intereses->removeElement($interese);
    }

    /**
     * Get intereses
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getIntereses()
    {
        return $this->intereses;
    }

    /**
     * Add responsabilidade
     *
     * @param \BackendBundle\Entity\Responsabilidades $responsabilidade
     *
     * @return curriculum
     */
    public function addResponsabilidade(\BackendBundle\Entity\Responsabilidades $responsabilidade)
    {
        $this->responsabilidades[] = $responsabilidade;

        return $this;
    }

    /**
     * Remove responsabilidade
     *
     * @param \BackendBundle\Entity\Responsabilidades $responsabilidade
     */
    public function removeResponsabilidade(\BackendBundle\Entity\Responsabilidades $responsabilidade)
    {
        $this->responsabilidades->removeElement($responsabilidade);
    }

    /**
     * Get responsabilidades
     *
     * @return \Doctrine\Common\Collections\Collection
     */
    public function getResponsabilidades()
    {
        return $this->responsabilidades;
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


    public function setCarnetFile(File $carnet = null)
    {
        $this->carnetFile = $carnet;

        if ($carnet) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            //$this->updatedAt = new \DateTimeImmutable();
        }

        return $this;
    }

    /**
     * @return File|null
     */
    public function getCarnetFile()
    {
        return $this->carnetFile;
    }

    public function setCertificadoFile(File $certificado = null)
    {
        $this->certificadoFile = $certificado;

        if ($certificado) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            //$this->updatedAt = new \DateTimeImmutable();
        }

        return $this;
    }

    /**
     * @return File|null
     */
    public function getCertificadoFile()
    {
        return $this->certificadoFile;
    }


    public function setServicioFile(File $servicio = null)
    {
        $this->servicioFile = $servicio;

        if ($servicio) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            //$this->updatedAt = new \DateTimeImmutable();
        }

        return $this;
    }

    /**
     * @return File|null
     */
    public function getServicioFile()
    {
        return $this->servicioFile;
    }

    public function setLicenciasimagenesFile(File $licenciasimagenes = null)
    {
        $this->licenciasimagenesFile = $licenciasimagenes;

        if ($licenciasimagenes) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            //$this->updatedAt = new \DateTimeImmutable();
        }

        return $this;
    }

    /**
     * @return File|null
     */
    public function getLicenciasimagenesFile()
    {
        return $this->licenciasimagenesFile;
    }


    public function setCedulasimagenesFile(File $cedulasimagenes = null)
    {
        $this->cedulasimagenesFile = $cedulasimagenes;

        if ($cedulasimagenes) {
            // It is required that at least one field changes if you are using doctrine
            // otherwise the event listeners won't be called and the file is lost
            //$this->updatedAt = new \DateTimeImmutable();
        }

        return $this;
    }

    /**
     * @return File|null
     */
    public function getCedulasimagenesFile()
    {
        return $this->cedulasimagenesFile;
    }



    public function __toString(){
        //return $this->nombre;
        return (string) $this->getNombre();
    }
}