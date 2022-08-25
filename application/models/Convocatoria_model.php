<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class convocatoria_model extends CI_Model {
	public function __construct() {
		parent::__construct ();
		$this->load->database ();
	}

	/* ********** (INICIO) CONVOCATORIAS ********** */
	
	public function listar_todo() {
        $query = $this->db->query("SELECT * FROM view_listar_todo_pastel");
        return $query->result();
    }

    public function listar_todo2() {
        $query = $this->db->query("SELECT * FROM view_listar_todo_pastel");
        return $query->result();
    }
    
	var $sql_parcial = null;
	
	private function _get_datatables_query() {
		
				$sql = "SELECT * FROM view_convocatorias ";
				$sql .= "WHERE 1 = 1 ";
				
				if ($_POST ['columns'] [1] ['search'] ['value'] > 0) { // Estado
					$sql .= " AND estado = '" . $_POST ['columns'] [1] ['search'] ['value'] . "' ";
				}
				if ( $_POST ['columns'] [2] ['search'] ['value'] != '' ) { // Número
					$sql .= " AND numero LIKE '%" . $_POST ['columns'] [2] ['search'] ['value'] . "%' ";
				}
				if (! empty ( $_POST ['columns'] [3] ['search'] ['value'] )) { // Contrato
					$sql .= " AND asuntoContrato LIKE '%" . $_POST ['columns'] [3] ['search'] ['value'] . "%' ";
				}
				if (! empty ( $_POST ['columns'] [4] ['search'] ['value'] )) { // Tipo
					$sql .= " AND IDtipo = '" . $_POST ['columns'] [4] ['search'] ['value'] . "' ";
				}
				
				
				$this->sql_parcial = $sql;
				if ($_POST ['length'] != - 1)
					$sql .= " LIMIT " . $_POST ['start'] . ", " . $_POST ['length'];
					return $sql;
	}
	
	function get_datatables() {
		$sql = $this->_get_datatables_query ();
		$query = $this->db->query ( $sql );
		return $query->result ();
	}
	
	function count_filtered() {
		$query = $this->db->query ( $this->sql_parcial );
		return $query->num_rows ();
	}
	
	public function count_all() {
		$this->db->from ( 'convocatoria' );
		return $this->db->count_all_results ();
		return $query->num_rows ();
	}
	
	public function registrar_convocatoria($tipo,$numero,$cantidad,$asuntoContrato,$estado,$fecha,$usuario){
		$query = $this->db->query("CALL USP_INSERTAR_CONVOCATORIA('$tipo','$numero','$cantidad','$asuntoContrato','$estado','$fecha','$usuario')");
		return $query->result_array();
	}

	// public function registrar_docente_conv($numero_documento, $sexo ,$nombre_docente, $apaterno, $amaterno, $celular){
	// 	$query = $this->db->query("CALL USP_INSERTAR_DOCENTE_CONV('$numero_documento','$sexo','$nombre_docente','$apaterno','$amaterno','$celular')");
	// 	return $query->result_array();
	// }

	public function registrar_docente_conv($input_dni, $input_sexo, $input_nombre, $input_apaterno, $input_amaterno, $input_cel, $input_email, $input_estado_civil, $input_direccion, $fk_convocatoria){
        $query = $this->db->query("CALL USP_INSERTAR_POSTULANTE('$input_dni', '$input_sexo', '$input_nombre','$input_apaterno','$input_amaterno','$input_cel','$input_email','$input_estado_civil','$input_direccion', '$fk_convocatoria')");
		return $query->result_array();

        //$query2 = $this->db->query('SELECT LAST_INSERT_ID()');
        //$row = $query2->row_array();
        //$fk_postulante = $row['LAST_INSERT_ID()'];

        //aqui viene lo bravo
        //Valor a ser llenados luego en el detale...
        //$sql_detalle = $this->db->query("INSERT INTO detalle_postulacion (IDpostulante, IDconvocatoria, fecha_reg ,estado) VALUES ('$fk_postulante', '$pk_convocatoria', now(), 0 )");
    }


	 // public function registrar_docente_conv($input_dni, $nombre_docente, $input_apaterno, $input_amaterno, $input_sexo, $input_cel, $input_email, $input_estado_civil, $input_direccion, $pk_convocatoria){
  //       //Variables internas del Usuario

  //       $query = $this->db->query("INSERT INTO postulante (documento, nombre, apaterno, amaterno, sexo, celular, email, estado_civil, direccion) 
  //       VALUES ('$input_dni', '$nombre_docente', '$input_apaterno', '$input_amaterno', '$input_sexo','$input_cel', '$input_email', '$input_estado_civil', '$input_direccion')");

  //       $query2 = $this->db->query('SELECT LAST_INSERT_ID()');
  //       $row = $query2->row_array();
  //       $fk_postulante = $row['LAST_INSERT_ID()'];

  //       //aqui viene lo bravo
  //       //Valor a ser llenados luego en el detale...
  //       $sql_detalle = $this->db->query("INSERT INTO detalle_postulacion (IDpostulante, IDconvocatoria, fecha_reg ,estado) VALUES ('$fk_postulante', '$pk_convocatoria', now(), 0 )");
  //   }
	
	public function actualizar_convocatoria($IDconvocatoria,$tipo,$numero,$cantidad,$asuntoContrato,$estado,$fecha,$usuario){
		$query = $this->db->query("CALL USP_ACTUALIZAR_CONVOCATORIA('$IDconvocatoria','$tipo','$numero','$cantidad','$asuntoContrato','$estado','$fecha','$usuario')");
		return true;
	}

	public function guardar_configuracion( $id, $input_fecha_uno, $input_hora_uno, $input_lugar_uno, $input_fecha_dos, $input_hora_dos, $input_lugar_dos ) {
        $query = $this->db->query ("CALL USP_ACTUALIZAR_CONFIGURACION_CONVOCATORIA('$id','$input_fecha_uno','$input_hora_uno','$input_lugar_uno','$input_fecha_dos','$input_hora_dos','$input_lugar_dos')");
        //var_dump($query);die;
        return true;
    }
	
	public function obtener_convocatoria($IDconvocatoria){
		$query = $this->db->query("CALL USP_LISTAR_CONVOCATORIA('$IDconvocatoria')");
		return $query->row ();
	}

	public function obtener_configuracion($IDconvocatoria){
		$query = $this->db->query("CALL USP_LISTAR_CONVOCATORIA_CONFIG('$IDconvocatoria')");
		//var_dump($query);die;
		return $query->row ();
	}
	
	public function eliminar_convocatoria($IDconvocatoria,$usuario){
		$query = $this->db->query("CALL USP_ELIMINAR_CONVOCATORIA('$IDconvocatoria','$usuario')");
		return true;
	}
	
	public function validar_numero($tipo,$numero){
		$query = $this->db->query("SELECT numero from convocatoria where YEAR(fechaRegistro) = YEAR(CURDATE()) and numero = '$numero' and IDtipo ='$tipo'");
		return $query->result_array();
	}
	
	public function validar_numero_actualizar($tipo,$numero,$ID){
		$query = $this->db->query("SELECT numero from convocatoria where YEAR(fechaRegistro) = YEAR(CURDATE()) and numero = '$numero' and IDtipo= '$tipo' and IDconvocatoria != $ID");
		return $query->result_array();
	}
	
	public function listar_tipos(){
		$query = $this->db->query("Select IDtipo,descripcionLarga from tipo");
		return $query->result_array();
	}
	
	
	/* ********** (FIN) PLAZAS ********** */
	

}
