<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class convocatoria extends CI_Controller {

	public function __construct() {
		Date_default_timezone_set ('GMT');
		parent::__construct ();
		$session = $this->Usuario_model->datos ();
		if (empty ( $session )) {
			redirect ( 'inicio', 'refresh' );
		}
		$this->load->model ( 'Convocatoria_model', 'convocatoria' );
	
	}


	public function listar_todo() {
        $reporte = $this->convocatoria->listar_todo();
        echo json_encode($reporte);
    }

    public function listar_todo2() {
        $reporte = $this->convocatoria->listar_todo();
        echo json_encode($reporte);
    }
	
	/** INICIO - VISTA DE INICIO DE convocatoriaS**/
	public function index() {
	//	$this->load->helper ( 'url' );
		$data ['pag'] = "1";
		$data ['tipos'] = $this->convocatoria->listar_tipos();
		
		$this->load->view ( '_convocatoria', $data );
	}
	/** FIN - VISTA DE INICIO DE convocatoriaS**/
	
	/** INICIO - LISTA LAS convocatoriaS **/
	public function lista() {
		
		
		$this->load->helper('directory');
		
		$list = $this->convocatoria->get_datatables ();
		$data = array ();
		$no = $_POST ['start'];
		foreach ( $list as $objeto ) {
			$no ++;
			$row = array ();
			$row [] = '<div class="text-center">' . $objeto->descripcionCorta .'-'.$objeto->numero .'-'.date_format(  date_create($objeto->fechaRegistro),"Y"). '</div>';
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
							}
						}
					$archivos .= '</div>';
					}
				}
				$row [] = $archivos;
			}
			
			
			
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
			
			
			$row [] = '<div class="text-center"><a href="javascript:void(0)" title="Editar" onclick="editar_convocatoria(' . "'" . $objeto->IDconvocatoria . "'" . ')"><i class="fa fa-pencil fa-2x"></i></a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" title="Eliminar" onclick="eliminar_convocatoria(' . "'" . $objeto->IDconvocatoria . "'" . ')"><i class="fa fa-trash-o fa-2x"></i></a>&nbsp;&nbsp;&nbsp;<a href="javascript:void(0)" title="Configurar" onclick="configurar_convocatoria(' . "'" . $objeto->IDconvocatoria . "'" . ')"><i class="fa fa-gear fa-2x"></i></a></div>';
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

	public function obtener_configuracion($id){
	
		$data = $this->convocatoria->obtener_configuracion ( $id );
		// echo json_encode ( array (
		// 		"fecha_manual" => $data[0]['fecha_manual'],
		// 		"hora_manual" => $data[0]['hora_manual'],
		// 		"lugar_manual" => $data[0]['lugar_manual']
		// ) );
		echo json_encode($data);
	}
	
	public function eliminar(){
		$data = $this->convocatoria->eliminar_convocatoria ( $this->input->post('IDconvocatoria'),$this->Usuario_model->datos() );
		
		$resp = true;
		if($data != true){
			$resp = false;
		}
		
		echo json_encode ( array (
				"status" => true 
		)  );
		
	}

	public function guardar_configuracion() {
        $data = $this->convocatoria->guardar_configuracion(
        $this->input->post('input_id'),

        $this->input->post('input_fecha_uno'), 
        $this->input->post('input_hora_uno'), 
        $this->input->post('input_lugar_uno'),
        $this->input->post('input_fecha_dos'),
        $this->input->post('input_hora_dos'),
        $this->input->post('input_lugar_dos')

        );

        $resp = true;
		if($data != true){
			$resp = false;
		}

         echo json_encode($data);
        
    }

}
