<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class curricular_model extends CI_Model {
	function __construct() {
		parent::__construct ();
		$this->load->database ();
		$this->load->library ( 'session' );
	}

	public function verificar_si_existe_registro( $dni_docente, $input_codigo_convocatoria, $IDpostulante ) {
        $query = $this->db->query("SELECT * FROM
		detalle_evaluacion_curricular
		where convocatoriaID = '$input_codigo_convocatoria' AND dni = '$dni_docente' ");
		//print_r($query);die;
        return $query->result_array();
    }


	public function modificar_evaluacion_curricular( $dni_docente, $a_1, $a_2, $a_3, $suma_a, $b_1, $b_2, $b_3, $suma_b, $c_1, $c_2, $c_3, $c_4, $c_5, $c_6, $suma_c, $input_suma_final, $input_obse,
    	$valor_condicion, $input_codigo_convocatoria, $IDpostulante, $uno_selectaa, $uno_selectbb, $uno_selectcc, $uno_selectdd ) {

        $usuarioID = $this->session->userdata('usuarioID');
        $user = $this->session->userdata('user');

        if ( $valor_condicion == 'APTO') {
        	$condicion_curricular = '1';
        }
        else {
        	$condicion_curricular = '0';
        }

        $query = $this->db->query("CALL USP_ACTUALIZAR_EVALUACION_CURRICULAR('$dni_docente','$a_1','$a_2','$a_3', '$suma_a', '$b_1', '$b_2', '$b_3', '$suma_b', '$c_1', '$c_2', '$c_3', '$c_4', '$c_5', '$c_6', '$suma_c', '$input_suma_final', '$input_obse', '$valor_condicion', '$input_codigo_convocatoria', '$IDpostulante', '$usuarioID', '$user', '$uno_selectaa', '$uno_selectbb', '$uno_selectcc', '$uno_selectdd', '$condicion_curricular' )");

        $query_update = $this->db->query ("UPDATE detalle_postulacion
        SET evaluacion_exp = '$input_suma_final', 
        obs_uno = '$input_obse' 
        WHERE IDpostulante = '$IDpostulante' AND IDconvocatoria = '$input_codigo_convocatoria' ");
        //var_dump($query_update);die;

        $query_final = $this->db->query("CALL USP_SUMAR_RESULTADO_FINAL('$IDpostulante', '$input_codigo_convocatoria' )");
        //print_r($query);die;
        return true;     
    }

	

}