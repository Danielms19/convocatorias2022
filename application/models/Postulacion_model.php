<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class Postulacion_model extends CI_Model {
	function __construct() {
		parent::__construct ();
		$this->load->database ();
		$this->load->library ( 'session' );
	}
	public function obtenerPassword($user) {
		$query = $this->db->query ( "CALL USP_VALIDAR_USUARIO('$user',null,null,null,null)" );
		return $query->result_array ();
	}
	
	/* Obteniendo el nombre del usuario, guardado en la variable de session */
	public function datos() {
		$user = $this->session->userdata ( 'user' );
		return $user;
	}

	public function verificar_dni($tipodoc, $dni) {
        $query = $this->db->query("SELECT concat(apaterno, ' ' ,amaterno,', ', nombre) as nombre_completo ,
         documento, celular, convocatoria.asuntoContrato as puesto, convocatoria.IDconvocatoria, postulante.IDpostulante, postulante.IDpostulante, 
		postulante.email
		FROM postulante 
		inner join detalle_postulacion
		on detalle_postulacion.IDpostulante = postulante.IDpostulante
		inner join convocatoria
		on detalle_postulacion.IDconvocatoria = convocatoria.IDconvocatoria
		WHERE documento = '$dni'");
        return $query->result_array();
    }

    public function verificar_codigo_postulacion($tipodoc, $codigo_verificacion) {
        $query = $this->db->query("SELECT 
		IDconvocatoria, numero, asuntoContrato
		from convocatoria
		where IDconvocatoria = '$codigo_verificacion' ");
        return $query->result_array();
    }

    public function guardar_evaluacion_curricular( $dni_docente, $a_1, $a_2, $a_3, $suma_a, $b_1, $b_2, $b_3, $suma_b, $c_1, $c_2, $c_3, $c_4, $c_5, $c_6, $suma_c, $input_suma_final, $input_obse,
    	$valor_condicion, $input_codigo_convocatoria, $input_num_cas, $input_descripcion_cas, $IDpostulante, $uno_selecta, $uno_selectb, $uno_selectc, $uno_selectd ) {

        $usuarioID = $this->session->userdata('usuarioID');
        $user = $this->session->userdata('user');
        //var_dump($usuarioID);die;

        $sql = $this->db->query("INSERT INTO fa_exped ( sum ) VALUES ( '$suma_a' )");
        $sql2 = $this->db->query('SELECT LAST_INSERT_ID()');
        $row = $sql2->row_array();
        $fa_id = $row['LAST_INSERT_ID()'];

        $sql_detalle = $this->db->query("INSERT INTO det_fa_exped ( FAID, a1, a2, a3 ) VALUES ( '$fa_id', '$a_1', '$a_2', '$a_3' )");
        /*-----------------------------------------------------------------------*/
        $sq3 = $this->db->query("INSERT INTO el_exped ( sum ) VALUES ( '$suma_b' )");
        $sql4 = $this->db->query('SELECT LAST_INSERT_ID()');
        $row2 = $sql4->row_array();
        $el_id = $row2['LAST_INSERT_ID()'];

        $sql_detalle2 = $this->db->query("INSERT INTO det_el_exped ( ELID, b1, b2, b3 ) VALUES ('$el_id', '$b_1', '$b_2', '$b_3' )");
        /*-----------------------------------------------------------------------*/
        $sq5 = $this->db->query("INSERT INTO exp_exped ( sum ) VALUES ( '$suma_c' )");
        $sql6 = $this->db->query('SELECT LAST_INSERT_ID()');
        $row3 = $sql6->row_array();
        $exp_id = $row3['LAST_INSERT_ID()'];

        $sql_detalle3 = $this->db->query("INSERT INTO det_exp_exped ( EXPID, c1, c2, c3, c4, c5, c6) VALUES ('$exp_id', '$c_1', '$c_2', '$c_3', '$c_4', '$c_5', '$c_6')");

        /*------------------------------------------------------------------------*/
        if ( $valor_condicion == 'APTO') {
        	$condicion_curricular = '1';
        }
        else {
        	$condicion_curricular = '0';
        }

        $sql_detalle0 = $this->db->query("INSERT INTO detalle_evaluacion_curricular ( dni, FAID, ELID, EXPID, suma_total, fecha_reg, id_usuario, obs, reg_por, condicion, convocatoriaID, nro_cas, puesto_convocatoria, select_uno, select_dos, select_tres, select_cuatro, condicion_curricular ) VALUES ( '$dni_docente', '$fa_id', '$el_id', '$exp_id', '$input_suma_final', now(), '$usuarioID', '$input_obse', '$user', '$valor_condicion', '$input_codigo_convocatoria', '$input_num_cas' , '$input_descripcion_cas', '$uno_selecta', '$uno_selectb', '$uno_selectc', '$uno_selectd', '$condicion_curricular' )");

        $sql_detalle01 = $this->db->query("UPDATE detalle_postulacion
		SET evaluacion_exp = '$input_suma_final',
		obs_uno = '$input_obse'
		WHERE IDpostulante = '$IDpostulante' AND IDconvocatoria = '$input_codigo_convocatoria' ");


	$query_final = $this->db->query("CALL USP_SUMAR_RESULTADO_FINAL('$IDpostulante', '$input_codigo_convocatoria' )");

        return true;
    }

    

	public function obtener_datos_evaluados_por_fecha() {
        $query = $this->db->query("CALL USP_LISTAR_REPORTE_TOTAL()");
        return $query->result_array();
    }

	public function cambio_vista() {
		$vista = $this->session->userdata ( 'vista' );
		if ($vista == 0) {
			$this->session->set_userdata ( 'vista', 1 );
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

	public function obtener_evaluacion_tecnica( $detalleid, $idconvocatoria, $idpostulante ) {
	$query_0 = $this->db->query("SELECT documento
	from postulante
	where IDpostulante = '$idpostulante'");

    $row = $query_0->row_array();
    $dni_postulante = $row['documento'];
    //var_dump($dni_postulante);die;


	$query = $this->db->query("SELECT 
	postulante.IDpostulante, det.dni as dni_postulante, CONCAT( postulante.apaterno, ' ', postulante.amaterno, ', ' ,
	postulante.nombre ) as nombre_postulante, postulante.celular, convocatoria.asuntoContrato,
	det.suma_total, det.obs, det.condicion, det.nro_cas, convocatoria.IDconvocatoria
	from detalle_evaluacion_tecnico det
	INNER JOIN postulante
	on postulante.documento = det.dni
	inner join convocatoria
	on convocatoria.IDconvocatoria = det.convocatoriaID
	where det.convocatoriaID = '$idconvocatoria' AND det.dni = '$dni_postulante' ");
     
     return $query->result_array();
	}










	public function obtener_evaluacion_curricular( $detalleid, $idconvocatoria, $idpostulante ) {
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
	dfa.a1, dfa.a2, dfa.a3, fa_exped.sum as suma, del.b1, del.b2, del.b3, el_exped.sum as sumb,
	dexp.c1, dexp.c2, dexp.c3, dexp.c4, dexp.c5, dexp.c6, exp_exped.sum as sumc,
	det.suma_total as suma_total, det.select_uno, det.select_dos, det.select_tres, det.select_cuatro,
    det.reg_por
	from detalle_evaluacion_curricular det
	INNER JOIN postulante
	on postulante.documento = det.dni
	inner join convocatoria
	on convocatoria.IDconvocatoria = det.convocatoriaID
	inner join det_fa_exped dfa
	on dfa.det_fa_expedID = det.FAID
	inner join fa_exped
	on dfa.FAID = fa_exped.FAID

	inner join det_el_exped del
	on del.det_el_expedID = det.ELID
	inner join el_exped
	on del.ELID = el_exped.ELID

	inner join det_exp_exped dexp
	on dexp.det_exp_expedID = det.EXPID
	inner join exp_exped
	on dexp.EXPID = exp_exped.EXPID

	where det.convocatoriaID = '$idconvocatoria' AND det.dni = '$dni_postulante' ");
     
     return $query->result_array();
	}

	
        
    public function obtener_anexo($id_anexo) {
	$this->db->from ( $this->t_view_evaluar_postulante );
	$this->db->where ( 'IDpostulante', $id_anexo );
	$query = $this->db->get ();
	return $query->row ();
	}

	public function ganador_resultado_final($id_plaza) {
//        $query = $this->db->query("SELECT detalle_postulacion.IDconvocatoria, 
//		postulante.documento,
//		detalle_postulacion.resultado_final as puntaje,
//		CONCAT(postulante.apaterno,' ' ,postulante.amaterno, ', ', postulante.nombre) AS nombre,
//		(case when resultado_final >= (select max(resultado_final) from detalle_postulacion)
//		then 'GANADOR' else 'NO CALIFICA' end) as resultado
//		from detalle_postulacion
//		join postulante
//		on postulante.IDpostulante = detalle_postulacion.IDpostulante
//		WHERE IDconvocatoria ='$id_plaza'
//		ORDER BY resultado_final desc
//		");
       $query = $this->db->query("
       SELECT detalle_postulacion.IDconvocatoria, 
		postulante.documento, con.numero, con.asuntoContrato,
                detalle_postulacion.evaluacion_exp as puntajehv,
        detalle_postulacion.entrevista_personal as puntajeet,
		detalle_postulacion.resultado_final as puntaje,
		CONCAT(postulante.apaterno,' ' ,postulante.amaterno, ', ', postulante.nombre) AS nombre,
		(case when resultado_final >= (select max(resultado_final) from detalle_postulacion)
		then 'GANADOR' else 'NO CALIFICA' end) as resultado, detalle_postulacion.obs_tres as obs,
		con.fecha_manual_dos, hora_manual_dos, lugar_manual_dos
		from detalle_postulacion
		join postulante
		on postulante.IDpostulante = detalle_postulacion.IDpostulante
        JOIN convocatoria con ON con.IDconvocatoria = detalle_postulacion.IDconvocatoria
        join detalle_evaluacion_curricular
        on detalle_evaluacion_curricular.convocatoriaID = detalle_postulacion.IDconvocatoria 
		WHERE detalle_postulacion.IDconvocatoria ='$id_plaza' and detalle_evaluacion_curricular.condicion_curricular = '1' 
GROUP BY postulante.documento		
ORDER BY resultado_final desc
         
		");
        return $query->result_array();
    }

	public function detalle_convocatoria($id_plaza) {
        $query = $this->db->query("SELECT asuntoContrato as asunto
		from convocatoria
		where IDconvocatoria='$id_plaza' 
		");
        return $query->result_array();
    }

	public function condicion_hoja_vida($id_plaza) {
        $query = $this->db->query("SELECT MAX(evaluacion_exp) as valor
		from detalle_postulacion 
		where IDconvocatoria='$id_plaza' 
		");
        return $query->result_array();
    }

    public function condicion_examen_tecnico($id_plaza) {
        $query = $this->db->query("SELECT MAX(examen_tecnico) as valor
		from detalle_postulacion 
		where IDconvocatoria='$id_plaza' 
		");
        return $query->result_array();
    }

	public function reporte_pdf($id_plaza) {
//        $query = $this->db->query("SELECT det.IDconvocatoria, po.documento, CONCAT(po.apaterno,' ' ,po.amaterno, ', ', po.nombre) AS nombre,
//		det.evaluacion_exp as puntaje
//		FROM detalle_postulacion det
//		JOIN postulante po
//		ON po.IDpostulante = det.IDpostulante WHERE IDconvocatoria ='$id_plaza'
//		ORDER BY det.evaluacion_exp DESC
//		");
    $query = $this->db->query("
     SELECT det.IDconvocatoria, con.numero, con.asuntoContrato, po.documento, CONCAT(po.apaterno,' ' ,po.amaterno, ', ', po.nombre) AS nombre,
		det.evaluacion_exp as puntaje, con.fecha_manual, con.hora_manual, con.lugar_manual, det.obs_uno as obs
		FROM detalle_postulacion det
		JOIN postulante po
		ON po.IDpostulante = det.IDpostulante 
		JOIN convocatoria con 
    ON con.IDconvocatoria = det.IDconvocatoria
		JOIN detalle_evaluacion_curricular
		ON detalle_evaluacion_curricular.convocatoriaID = con.IDconvocatoria
		WHERE det.IDconvocatoria ='$id_plaza'
                    GROUP BY po.documento
				ORDER BY det.evaluacion_exp DESC
		");
        return $query->result_array();
    }

    public function reporte_pdf_et($id_plaza) {
//        $query = $this->db->query("SELECT det.IDconvocatoria, po.documento, CONCAT(po.apaterno,' ' ,po.amaterno, ', ', po.nombre) AS nombre,
//		det.examen_tecnico as puntaje
//		FROM detalle_postulacion det
//		JOIN postulante po
//		ON po.IDpostulante = det.IDpostulante WHERE IDconvocatoria ='$id_plaza'
//		ORDER BY det.examen_tecnico DESC
//		");
                $query = $this->db->query("
SELECT det.IDconvocatoria, con.numero, con.asuntoContrato, po.documento, CONCAT(po.apaterno,' ' ,po.amaterno, ', ', po.nombre) AS nombre,
		det.examen_tecnico as puntaje
		FROM detalle_postulacion det
		JOIN postulante po
		ON po.IDpostulante = det.IDpostulante 
JOIN convocatoria con ON con.IDconvocatoria = det.IDconvocatoria 
WHERE det.IDconvocatoria ='$id_plaza'
    GROUP BY po.documento
		ORDER BY det.examen_tecnico DESC      
		");
        return $query->result_array();
    }

    public function verificar_idplaza($id_plaza) {
        $query = $this->db->query("SELECT COUNT(*) as valor FROM convocatoria WHERE IDconvocatoria = '$id_plaza';");
        return $query->result_array();
    }

	
	

	var $t_view_evaluar_postulante = 'view_evaluar_postulante';
	
	/* ********** (INICIO) MANTENIMIENTO USUARIO ********** */
	var $t_view_usuarios = 'view_postulaciones';
	var $c_view_usuarios = array (
			'IDdetalle_postulacion',
			'IDconvocatoria',
            'IDpostulante',
			'documento',
			'nombres',
			'evaluacion_exp',
			'examen_tecnico',
			'resultado_final'
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
    
                public function reporte_personal_det_pdf($id) {
        $query = $this->db->query("select * from view_evaluar_postulante where IDdetalle_postulacion = $id");
        return $query->result_array();
    }
    
                public function reporte_personal_pdf($id) {
        $query = $this->db->query("select * from view_evaluar_postulante where IDCAS = $id");
        return $query->result_array();
    }

    public function reporte_fac_pdf($id) {
        $query = $this->db->query("select * from view_reporte_general_fac where IDCAS = $id");
        return $query->result_array();
    }
    
                    public function reporte_cap_pdf($id) {
        $query = $this->db->query("select * from view_reporte_general_cap where IDCAS = $id");
        return $query->result_array();
    }

                        public function reporte_lab_pdf($id) {
        $query = $this->db->query("select * from view_reporte_general_lab where IDCAS = $id");
        return $query->result_array();
    }
    
    // REPORTE PARA ANEXOS PDF
                    public function reporte_personal_anexo_pdf($id_anexo) {
        $query = $this->db->query("select * from view_reporte_dat_pers where IDCAS = $id_anexo");
        return $query->result_array();
    }
    
        // REPORTE PARA excel
                      public function reporte_personal_excel($id_anexo) {
//        $query = $this->db->query("select * from view_reporte_det_form where ID_CAS = $id_anexo");     
          $query = $this->db->query("select * from 
                  view_reporte_dat_pers dat 
                  JOIN view_reporte_det_form p ON p.ID_CAS = dat.IDCAS 
                  WHERE dat.IDCAS = $id_anexo");
        return $query->result_array();
    }
    
//                    public function reporte_personal_pdf($id) {
////        $query = $this->db->query("select * from view_reporte_dat_pers where ID_CAS = $id");
//            $query = $this->db->query(" SELECT *
//FROM view_reporte_dat_pers dat
//INNER JOIN view_reporte_det_form det ON det.ID_CAS = dat.ID_CAS  where dat.ID_CAS = $id");
//        return $query->result_array();
//    }
    
                    public function reporte_personal_form_pdf($id) {
        $query = $this->db->query("select * from view_reporte_det_form where where ID_CAS =  $id");
        return $query->result_array();
    }
}