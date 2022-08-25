<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class Indicador extends CI_Controller {

	public function __construct() {
		Date_default_timezone_set ('GMT');
		parent::__construct ();
		
		$this->load->model ( 'Postulacion_model', 'postulacion' );
	
	}
	
	/** INICIO - VISTA DE INICIO DE convocatoriaS**/
	public function index() {
	//	$this->load->helper ( 'url' );
		$data ['pag'] = "5";
		//$data ['tipos'] = $this->convocatoria->listar_tipos();
		
		$this->load->view ( '_indicador', $data );
	}
	/** FIN - VISTA DE INICIO DE convocatoriaS**/

	public function actualizar_evaluacion() {
		//$this->load->library('encrypt');
		//$password = null;
		;
		//if(!empty( $clave )){ $password = $this->encrypt->encode ( $clave ); }

		
		$input_valorPK = $this->input->post ('input_valorPK');

		$input_hoja_vida = $this->input->post ('input_hoja_vida');
		$input_examen_tecnico = $this->input->post ('input_examen_tecnico');
		 
		$this->postulacion->actualizar_evaluacion(
			$input_hoja_vida,
			$input_examen_tecnico,
			$input_valorPK
		 );
		 
		echo json_encode ( array (
				"status" => TRUE 
		) );
	}

	public function obtener_evaluacion($id) {
		$data = $this->postulacion->obtener_evaluacion ( $id );
		echo json_encode ( $data );
	}

	/** INICIO - LISTA LAS convocatoriaS **/
	public function lista_usuarios() {
		$list = $this->postulacion->get_usuario_datatables ();
		$data = array ();
		$no = $_POST ['start'];
		
		foreach ( $list as $miembro ) {
			$no ++;
			$row = array ();
			$row [] = $miembro->IDconvocatoria;
			$row [] = $miembro->nombre;
			$row [] = $miembro->apaterno;
			$row [] = $miembro->amaterno;
			$row [] = $miembro->evaluacion_exp;
			$row [] = $miembro->examen_tecnico;
			$row [] = $miembro->resultado_final;
			
			
			$row [] = '<div class="text-center"><a class="btn btn-sm btn-primary" href="javascript:void(0)" title="Editar miembro" onclick="editar_usuario(' . "'" . $miembro->IDdetalle_postulacion . "'" . ')"><i class="fa fa-edit"></i> CALIFICAR</a></div>';
		
			$data [] = $row;
		}
		$output = array (
				"draw" => $_POST ['draw'],
				"recordsTotal" => $this->postulacion->count_all_usuario (),
				"recordsFiltered" => $this->postulacion->count_filtered_usuario (),
				"data" => $data 
		);
		
		echo json_encode ( $output );
	}
	/** FIN - LISTA LAS convocatoriaS **/
	
	
	public function subir(){
		
		$this->load->library ( 'upload' );
		$directory = $this->input->get('data');
		$this->upload = new Upload('/archivos/'.$directory.'/',$directory);
		
	}

	/*
	public function archivo(){
		
		$this->load->view ( '_archivo' );
	}*/
	
	private function _validacion() {
		$data = array ();
		$data ['error_string'] = array ();
		$data ['inputerror'] = array ();
		$data ['status'] = TRUE;

		if ($this->input->post ( 'numero' ) == '') {
			$data ['inputerror'] [] = 'numero';
			$data ['error_string'] [] = 'El número es requerido.';
			$data ['status'] = FALSE;
		}
		if ($this->input->post ( 'asunto' ) == '') {
			$data ['inputerror'] [] = 'asunto';
			$data ['error_string'] [] = 'El contrato es requerido.';
			$data ['status'] = FALSE;
		}
		if ($this->input->post ( 'cantidad' ) == '') {
			$data ['inputerror'] [] = 'cantidad';
			$data ['error_string'] [] = 'La cantidad es requerida.';
			$data ['status'] = FALSE;
		}
		if ($this->input->post ( 'numero' ) != '') {
			$resp = $this->convocatoria->validar_numero($this->input->post ( 'tipo' ),$this->input->post ( 'numero' ));
			if(!empty($resp)){
				$data ['inputerror'] [] = 'numero';
				$data ['error_string'] [] = 'El número ya existe.';
				$data ['status'] = FALSE;
			}
		}
		if ($data ['status'] === FALSE) {
			echo json_encode ( $data );
			exit ();
		}
	}
	
	private function _validacion_actualizar() {
		$data = array ();
		$data ['error_string'] = array ();
		$data ['inputerror'] = array ();
		$data ['status'] = TRUE;
	
		if ($this->input->post ( 'numero' ) == '') {
			$data ['inputerror'] [] = 'numero';
			$data ['error_string'] [] = 'El número es requerido.';
			$data ['status'] = FALSE;
		}
		if ($this->input->post ( 'asunto' ) == '') {
			$data ['inputerror'] [] = 'asunto';
			$data ['error_string'] [] = 'El contrato es requerido.';
			$data ['status'] = FALSE;
		}
		if ($this->input->post ( 'cantidad' ) == '') {
			$data ['inputerror'] [] = 'cantidad';
			$data ['error_string'] [] = 'La cantidad es requerida.';
			$data ['status'] = FALSE;
		}
		if ($this->input->post ( 'numero' ) != '') {
			$resp = $this->convocatoria->validar_numero_actualizar($this->input->post ( 'tipo' ),$this->input->post ( 'numero' ),$this->input->post ( 'IDconvocatoria' ));
			if(!empty($resp)){
				$data ['inputerror'] [] = 'numero';
				$data ['error_string'] [] = 'El número ya existe.';
				$data ['status'] = FALSE;
			}
		}
		if ($data ['status'] === FALSE) {
			echo json_encode ( $data );
			exit ();
		}
	}
	
	
	public function registrar(){
		$this->_validacion();
		$resp = $this->convocatoria->registrar_convocatoria($this->input->post('tipo'),
															$this->input->post('numero'),
															$this->input->post('cantidad'),
															$this->input->post('asunto'),
															$this->input->post('estado'),
															$this->input->post('fecha'),
															$this->Usuario_model->datos());
		
		echo json_encode( array (
				"status" => TRUE ,
				"ID" => $resp[0]['ID']
		) );
	}

	
	
	
	public function actualizar(){
		$this->_validacion_actualizar();
		$resp = $this->convocatoria->actualizar_convocatoria($this->input->post('IDconvocatoria'),
															 $this->input->post('tipo'),
															 $this->input->post('numero'),
															 $this->input->post('cantidad'),
															 $this->input->post('asunto'),
															 $this->input->post('estado'),
															 $this->input->post('fecha'),
															 $this->Usuario_model->datos());
		
		echo json_encode( array (
				"status" => TRUE ,
				"ID" => $this->input->post('IDconvocatoria')
				
		) );
	}
	
	public function eliminar_archivo(){
		$archivo = $this->input->post('archivo');
		unlink('./archivos/'.$archivo);

		echo json_encode ( true );
	}
	
	public function obtener($id){
	
		$data = $this->convocatoria->obtener_convocatoria ( $id );
		echo json_encode ( $data );
	}
	
	public function eliminar(){
		$data = $this->convocatoria->eliminar_convocatoria ( $this->input->post('IDconvocatoria'),$this->Usuario_model->datos() );
		
		$resp = true;
		if($data != true){
			$resp = false;
		}
		
		echo json_encode ( array (
				"status" => $resp 
		)  );
		
	}

}
