<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class tecnico extends CI_Controller {

	public function __construct() {
		Date_default_timezone_set ('GMT');
		parent::__construct ();
		
		$this->load->model ( 'Tecnico_model', 'tecnico' );
	
	}
	
	/** INICIO - VISTA DE INICIO DE convocatoriaS**/
	public function index() {
		$data ['pag'] = "13";
    //$data ['tipos'] = $this->tecnico->listar_tipos();
		$this->load->view ( 'tecnico_view', $data );
	}

    public function verificar_si_existe_registro() {
        $registros = $this->tecnico->verificar_si_existe_registro(
            $this->input->get('dni_docente'), 
            $this->input->get('input_codigo_convocatoria'),
            $this->input->get('IDpostulante')
        );
        if (empty($registros)) {
            $registros = null;
        }
        $output = $registros;
        // output to json format
        echo json_encode($output);
    }

	public function agregar_evaluacion_tecnico() {

        $dni_docente = $this->input->post('dni_docente');
        //var_dump($dni_docente);die;

        //$input_nombres = strtoupper($input_nombres);

        $input_obse = $this->input->post('obs');
        $input_obse = strtoupper($input_obse);

        $valor_condicion = $this->input->post('valor_condicion');
        if ( $valor_condicion == '' || $valor_condicion == null ) {
            $valor_condicion = 'DESAPROBADO';
        }

        //$this->_validacion();
        $this->load->library('encrypt');
        $insert = $this->tecnico->guardar_evaluacion_tecnico(
            //$this->input->post('valor_plaza'),
            $dni_docente,
            $this->input->post('input_suma_final'),
            $input_obse,
            $valor_condicion,
            $this->input->post('input_codigo_convocatoria'),
            $this->input->post('input_num_cas'),
            $this->input->post('input_descripcion_cas'),
            $this->input->post('IDpostulante')
            //$this->input->post('combo_bonif')
        );

        echo json_encode(array(
            "status" => TRUE
        ));
        //redirect('evaluacion_expediente_list', 'refresh');
    }

    public function modificar_evaluacion_tecnico() {

        $dni_docente = $this->input->post('dni_docente');
 
         $input_obse = $this->input->post('obs');
        $input_obse = strtoupper($input_obse);

        $valor_condicion = $this->input->post('valor_condicion');
        if ( $valor_condicion == '' || $valor_condicion == null ) {
            $valor_condicion = 'DESAPROBADO';
        }

        $this->load->library('encrypt');
        $insert = $this->tecnico->modificar_evaluacion_tecnico(
            $dni_docente,
            $this->input->post('input_suma_final'),
            $input_obse,
            $valor_condicion,
            $this->input->post('input_codigo_convocatoria'),
            $this->input->post('IDpostulante')
            //$this->input->post('combo_bonif')
        );

        echo json_encode(array(
            "status" => TRUE
        ));
    }
	
	


}
