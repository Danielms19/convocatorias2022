<?php
defined ( 'BASEPATH' ) or exit ( 'No direct script access allowed' );
class entrevista extends CI_Controller {

	public function __construct() {
		Date_default_timezone_set ('GMT');
		parent::__construct ();
		
		$this->load->model ( 'Entrevista_model', 'entrevista' );
	
	}
	
	/** INICIO - VISTA DE INICIO DE convocatoriaS**/
	public function index() {
		$data ['pag'] = "11";
        $data['user'] = $this->session->userdata('nombres');
//		$data ['tipos'] = $this->entrevista->listar_tipos();
		$this->load->view ( 'entrevista_view', $data );
	}

    public function verificar_si_existe_registro() {
        $registros = $this->entrevista->verificar_si_existe_registro(
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

    public function obtener_evaluacion_curricular() {
        $detalleid = $this->input->get ('detalleid');
        $idconvocatoria = $this->input->get ('idconvocatoria');
        $idpostulante = $this->input->get ('idpostulante');
        //var_dump($idpostulante);die;
        $data = $this->postulacion->obtener_evaluacion_curricular ( $detalleid, $idconvocatoria, $idpostulante );
        echo json_encode ( $data );
    }

	public function agregar_evaluacion_entrevista_final() {

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
        $insert = $this->entrevista->guardar_evaluacion_entrevista_final(
            //$this->input->post('valor_plaza'),
            $dni_docente,
            $this->input->post('uno_selecta'), 
            $this->input->post('uno_selectb'), 
            $this->input->post('uno_selectc'),
            $this->input->post('uno_selectd'),
            $this->input->post('suma_a'),

            $this->input->post('dos_selecta'), 
            $this->input->post('dos_selectb'), 
            $this->input->post('dos_selectc'),
            $this->input->post('suma_b'),

            $this->input->post('tres_selecta'),
            $this->input->post('tres_selectb'),
            $this->input->post('tres_selectc'),
            $this->input->post('suma_c'),
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

    public function modificar_evaluacion_entrevista_final() {

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
        $insert = $this->entrevista->modificar_evaluacion_entrevista_final(
            //$this->input->post('valor_plaza'),
            $dni_docente,
            $this->input->post('uno_selecta'), 
            $this->input->post('uno_selectb'), 
            $this->input->post('uno_selectc'),
            $this->input->post('uno_selectd'),
            $this->input->post('suma_a'),

            $this->input->post('dos_selecta'), 
            $this->input->post('dos_selectb'), 
            $this->input->post('dos_selectc'),
            $this->input->post('suma_b'),

            $this->input->post('tres_selecta'),
            $this->input->post('tres_selectb'),
            $this->input->post('tres_selectc'),
            $this->input->post('suma_c'),
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
        //redirect('evaluacion_expediente_list', 'refresh');
    }

    public function obtener_evaluacion_final() {
        $detalleid = $this->input->get ('detalleid');
        $idconvocatoria = $this->input->get ('idconvocatoria');
        $idpostulante = $this->input->get ('idpostulante');
        //var_dump($idpostulante);die;
        $data = $this->entrevista->obtener_evaluacion_final ( $detalleid, $idconvocatoria, $idpostulante );
        echo json_encode ( $data );
    }


    public function reporte_ev_curricular_pdf() {
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf3');

        $id = $this->input->get('conv');
        $idconvocatoria = $this->input->get('idconvocatoria');
        $idpostulante = $this->input->get('idpostulante');

        $datos = $this->entrevista->reporte_ev_curricular_pdf($id, $idconvocatoria, $idpostulante);
        //var_dump($datos);die;
        $this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf ();
        // Agregamos una página
        $this->pdf->AddPage('');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        /*
         * Se define el titulo, márgenes izquierdo, derecho y
         * el color de relleno predeterminado
         */

        $this->pdf->SetFont('Arial', 'BU', 15);

        $this->pdf->Cell(180, 8, utf8_decode('REPORTE DE EVALUACIÓN CURRICULAR '), 0, 0, 'C');

        $this->pdf->Ln(7);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, 'DATOS PERSONALES', '', 0, 'L', 0);
        $this->pdf->Cell(135, 7, 'EVALUADO POR', '', 0, 'R', 0);
        $this->pdf->Ln(6);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'DNI', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0]['dni_postulante']), '', 0, 'L', 0);
        $nombre_especialista = strtoupper($datos [0]['reg_por']);
        $this->pdf->Cell(1, 7, utf8_decode($nombre_especialista), '', 0, 'R', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'NOMBRE COMPLETO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nombre_postulante']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'TELEFONO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['celular']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'CORREO ELECTRONICO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
        $this->pdf->Ln(8);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, 'DATOS CONVOCATORIA', '', 0, 'L', 0);
        $this->pdf->Ln(6);

        // $this->pdf->SetFont('Arial', '', 8);
        // $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        // $this->pdf->Cell(40, 7, 'NIVEL', '', 0, 'L', 0);
        // $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        // $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nivel']), '', 0, 'L', 0);
        // $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('CÓDIGO DE CONVOCATORIA'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['IDconvocatoria']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('N° CAS'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nro_cas']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('DESCRIPCIÓN DEL PUESTO CAS :'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['asuntoContrato']), '', 0, 'L', 0);
        $this->pdf->Ln(6);

        $this->pdf->SetFillColor(212, 212, 212);
        $this->pdf->SetTextColor(0, 0, 0);

        $this->pdf->setfont('Arial', 'B', 9);

        /*-------------------FORMACION PROFESIONAL-------------------*/
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('FORMACION ACADÉMICA'), '', 0, 'L', 0);
            $this->pdf->SetFont('Arial', 'B', 9);
            // $this->pdf->Cell(100, 7, 'NUM. EXP: '.utf8_decode($datos [0] ['especialidad_completa']), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $dni = utf8_decode($datos[0]['dni_postulante']);
            $nombres = utf8_decode($datos[0]['dni_postulante']);
            $suma = utf8_decode($datos[0]['suma']);
            $sumb = utf8_decode($datos[0]['dni_postulante']);
            $sumc = utf8_decode($datos[0]['dni_postulante']);
            $bonif = utf8_decode($datos[0]['dni_postulante']);
            $suma_final = utf8_decode($datos[0]['dni_postulante']);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, 'Grado (s)/situacion academica y estudios requeridos para el puesto:', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, 'Punt. Maximo', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            $this->pdf->Cell(6, 5, '', 0, 0,'R', false);
            $this->pdf->Cell(165, 5, utf8_decode('Cumple con el grado mínimo requerido en el perfil del puesto'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['a1'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 'B', 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Cuenta con 1 grado superior al mínimo requerido'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['a2'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Cuenta con 2 o más grados superiores al mínimo requerido  '), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['a3'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*FOOTER PARTE A*/
            $this->pdf->SetFont('Arial', 'B', 8);
            $this->pdf->Cell(151, 5, '', 0, 0, 'C');
            $this->pdf->Cell(20, 5, 'Total Maximo', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, $datos [0] ['suma'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*-------CAPACITACIONES Y ACTUALIZACIONES--------*/
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('EXPERIENCIA LABORAL GENERAL'), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Años de experiencia profesional general:'), 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, 'Punt. Maximo', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            //un arreglo con su medida  a lo ancho

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Cumple con el mínimo requerido"),utf8_decode($datos [0] ['b1'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Tiene 2 años adicionales al mínimo requerido"),utf8_decode($datos [0] ['b2'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Tiene de 4 a más años adicionales al mínimo requerido"),utf8_decode($datos [0] ['b3'])));

            /*FOOTER PARTE B*/
            $this->pdf->SetFont('Arial', 'B', 8);
            $this->pdf->Cell(151, 5, '', 0, 0, 'C');
            $this->pdf->Cell(20, 5, 'Total Maximo', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, $datos [0] ['sumb'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*------------EXPERIENCIA LABORAL-------------------*/

            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('EXPERIENCIA ESPECÍFICA'), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Años de experiencia específica en la función y/o materia:'), 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, 'Punt. Maximo', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Cumple con el mínimo requerido"),utf8_decode($datos [0] ['c1'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Tiene 2 años adicionales al mínimo requerido"),utf8_decode($datos [0] ['c2'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Tiene de 4 a más años adicionales al mínimo requerido"),utf8_decode($datos [0] ['c3'])));

            $this->pdf->Ln(2);
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Años de experiencia específica asociada al Sector Público:")));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Cumple con el mínimo requerido"),utf8_decode($datos [0] ['c4'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Tiene 2 años adicionales al mínimo requerido"),utf8_decode($datos [0] ['c5'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Tiene de 4 a más años adicionales al mínimo requerido"),utf8_decode($datos [0] ['c6'])));

            $this->pdf->SetFont('Arial', 'B', 8);
            $this->pdf->Cell(151, 5, '', 0, 0, 'L');
            $this->pdf->Cell(20, 5, 'Total Maximo', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, $datos [0] ['sumc'], 1, 0, 'C');
            $this->pdf->Ln(5);


            /*------------CURSOS Y/O ESTUDIOS DE ESPECIALIZACIÓN-------------------*/

            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('CURSOS Y/O ESTUDIOS DE ESPECIALIZACIÓN'), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Aspecto a Evalua:'), 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, 'Punt. Maximo', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Cumple con el primer Cursos y/o Estudios de Especialización"),utf8_decode($datos [0] ['select_uno'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Cumple con el segundo Cursos y/o Estudios de Especialización"),utf8_decode($datos [0] ['select_dos'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Cumple con el tercer Cursos y/o Estudios de Especialización"),utf8_decode($datos [0] ['select_tres'])));

            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(165,20,25));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode("Cumple con el cuarto Cursos y/o Estudios de Especialización"),utf8_decode($datos [0] ['select_cuatro'])));

            /*------------FOOTER FINAL-------------------*/
            $this->pdf->Ln(2);
            $this->pdf->SetFont('Arial', 'B', 8);

            $this->pdf->Cell(131, 5, '', 0, 0, 'C');
            $this->pdf->Cell(30, 5, utf8_decode('Condición Obtenida'), 1, 0, 'C', true);
            $this->pdf->Cell(30, 5, 'Resultado Final', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            $this->pdf->SetFont('Arial', '', 8);
            $this->pdf->Cell(131, 5, '', 0, 0, 'C');
            $this->pdf->Cell(30, 5, $datos [0] ['condicion'],1, 0, 'C');
            $this->pdf->Cell(30, 5, $datos [0] ['suma_total'], 1, 0, 'C');

            $this->pdf->Ln(2);
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, 'OBSERVACIONES', '', 0, 'L', 0);
            $this->pdf->Ln(7);

            $this->pdf->SetFont('Arial', '', 8);
            // $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            // $this->pdf->Cell(0, 7, strtoupper(utf8_decode($datos [0] ['obs'])), '', 0, 'L', 0);
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(185,20,25));
                //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode($datos [0] ['obs'])));

            // $this->pdf->Ln(70);
            // $this->pdf->Cell(90, 0, utf8_decode('Comision de contratacion docente 2018 - UGEL 04 '), '', 0, 'L', 0);
            $this->pdf->Ln(18);
            $this->pdf->SetFont('Arial', '', 9);
            $this->pdf->Cell(90, 0, utf8_decode('EQUIPO DE RECLUTAMIENTO Y SELECCIÓN ' .date('Y'). ' - ' .date("d/m/y". " " ).'UGEL N° 04 - COMAS'), '', 0, 'L', 0);

            $this->pdf->Output("Reporte_Evaluacion_Personal.pdf", 'I');
            ob_end_flush();
    }
	
	public function reporte_ev_tecnica_pdf() {
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf3');

        $id = $this->input->get('conv');
        $idconvocatoria = $this->input->get('idconvocatoria');
        $idpostulante = $this->input->get('idpostulante');

        $datos = $this->entrevista->pdf_ev_tecnica($id, $idconvocatoria, $idpostulante);
        //var_dump($datos);die;
        $this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf ();
        // Agregamos una página
        $this->pdf->AddPage('');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        /*
         * Se define el titulo, márgenes izquierdo, derecho y
         * el color de relleno predeterminado
         */

        $this->pdf->SetFont('Arial', 'BU', 15);

        $this->pdf->Cell(180, 8, utf8_decode('REPORTE DE EXAMEN TÉCNICO '), 0, 0, 'C');

        $this->pdf->Ln(7);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, 'DATOS PERSONALES', '', 0, 'L', 0);
        $this->pdf->Cell(135, 7, 'EVALUADO POR', '', 0, 'R', 0);
        $this->pdf->Ln(6);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'DNI', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0]['dni_postulante']), '', 0, 'L', 0);
        $nombre_especialista = strtoupper($datos [0]['reg_por']);
        $this->pdf->Cell(1, 7, utf8_decode($nombre_especialista), '', 0, 'R', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'NOMBRE COMPLETO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nombre_postulante']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'TELEFONO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['celular']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'CORREO ELECTRONICO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
        $this->pdf->Ln(8);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, 'DATOS CONVOCATORIA', '', 0, 'L', 0);
        $this->pdf->Ln(6);

        // $this->pdf->SetFont('Arial', '', 8);
        // $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        // $this->pdf->Cell(40, 7, 'NIVEL', '', 0, 'L', 0);
        // $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        // $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nivel']), '', 0, 'L', 0);
        // $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('CÓDIGO DE CONVOCATORIA'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['IDconvocatoria']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('N° CAS'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nro_cas']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('DESCRIPCIÓN DEL PUESTO CAS :'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['asuntoContrato']), '', 0, 'L', 0);
        $this->pdf->Ln(6);

        $this->pdf->SetFillColor(212, 212, 212);
        $this->pdf->SetTextColor(0, 0, 0);

        $this->pdf->setfont('Arial', 'B', 9);

        /*-------------------FORMACION PROFESIONAL-------------------*/
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('FORMACION ACADÉMICA'), '', 0, 'L', 0);
            $this->pdf->SetFont('Arial', 'B', 9);
            // $this->pdf->Cell(100, 7, 'NUM. EXP: '.utf8_decode($datos [0] ['especialidad_completa']), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $dni = utf8_decode($datos[0]['dni_postulante']);
            $nombres = utf8_decode($datos[0]['dni_postulante']);
            $sumb = utf8_decode($datos[0]['dni_postulante']);
            $sumc = utf8_decode($datos[0]['dni_postulante']);
            $bonif = utf8_decode($datos[0]['dni_postulante']);
            $suma_final = utf8_decode($datos[0]['dni_postulante']);


            /*------------FOOTER FINAL-------------------*/
            $this->pdf->Ln(2);
            $this->pdf->SetFont('Arial', 'B', 8);

            $this->pdf->Cell(131, 5, '', 0, 0, 'C');
            $this->pdf->Cell(30, 5, utf8_decode('Condición Obtenida'), 1, 0, 'C', true);
            $this->pdf->Cell(30, 5, 'Resultado Final', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            $this->pdf->SetFont('Arial', '', 8);
            $this->pdf->Cell(131, 5, '', 0, 0, 'C');
            $this->pdf->Cell(30, 5, $datos [0] ['condicion'],1, 0, 'C');
            $this->pdf->Cell(30, 5, $datos [0] ['suma_total'], 1, 0, 'C');

            $this->pdf->Ln(2);
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, 'OBSERVACIONES', '', 0, 'L', 0);
            $this->pdf->Ln(7);

            $this->pdf->SetFont('Arial', '', 8);
            // $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            // $this->pdf->Cell(0, 7, strtoupper(utf8_decode($datos [0] ['obs'])), '', 0, 'L', 0);
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(185,20,25));
                //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode($datos [0] ['obs'])));

            // $this->pdf->Ln(70);
            // $this->pdf->Cell(90, 0, utf8_decode('Comision de contratacion docente 2018 - UGEL 04 '), '', 0, 'L', 0);
            $this->pdf->Ln(18);
            $this->pdf->SetFont('Arial', '', 9);
            $this->pdf->Cell(90, 0, utf8_decode('EQUIPO DE RECLUTAMIENTO Y SELECCIÓN ' .date('Y'). ' - ' .date("d/m/y". " " ).'UGEL N° 04 - COMAS'), '', 0, 'L', 0);

            $this->pdf->Output("Reporte_Evaluacion_Personal.pdf", 'I');
            ob_end_flush();
    }

    public function reporte_ev_final_pdf() {
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf3');

        $id = $this->input->get('conv');
        $idconvocatoria = $this->input->get('idconvocatoria');
        $idpostulante = $this->input->get('idpostulante');

        $datos = $this->entrevista->reporte_ev_final_pdf($id, $idconvocatoria, $idpostulante);
        //var_dump($datos);die;
        $this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf ();
        // Agregamos una página
        $this->pdf->AddPage('');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        /*
         * Se define el titulo, márgenes izquierdo, derecho y
         * el color de relleno predeterminado
         */

        $this->pdf->SetFont('Arial', 'BU', 15);

        $this->pdf->Cell(180, 8, utf8_decode('REPORTE DE EVALUACIÓN DE ENTREVISTA FINAL'), 0, 0, 'C');

        $this->pdf->Ln(7);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, 'DATOS PERSONALES', '', 0, 'L', 0);
        $this->pdf->Cell(135, 7, 'EVALUADO POR', '', 0, 'R', 0);
        $this->pdf->Ln(6);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'DNI', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0]['dni_postulante']), '', 0, 'L', 0);
        $nombre_especialista = strtoupper($datos [0]['reg_por']);
        $this->pdf->Cell(1, 7, utf8_decode($nombre_especialista), '', 0, 'R', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'NOMBRE COMPLETO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nombre_postulante']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'TELEFONO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['celular']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'CORREO ELECTRONICO', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
        $this->pdf->Ln(8);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, 'DATOS CONVOCATORIA', '', 0, 'L', 0);
        $this->pdf->Ln(6);

        // $this->pdf->SetFont('Arial', '', 8);
        // $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        // $this->pdf->Cell(40, 7, 'NIVEL', '', 0, 'L', 0);
        // $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        // $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nivel']), '', 0, 'L', 0);
        // $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('CÓDIGO DE CONVOCATORIA'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['IDconvocatoria']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('N° CAS'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nro_cas']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('DESCRIPCIÓN DEL PUESTO CAS :'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['asuntoContrato']), '', 0, 'L', 0);
        $this->pdf->Ln(6);

        $this->pdf->Image('images/criterios.png', 35, 82, 150, 15);
        $this->pdf->Ln(18);

        $this->pdf->SetFillColor(212, 212, 212);
        $this->pdf->SetTextColor(0, 0, 0);

        $this->pdf->setfont('Arial', 'B', 9);

        /*-------------------Adaptacion al puesto y cumplimiento de Funciones-------------------*/
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('Adaptacion al puesto y cumplimiento de Funciones'), '', 0, 'L', 0);
            $this->pdf->SetFont('Arial', 'B', 9);
            // $this->pdf->Cell(100, 7, 'NUM. EXP: '.utf8_decode($datos [0] ['especialidad_completa']), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $dni = utf8_decode($datos[0]['dni_postulante']);
            $nombres = utf8_decode($datos[0]['dni_postulante']);
            $suma = utf8_decode($datos[0]['suma']);
            $sumb = utf8_decode($datos[0]['dni_postulante']);
            $sumc = utf8_decode($datos[0]['dni_postulante']);
            $bonif = utf8_decode($datos[0]['dni_postulante']);
            $suma_final = utf8_decode($datos[0]['dni_postulante']);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, 'CRITERIOS', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, 'Punt. Maximo', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            $this->pdf->Cell(6, 5, '', 0, 0,'R', false);
            $this->pdf->Cell(165, 5, utf8_decode('Cumple con el grado mínimo requerido en el perfil del puesto'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['a1'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 'B', 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Tiene capacidad de análisis y aplicación'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['a2'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Ha propuesto ideas innovadoras en anteriores experiencias laborales'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['a3'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Evidencia a través de ejemplos el haber alcanzado los objetivos previstos en situaciones de presión de tiempo, inconvenientes'), 0, 0, 'C');
            $this->pdf->Ln(5);
            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('imprevistos, desacuerdos, oposición y diversidad en experiencias laborales anteriores'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['a4'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*FOOTER PARTE A*/
            $this->pdf->SetFont('Arial', 'B', 8);
            $this->pdf->Cell(151, 5, '', 0, 0, 'C');
            $this->pdf->Cell(20, 5, 'Total Maximo', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, $datos [0] ['suma'], 1, 0, 'C');
            $this->pdf->Ln(5);


            /*-------------------Adaptación a la Área u Oficina-------------------*/
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('Adaptación a la Área u Oficina'), '', 0, 'L', 0);
            $this->pdf->SetFont('Arial', 'B', 9);
            // $this->pdf->Cell(100, 7, 'NUM. EXP: '.utf8_decode($datos [0] ['especialidad_completa']), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, 'CRITERIOS', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, 'Punt. Maximo', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            $this->pdf->Cell(6, 5, '', 0, 0,'R', false);
            $this->pdf->Cell(165, 5, utf8_decode('Establece haber mantenido relaciones cordiales con su superior jerárquico en experiencias laborales anteriores'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['b1'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 'B', 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Entiende la estructura organizacional y línea de mando'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['b2'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Evidencia a través de ejemplos el haberse comprometido en la búsqueda de logros compartidos'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['b3'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*FOOTER PARTE B*/
            $this->pdf->SetFont('Arial', 'B', 8);
            $this->pdf->Cell(151, 5, '', 0, 0, 'C');
            $this->pdf->Cell(20, 5, 'Total Maximo', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, $datos [0] ['sumb'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*-------------------Adaptación a la cultura de la entidad-------------------*/
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('Adaptación a la cultura de la entidad'), '', 0, 'L', 0);
            $this->pdf->SetFont('Arial', 'B', 9);
            // $this->pdf->Cell(100, 7, 'NUM. EXP: '.utf8_decode($datos [0] ['especialidad_completa']), '', 0, 'L', 0);
            $this->pdf->Ln(8);

            $this->pdf->SetFont('Arial', '', 8);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, 'CRITERIOS', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, 'Punt. Maximo', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            $this->pdf->Cell(6, 5, '', 0, 0,'R', false);
            $this->pdf->Cell(165, 5, utf8_decode('Se adapta con versatilidad a distintas culturas, contextos y situaciones'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['c1'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 'B', 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Entiende y se enrola fácilmente en la dinámica institucional'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['c2'], 1, 0, 'C');
            $this->pdf->Ln(5);

            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->Cell(165, 5, utf8_decode('Evidencia a través de ejemplos actitud de servivio'), 1, 0, 'C');
            $this->pdf->Cell(20, 5, $datos [0] ['c3'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*FOOTER PARTE B*/
            $this->pdf->SetFont('Arial', 'B', 8);
            $this->pdf->Cell(151, 5, '', 0, 0, 'C');
            $this->pdf->Cell(20, 5, 'Total Maximo', 1, 0, 'C', true);
            $this->pdf->Cell(20, 5, $datos [0] ['sumc'], 1, 0, 'C');
            $this->pdf->Ln(5);

            /*------------FOOTER FINAL-------------------*/
            $this->pdf->Ln(2);
            $this->pdf->SetFont('Arial', 'B', 8);

            $this->pdf->Cell(131, 5, '', 0, 0, 'C');
            $this->pdf->Cell(30, 5, utf8_decode('Condición Obtenida'), 1, 0, 'C', true);
            $this->pdf->Cell(30, 5, 'Resultado Final', 1, 0, 'C', true);
            $this->pdf->Ln(5);

            $this->pdf->SetFont('Arial', '', 8);
            $this->pdf->Cell(131, 5, '', 0, 0, 'C');
            $this->pdf->Cell(30, 5, $datos [0] ['condicion'],1, 0, 'C');
            $this->pdf->Cell(30, 5, $datos [0] ['suma_total'], 1, 0, 'C');

            $this->pdf->Ln(2);
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, 'OBSERVACIONES', '', 0, 'L', 0);
            $this->pdf->Ln(7);

            $this->pdf->SetFont('Arial', '', 8);
            // $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            // $this->pdf->Cell(0, 7, strtoupper(utf8_decode($datos [0] ['obs'])), '', 0, 'L', 0);
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(185,20,25));
                //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C'));
            $this->pdf->Row(array(utf8_decode($datos [0] ['obs'])));

            // $this->pdf->Ln(70);
            // $this->pdf->Cell(90, 0, utf8_decode('Comision de contratacion docente 2018 - UGEL 04 '), '', 0, 'L', 0);
            $this->pdf->Ln(18);
            $this->pdf->SetFont('Arial', '', 9);
            $this->pdf->Cell(90, 0, utf8_decode('EQUIPO DE RECLUTAMIENTO Y SELECCIÓN ' .date('Y'). ' - ' .date("d/m/y". " " ).'UGEL N° 04 - COMAS'), '', 0, 'L', 0);

            $this->pdf->Output("Reporte_Evaluacion_Personal.pdf", 'I');
            ob_end_flush();
    }


}
