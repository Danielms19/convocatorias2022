<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class curricular extends CI_Controller {

	public function __construct() {
		Date_default_timezone_set ('GMT');
		parent::__construct ();
		$session = $this->Usuario_model->datos ();
        if (empty ( $session )) {
            redirect ( 'inicio', 'refresh' );
        }
		
		$this->load->model ( 'Curricular_model', 'curricular' );
	
	}
	
	/** INICIO - VISTA DE INICIO DE convocatoriaS**/
	public function index() {
		$data ['pag'] = "10";

        $data['user'] = $this->session->userdata('nombres');
//		$data ['tipos'] = $this->convocatoria->listar_tipos();
		$this->load->view ( 'curricular_view', $data );
	}

    public function verificar_si_existe_registro() {
        $registros = $this->curricular->verificar_si_existe_registro(
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
    

	public function modificar_evaluacion_curricular() {

        $dni_docente = $this->input->post('dni_docente');
 
        $input_obse = $this->input->post('obs');
        $input_obse = strtoupper($input_obse);

        $valor_condicion = $this->input->post('valor_condicion');
        if ( $valor_condicion == '' || $valor_condicion == null ) {
            $valor_condicion = 'DESAPROBADO';
        }

        $this->load->library('encrypt');
        $insert = $this->curricular->modificar_evaluacion_curricular(
            $dni_docente,
            $this->input->post('a_1'), 
            $this->input->post('a_2'), 
            $this->input->post('a_3'), 
            $this->input->post('suma_a'),

            $this->input->post('b_1'), 
            $this->input->post('b_2'), 
            $this->input->post('b_3'),
            $this->input->post('suma_b'),

            $this->input->post('c_1'),
            $this->input->post('c_2'),
            $this->input->post('c_3'),
            $this->input->post('c_4'),
            $this->input->post('c_5'),
            $this->input->post('c_6'),
            $this->input->post('suma_c'),
            $this->input->post('input_suma_final'),
            $input_obse,
            $valor_condicion,
            $this->input->post('input_codigo_convocatoria'),
            $this->input->post('IDpostulante'),

            $this->input->post('uno_selectaa'),
            $this->input->post('uno_selectbb'),
            $this->input->post('uno_selectcc'),
            $this->input->post('uno_selectdd')
            //$this->input->post('combo_bonif')
        );

        echo json_encode(array(
            "status" => TRUE
        ));
    }
	

}
