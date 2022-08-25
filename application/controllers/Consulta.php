<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class consulta extends CI_Controller {

	public function __construct() {
		Date_default_timezone_set ('GMT');
		parent::__construct ();
		
		$this->load->model ( 'Convocatoria_model', 'convocatoria' );
	
	}
	
	/** INICIO - VISTA DE INICIO DE convocatoriaS**/
	public function index() {
		
		$data ['tipos'] = $this->convocatoria->listar_tipos();
		$this->load->view ( '_consultas', $data );
	}
	
	/** FIN - VISTA DE INICIO DE convocatoriaS**/
	
	// public function registrar_docente(){
	// 	$input_dni = $this->input->post('input_dni');
	// 	$nombre_docente = $this->input->post('nombre_docente');
	// 	$input_apaterno = $this->input->post('input_apaterno');
	// 	$input_amaterno = $this->input->post('input_amaterno');
	// 	$input_sexo = $this->input->post('input_sexo');
	// 	$input_cel = $this->input->post('input_cel');
	// 	$input_email = $this->input->post('input_email');
	// 	$input_estado_civil = $this->input->post('input_estado_civil');
	// 	$input_direccion = $this->input->post('input_direccion');

	// 	$pk_convocatoria = $this->input->post('pk_convocatoria');

	// 	//$this->_validacion();

	// 	$respuesta = $this->convocatoria->registrar_docente_conv(
	// 		$input_dni,
	// 		$nombre_docente,
	// 		$input_apaterno,
	// 		$input_amaterno,
	// 		$input_sexo,
	// 		$input_cel,
	// 		$input_email,
	// 		$input_estado_civil,
	// 		$input_direccion,
	// 		$pk_convocatoria
	// 		);
		
	// 	echo json_encode(array(
 //             "status" => TRUE ,
	// 			"ID" => $respuesta[0]['ID']
 //         ));
	// }
	public function registrar_docente(){
		//$this->_validacion();
		$resp = $this->convocatoria->registrar_docente_conv(
			$this->input->post('input_dni'),
			$this->input->post('input_sexo'),
			$this->input->post('input_nombre'),
			$this->input->post('input_apaterno'),
			$this->input->post('input_amaterno'),
			$this->input->post('input_cel'),
			$this->input->post('input_email'),
			$this->input->post('input_estado_civil'),
			$this->input->post('input_direccion'),

			$this->input->post('fk_convocatoria')
		);
		
		echo json_encode( array (
				"status" => TRUE ,
				"ID" => $resp[0]['ID']
		) );
	}

	public function subir(){
		
		$this->load->library ( 'upload' );
		$directory = $this->input->get('data');
		$this->upload = new Upload('/archivos_a_evaluar/'.$directory.'/',$directory);
		
	}

	public function eliminar_archivo(){
		$archivo = $this->input->post('archivo');
		unlink('./archivos_a_evaluar/'.$archivo);

		echo json_encode ( true );
	}
	
	/** INICIO - LISTA LAS convocatoriaS **/
	public function lista() {
		
		
		$this->load->helper('directory');
		
		$list = $this->convocatoria->get_datatables ();
		$data = array ();
		$no = $_POST ['start'];
		foreach ( $list as $objeto ) {
			$no ++;
			$row = array ();
//                        $row [] = '<div class="text-center">' . $objeto->cas. '</div>';
			$row [] = '<div class="text-center">' . $objeto->descripcionCorta.'-'.$objeto->numero .'-'.date_format(  date_create($objeto->fechaRegistro),"Y"). '</div>';
			$row [] = '<div class="text-center">' . $objeto->fecha . '</div>';
			$row [] = $objeto->asuntoContrato;
			$row [] = '<div class="text-center">' . $objeto->cantidad . '</div>';
			$directorio = './archivos/'.$objeto->IDconvocatoria;
	
			for($i = 1; $i <= 5;$i++){
				$directorio_busqueda = $directorio.'/'.$i;
				$archivos = null;
				if(is_dir($directorio_busqueda)){
					$lista_archivos = scandir($directorio_busqueda);
					if(!empty($lista_archivos)){
						$archivos = '<div class="text-center">';
						foreach($lista_archivos as $archivo){
							if( file_exists($directorio_busqueda.'/'.$archivo) && !is_dir($directorio_busqueda.'/'.$archivo) ){
								$archivos .= '<a download href="'.base_url().$directorio_busqueda.'/'.$archivo.'" title="'.$archivo.'"  ><span class="fa-stack fa-lg"><i class="fa fa-file-text-o"></i></span></a>';
								/*onmouseover="javascript:LoadPDF('SOMEPDF','pdfCanvas');"*/
							}
						}
					$archivos .= '</div>';
					}
				}
				$row [] = $archivos;
			}
			
			
//			$row [] = '<div class="text-center"><span class="fa fa-group"> POSTULAR</span></div>';


			$estado  = null;
			switch ($objeto->estado){
				case 1 :
					$estado = '<span class="label label-success">ACTIVO</span>';
					break;
				case 2:
					$estado = '<span class="label label-warning">EN PROCESO</span>';
					break;
				case 3:
					$estado = '<span class="label label-danger">CONCLUIDO</span>';
					break;
			}
			
			$row [] = '<div class="text-center">' . $estado . '</div>';

//			 $row [] = '<div class="text-center"> <button class="btn btn-primary btn-xs" type="button"> <span class="fa fa-plus"></span> Aqui </button> </div>';

			if ($objeto->estado == 1) {
//				$row [] = '<button class="btn btn-primary btn-sm" href="javascript:void(0)" onclick="postular_convocatoria(' . "'" . $objeto->IDconvocatoria . "'" . ')"><i class="fa fa-plus"></i> Aqui</button>';

//                             			$row [] = '<div class="text-center">' . $objeto->IDconvocatoria . '</div>';

                            $row [] = ' <a class="btn btn-primary btn-sm" href="http://localhost/convocatorias2022/Cas_NP" target="_blank"> <span class="fa fa-plus"></span> Aqui </a> ';
                            
   
                        }else
			$row[] = '';
                                $row [] = '<div class="text-center">'.$objeto->IDconvocatoria.'</div>';
                        
                        
			



		    $data [] = $row;
		}
		$output = array (
				"draw" => $_POST ['draw'],
				"recordsTotal" => $this->convocatoria->count_all (),
				"recordsFiltered" => $this->convocatoria->count_filtered (),
				"data" => $data
		);
		// output to json format
		echo json_encode ( $output );
	}
	/** FIN - LISTA LAS convocatoriaS **/
	
}
