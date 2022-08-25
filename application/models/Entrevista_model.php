<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class entrevista_model extends CI_Model {
	function __construct() {
		parent::__construct ();
		$this->load->database ();
		$this->load->library ( 'session' );
	}
	public function obtenerPassword($user) {
		$query = $this->db->query ( "CALL USP_VALIDAR_USUARIO('$user',null,null,null,null)" );
		return $query->result_array ();
	}

	public function verificar_si_existe_registro( $dni_docente, $input_codigo_convocatoria, $IDpostulante ) {
        $query = $this->db->query("SELECT * FROM
		detalle_evaluacion_entrevista_final
		where convocatoriaID = '$input_codigo_convocatoria' AND dni = '$dni_docente' ");
		//print_r($query);die;
        return $query->result_array();
    }

	public function obtener_evaluacion_final( $detalleid, $idconvocatoria, $idpostulante ) {
	$query_0 = $this->db->query("SELECT documento
	from postulante
	where IDpostulante = '$idpostulante'");

    $row = $query_0->row_array();
    $dni_postulante = $row['documento'];
    //var_dump($dni_postulante);die;

	$query = $this->db->query("SELECT 
	postulante.IDpostulante, det.dni as dni_postulante, CONCAT( postulante.apaterno, ' ', postulante.amaterno, ', ' ,
	postulante.nombre ) as nombre_postulante, postulante.celular, convocatoria.asuntoContrato,
	det.suma_total, det.obs, det.condicion, det.nro_cas, convocatoria.IDconvocatoria,
	apuesto.a1, apuesto.a2, apuesto.a3, apuesto.a4, adaptacion_puesto.sum as suma, aarea.b1, aarea.b2, aarea.b3, adaptacion_area.sum as sumb,
	aentidad.c1, aentidad.c2, aentidad.c3, adaptacion_entidad.sum as sumc,
	det.suma_total as suma_total
	from detalle_evaluacion_entrevista_final det
	INNER JOIN postulante
	on postulante.documento = det.dni
	inner join convocatoria
	on convocatoria.IDconvocatoria = det.convocatoriaID

	inner join tres_det_apuesto apuesto
	on apuesto.tres_det_apuesto_ID = det.APID
	inner join adaptacion_puesto
	on apuesto.APID = adaptacion_puesto.APID

	inner join tres_det_aarea aarea
	on aarea.tres_det_aareaID = det.AAID
	inner join adaptacion_area
	on aarea.AAID = adaptacion_area.AAID

	inner join tres_det_aentidad aentidad
	on aentidad.tres_det_aentidadID = det.AEID
	inner join adaptacion_entidad
	on aentidad.AEID = adaptacion_entidad.AEID

	where det.convocatoriaID = '$idconvocatoria' AND det.dni = '$dni_postulante' ");
     
     return $query->result_array();
	}

	public function guardar_evaluacion_entrevista_final( $dni_docente, $uno_selecta, $uno_selectb, $uno_selectc, $uno_selectd, $suma_a, $dos_selecta, $dos_selectb, $dos_selectc, $suma_b, $tres_selecta, $tres_selectb, $tres_selectc, $suma_c, $input_suma_final, $input_obse,
    	$valor_condicion, $input_codigo_convocatoria, $input_num_cas, $input_descripcion_cas, $IDpostulante ) {

        $usuarioID = $this->session->userdata('usuarioID');
        $user = $this->session->userdata('user');
        //var_dump($usuarioID);die;

        $sql = $this->db->query("INSERT INTO adaptacion_puesto ( sum ) VALUES ( '$suma_a' )");
        $sql2 = $this->db->query('SELECT LAST_INSERT_ID()');
        $row = $sql2->row_array();
        $ap_id = $row['LAST_INSERT_ID()'];

        $sql_detalle = $this->db->query("INSERT INTO tres_det_apuesto ( APID, a1, a2, a3, a4 ) VALUES ( '$ap_id', '$uno_selecta', '$uno_selectb', '$uno_selectc', '$uno_selectd' )");
        /*-----------------------------------------------------------------------*/
        $sq3 = $this->db->query("INSERT INTO adaptacion_area ( sum ) VALUES ( '$suma_b' )");
        $sql4 = $this->db->query('SELECT LAST_INSERT_ID()');
        $row2 = $sql4->row_array();
        $aa_id = $row2['LAST_INSERT_ID()'];

        $sql_detalle2 = $this->db->query("INSERT INTO tres_det_aarea ( AAID, b1, b2, b3 ) VALUES ('$aa_id', '$dos_selecta', '$dos_selectb', '$dos_selectc' )");
        /*-----------------------------------------------------------------------*/
        $sq5 = $this->db->query("INSERT INTO adaptacion_entidad ( sum ) VALUES ( '$suma_c' )");
        $sql6 = $this->db->query('SELECT LAST_INSERT_ID()');
        $row3 = $sql6->row_array();
        $ae_id = $row3['LAST_INSERT_ID()'];

        $sql_detalle3 = $this->db->query("INSERT INTO tres_det_aentidad ( AEID, c1, c2, c3 ) VALUES ('$ae_id', '$tres_selecta', '$tres_selectb', '$tres_selectc' )");

        /*------------------------------------------------------------------------*/
        $sql_detalle0 = $this->db->query("INSERT INTO detalle_evaluacion_entrevista_final ( dni, APID, AAID, AEID, suma_total, fecha_reg, id_usuario, obs, reg_por, condicion, convocatoriaID, nro_cas, puesto_convocatoria ) VALUES ( '$dni_docente', '$ap_id', '$aa_id', '$ae_id', '$input_suma_final', now(), '$usuarioID', '$input_obse', '$user', '$valor_condicion', '$input_codigo_convocatoria', '$input_num_cas' , '$input_descripcion_cas' )");

        $sql_detalle01 = $this->db->query("UPDATE detalle_postulacion
		SET entrevista_personal = '$input_suma_final',
		obs_tres = '$input_obse' 
		WHERE IDpostulante = '$IDpostulante' AND IDconvocatoria = '$input_codigo_convocatoria' ");

	$query_final = $this->db->query("CALL USP_SUMAR_RESULTADO_FINAL('$IDpostulante', '$input_codigo_convocatoria' )");
        return true;
    }

    public function modificar_evaluacion_entrevista_final( $dni_docente, $uno_selecta, $uno_selectb, $uno_selectc, $uno_selectd, $suma_a, $dos_selecta, $dos_selectb, $dos_selectc, $suma_b, $tres_selecta, $tres_selectb, $tres_selectc, $suma_c, $input_suma_final, $input_obse,
    	$valor_condicion, $input_codigo_convocatoria, $IDpostulante ) {

        $usuarioID = $this->session->userdata('usuarioID');
        $user = $this->session->userdata('user');
        
        $query = $this->db->query("CALL USP_ACTUALIZAR_EVALUACION_ENTREVISTA_FINAL('$dni_docente', '$uno_selecta','$uno_selectb', '$uno_selectc', '$uno_selectd', '$suma_a', '$dos_selecta', '$dos_selectb', '$dos_selectc', '$suma_b', '$tres_selecta', '$tres_selectb', '$tres_selectc', '$suma_c', '$input_suma_final', '$input_obse', '$valor_condicion', '$input_codigo_convocatoria', '$IDpostulante', '$usuarioID', '$user' )");

        $query_final = $this->db->query("CALL USP_SUMAR_RESULTADO_FINAL('$IDpostulante', '$input_codigo_convocatoria' )");
        //print_r($query);die;
        return true;     
    }


    public function reporte_ev_curricular_pdf($id, $idconvocatoria, $idpostulante) {
    // $query = $this->db->query("SELECT * FROM 
    // 	ev_curricular where detalle_expediente_eta3ID = $id");

    //$query = $this->db->query("SELECT 'hola'");
    $query_0 = $this->db->query("SELECT documento
	from postulante
	where IDpostulante = '$idpostulante'");
    

    $row = $query_0->row_array();
    $dni_postulante = $row['documento'];
    //var_dump($dni_postulante);die;

	$query = $this->db->query("SELECT * FROM ev_curricular
	where IDconvocatoria = '$idconvocatoria'  
	AND dni_postulante = '$dni_postulante' ");
	//var_dump($query);die;

      return $query->result_array();
    }


    public function reporte_ev_final_pdf($id, $idconvocatoria, $idpostulante) {
    // $query = $this->db->query("SELECT * FROM 
    // 	ev_curricular where detalle_expediente_eta3ID = $id");

    //$query = $this->db->query("SELECT 'hola'");
    $query_0 = $this->db->query("SELECT documento
	from postulante
	where IDpostulante = '$idpostulante'");
    

    $row = $query_0->row_array();
    $dni_postulante = $row['documento'];
    //var_dump($dni_postulante);die;

	$query = $this->db->query("SELECT * FROM ev_entrevista_final
	where IDconvocatoria = '$idconvocatoria'  
	AND dni_postulante = '$dni_postulante' ");
	//var_dump($query);die;

      return $query->result_array();
    }


    public function pdf_ev_tecnica( $detalleid, $idconvocatoria, $idpostulante ) {
	$query_0 = $this->db->query("SELECT documento
	from postulante
	where IDpostulante = '$idpostulante'");

    $row = $query_0->row_array();
    $dni_postulante = $row['documento'];
    //var_dump($dni_postulante);die;


	$query = $this->db->query("SELECT 
	postulante.IDpostulante, det.dni as dni_postulante, CONCAT( postulante.apaterno, ' ', postulante.amaterno, ', ' ,
	postulante.nombre ) as nombre_postulante, postulante.celular, convocatoria.asuntoContrato,
	det.suma_total, det.obs, det.condicion, det.nro_cas, convocatoria.IDconvocatoria, det.reg_por, postulante.email
	from detalle_evaluacion_tecnico det
	INNER JOIN postulante
	on postulante.documento = det.dni
	inner join convocatoria
	on convocatoria.IDconvocatoria = det.convocatoriaID
	where det.convocatoriaID = '$idconvocatoria' AND det.dni = '$dni_postulante' ");
     
     return $query->result_array();
	}












	
	/* Obteniendo el nombre del usuario, guardado en la variable de session */
	public function datos() {
		$user = $this->session->userdata ( 'user' );
		return $user;
	}
	public function cambio_vista() {
		$vista = $this->session->userdata ( 'vista' );
		if ($vista == 0) {
			$this->session->set_userdata ( 'vista', 6 );
		} else {
			$this->session->set_userdata ( 'vista', 0 );
		}
	}
	public function vista() {
		$vista = $this->session->userdata ( 'vista' );
		return $vista;
	}
	
	public function actualizar_clave($usuario,$clave){
		$query = $this->db->query("CALL USP_ACTUALIZAR_USUARIO('1','$usuario','$clave','','')");
		return $query->result_array();
	}
	
	
	/* ********** (INICIO) MANTENIMIENTO USUARIO ********** */
	var $t_view_usuarios = 'view_miembro_comite';
	var $c_view_usuarios = array (
			'miembro_comiteID',
			'nombres',
			'cargo',
			'archivo',
                       'estado',
	);
	var $o_view_usuarios = null;
	
	private function _get_usuario_datatables_query() {
		$this->db->from ( $this->t_view_usuarios );
		$this->db->limit ( 100 );
		$i = 0;
		foreach ( $this->c_view_usuarios as $item ) {
			if ($_POST ['search'] ['value']) {
				if ($i === 0) {
					$this->db->group_start ();
					$this->db->like ( $item, $_POST ['search'] ['value'] );
				} else {
					$this->db->or_like ( $item, $_POST ['search'] ['value'] );
				}
				if (count ( $this->c_view_usuarios ) - 1 == $i)
					$this->db->group_end ();
			}
			$column [$i] = $item;
			$i ++;
		}
		if (isset ( $_POST ['order'] )) {
			$this->db->order_by ( $column [$_POST ['order'] ['0'] ['column']], $_POST ['order'] ['0'] ['dir'] );
		} else if (isset ( $this->o_view_usuarios )) {
			$order = $this->o_view_usuarios;
			$this->db->order_by ( key ( $order ), $order [key ( $order )] );
		}
	}
	function get_usuario_datatables() {
		$this->_get_usuario_datatables_query ();
		if ($_POST ['length'] != - 1)
			$this->db->limit ( $_POST ['length'], $_POST ['start'] );
			$query = $this->db->get ();
			return $query->result ();
	}
	function count_filtered_usuario() {
		$this->_get_usuario_datatables_query ();
		$query = $this->db->get ();
		return $query->num_rows ();
	}
	public function count_all_usuario() {
		$this->db->from ( $this->t_view_usuarios );
		return $this->db->count_all_results ();
	}
	public function obtener_usuario($id) {
		$this->db->from ( $this->t_view_usuarios );
		$this->db->where ( 'usuario', $id );
		$query = $this->db->get ();
		return $query->row ();
	}
	// agregar miembro del comite
	public function registrar_usuario($usuario,$nombres,$password) {
		$query = $this->db->query("CALL USP_INSERTAR_USUARIO('$usuario','$nombres','$password')");
		/*return $query->result_array();*/
		//$this->db->insert ( $this->t_miembro_comite, $data );
	
	}
	// editar miembro del comite
	public function actualizar_usuario($usuario,$nombres,$password,$estado) {
		$query = $this->db->query("CALL USP_ACTUALIZAR_USUARIO(2,'$usuario','$password','$nombres','$estado')");
	}
	/* ********** (FIN) MIEMBROS DEL COMITE ********** */
	
}