<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class tecnico_model extends CI_Model {
	function __construct() {
		parent::__construct ();
		$this->load->database ();
		$this->load->library ( 'session' );
	}

	public function verificar_si_existe_registro( $dni_docente, $input_codigo_convocatoria, $IDpostulante ) {
        $query = $this->db->query("SELECT * FROM
		detalle_evaluacion_tecnico
		where convocatoriaID = '$input_codigo_convocatoria' AND dni = '$dni_docente' ");
		//print_r($query);die;
        return $query->result_array();
    }

	public function guardar_evaluacion_tecnico( $dni_docente, $input_suma_final, $input_obse,
    	$valor_condicion, $input_codigo_convocatoria, $input_num_cas, $input_descripcion_cas, $IDpostulante ) {

        $usuarioID = $this->session->userdata('usuarioID');
        $user = $this->session->userdata('user');
        //var_dump($usuarioID);die;
        /*------------------------------------------------------------------------*/
        $sql_detalle0 = $this->db->query("INSERT INTO detalle_evaluacion_tecnico ( dni, suma_total, fecha_reg, id_usuario, obs, reg_por, condicion, convocatoriaID, nro_cas, puesto_convocatoria ) VALUES ( '$dni_docente', '$input_suma_final', now(), '$usuarioID', '$input_obse', '$user', '$valor_condicion', '$input_codigo_convocatoria', '$input_num_cas' , '$input_descripcion_cas' )");

        $sql_detalle01 = $this->db->query("UPDATE detalle_postulacion
		SET examen_tecnico = '$input_suma_final' 
		WHERE IDpostulante = '$IDpostulante' AND IDconvocatoria = '$input_codigo_convocatoria' ");

	$query_final = $this->db->query("CALL USP_SUMAR_RESULTADO_FINAL('$IDpostulante', '$input_codigo_convocatoria' )");
		//var_dump($sql_detalle01);die;
        return true;
    }

    public function modificar_evaluacion_tecnico( $dni_docente, $input_suma_final, $input_obse, $valor_condicion, $input_codigo_convocatoria, $IDpostulante ) {
    $usuarioID = $this->session->userdata('usuarioID');
    $user = $this->session->userdata('user');

    $query_0 = $this->db->query("UPDATE detalle_evaluacion_tecnico SET 
	suma_total = '$input_suma_final',
	obs = '$input_obse',
	condicion ='$valor_condicion',
	id_usuario_mod = '$usuarioID',
	mod_por = '$user',
	fecha_mod = now()
	WHERE convocatoriaID = '$input_codigo_convocatoria' AND  dni = '$dni_docente' ");
		
	$query = $this->db->query("UPDATE detalle_postulacion SET 
	examen_tecnico = '$input_suma_final'
	WHERE IDpostulante = '$IDpostulante' AND IDconvocatoria = '$input_codigo_convocatoria' ");

	 $query_final = $this->db->query("CALL USP_SUMAR_RESULTADO_FINAL('$IDpostulante', '$input_codigo_convocatoria' )");
	//var_dump($query);die;
	}
	
}