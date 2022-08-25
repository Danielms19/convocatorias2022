<?php
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);
defined('BASEPATH') or exit('No direct script access allowed');

class postulaciones extends CI_Controller {

	public function __construct() {
		Date_default_timezone_set ('GMT');
		parent::__construct ();
        $session = $this->Usuario_model->datos ();
        if (empty ( $session )) {
            redirect ( 'inicio', 'refresh' );
        }
		
		$this->load->model ( 'Postulacion_model', 'postulacion' );
	
	}
	
	/** INICIO - VISTA DE INICIO DE convocatoriaS**/
	public function index() {
	//	$this->load->helper ( 'url' );
		$data ['pag'] = "4";
		//$data ['tipos'] = $this->convocatoria->listar_tipos();
		
		$this->load->view ( '_postulaciones', $data );
	}
	/** FIN - VISTA DE INICIO DE convocatoriaS**/

    public function verificar_dni() {
        $nombres = $this->postulacion->verificar_dni($this->input->post('tipodoc'), $this->input->post('numdoc'));
        if (empty($nombres)) {
            $nombres = null;
        }
        $output = $nombres;
        // output to json format
        echo json_encode($output);
    }

    public function verificar_codigo_postulacion() {
        $nombres = $this->postulacion->verificar_codigo_postulacion($this->input->post('tipodoc'), $this->input->post('codigo_verificacion'));
        if (empty($nombres)) {
            $nombres = null;
        }
        $output = $nombres;
        // output to json format
        echo json_encode($output);
    }
    

    public function agregar_evaluacion_curricular() {

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
        $insert = $this->postulacion->guardar_evaluacion_curricular(
            //$this->input->post('valor_plaza'),
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
            $this->input->post('input_num_cas'),
            $this->input->post('input_descripcion_cas'),
            $this->input->post('IDpostulante'),

            $this->input->post('uno_selecta'),
            $this->input->post('uno_selectb'),
            $this->input->post('uno_selectc'),
            $this->input->post('uno_selectd')
            //$this->input->post('combo_bonif')
        );

        echo json_encode(array(
            "status" => TRUE
        ));
        //redirect('evaluacion_expediente_list', 'refresh');
    }

    public function excel_datos_evaluados_por_fecha() {

        $lista = $this->postulacion->obtener_datos_evaluados_por_fecha();
        $this->exportar($lista, 4);
    }

    public function exportar($lista, $tipo) {
        set_time_limit(0);
        //date_default_timezone_set('America/Lima');
        setlocale(LC_ALL, 'es_ES');
        $fecha = date('d/m/Y H:i:s');

        if ($tipo == 4) {

            $this->load->library('excel');
            $hoja = $this->excel->getActiveSheet();
            //activate worksheet number 1
            $this->excel->setActiveSheetIndex(0);
            //name the worksheet
            $hoja->setTitle('Reporte Total Fecha');
            //set cell A1 content with some text
            $hoja->setCellValue('A1', 'REPORTE TOTAL FECHA ' . $fecha);
            //change the font size
            $hoja->getStyle('A1')->getFont()->setSize(24);
            //make the font become bold
            $hoja->getStyle('A1')->getFont()->setBold(true);
            //merge cell A1 until D1
            $hoja->mergeCells('A1:E1');
            //set aligment to center for that merged cell (A1 to D1)
            $hoja->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);

            $hoja->getStyle('A2:E2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);

            $hoja->setCellValue('A2', '   ')->getStyle('A2')->getFont()->setSize(15)->setBold(true);
            $hoja->setCellValue('B2', 'FECHA')->getStyle('B2')->getFont()->setSize(15)->setBold(true);
            $hoja->setCellValue('C2', 'TRAMITES ATENDIDOS')->getStyle('C2')->getFont()->setSize(15)->setBold(true);
            $hoja->setCellValue('D2', 'TOTAL DE TRAMITES')->getStyle('D2')->getFont()->setSize(15)->setBold(true);
            $hoja->setCellValue('E2', 'INDICE DE TRAMITES ATENDIDOS ITA=(TA/TI)')->getStyle('E2')->getFont()->setSize(15)->setBold(true);

            $hoja->setAutoFilter('A2:E2');
            $hoja->getStyle('A2:E2')->getFill()->getStartColor()->setRGB('FF0000');

            $hoja->getColumnDimension('A')->setAutoSize(true);
            $hoja->getColumnDimension('B')->setAutoSize(true);
            $hoja->getColumnDimension('C')->setAutoSize(true);
            $hoja->getColumnDimension('D')->setAutoSize(true);
            $hoja->getColumnDimension('E')->setAutoSize(true);

            $cont = 3;
            foreach ($lista as $fila) {

                // $hoja->getStyle('A' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                // $hoja->setCellValue('A' . $cont, $fila['fecha_reg']);
                $hoja->getStyle('B' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $hoja->setCellValue('B' . $cont, $fila['fecha_reg']);
                $hoja->getStyle('C' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $hoja->setCellValue('C' . $cont, $fila['si_evaluados']);
                $hoja->getStyle('D' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $hoja->setCellValue('D' . $cont, $fila['total_por_dia']);
                $hoja->getStyle('E' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
                $hoja->setCellValue('E' . $cont, $fila['porcentaje'] . ' %');
                $cont++;
            }


            $filename = 'REPORTE_LISTAR_TOTAL_FECHA.xls'; //save our workbook as this file name
        }

        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="' . $filename . '"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache
        //save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
        //if you want to save it as .XLSX Excel 2007 format
        $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');
        //force user to download the Excel file without writing it to server's HD
        $objWriter->save('php://output');
    }

	public function verificar_idplaza() {
        $nombres = $this->postulacion->verificar_idplaza($this->input->post('id_plaza'));
        $output = $nombres;
        echo json_encode($output);
    }

	public function reporte_pdf() {
        $id_plaza = $this->input->get('id_plaza');

        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf3');
        $datos = $this->postulacion->reporte_pdf($id_plaza);

        //IF
        $condicion = $this->postulacion->condicion_hoja_vida($id_plaza);
		$valor_condicion = $condicion[0]['valor'];
        //var_dump($valor_condicion);die;

        if ( $valor_condicion != null ) {
        //echo 'holi';die;
        $this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf3 ();
        // Agregamos una página
        $this->pdf->AddPage('P');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        /*
         * Se define el titulo, márgenes izquierdo, derecho y
         * el color de relleno predeterminado
         */

        $this->pdf->SetFont('Arial', 'BU', 15);
		$this->pdf->Ln(7);	
        $this->pdf->Cell(180, 8, 'RESULTADOS PRELIMINARES', 0, 0, 'C');
        $this->pdf->Ln(9);
        $this->pdf->Cell(180, 8, utf8_decode('CONVOCATORIA CAS N°').$datos[0]['numero'].' - UGEL 04', 0, 0, 'C');

        $this->pdf->Ln(13);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, 'LOS POSTULANTES QUE CALIFICAN SE PROPORCIONA EL ACCESO A LA '.utf8_decode('APLICACIÓN'), '', 0, 'L', 0);

        $this->pdf->Ln(6);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, 'PARA LA ENTREVISTA'.utf8_decode(' SEGÚN').' SE DETALLA A '.utf8_decode('CONTINUACIÓN:'), '', 0, 'L', 0);
        
        $this->pdf->Ln(6);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'FECHA : '.utf8_decode($datos[0]['fecha_manual']), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'HORA   : '.utf8_decode($datos[0]['hora_manual']), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'LUGAR : En el siguiente link:', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(10);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode($datos[0]['lugar_manual']), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(10);

        $this->pdf->SetFillColor(212, 212, 212);
        $this->pdf->SetTextColor(0, 0, 0);

        $this->pdf->setfont('Arial', 'B', 9);


//        $this->pdf->Cell(10, 5, '#', 1, 0, 'C', true);
//        $this->pdf->Cell(25, 5, 'DNI', 1, 0, 'C', true);
//        $this->pdf->Cell(80, 5, 'APELLIDOS Y NOMBRES', 1, 0, 'C', true);
//        $this->pdf->Cell(25, 5, 'PUNTAJE', 1, 0, 'C', true);
//        $this->pdf->Cell(40, 5, 'OBSERVACION', 1, 0, 'C', true);
//        $this->pdf->Ln(5);
//
//        $contador = 1;
//
//        for ($i = 0; $i < count($datos); $i++) {
//
//            $this->pdf->SetFont('Arial', '', 8);
//            $documento = utf8_decode($datos[$i]['documento']);
//            $nombre = utf8_decode($datos[$i]['nombre']);
//            $puntajehv = utf8_decode($datos[$i]['puntaje']);
//            $puntaje = utf8_decode($datos[$i]['puntaje']);
//            if ($puntaje >=30) {
//            	$puntaje = 'CALIFICA';
//            }
//            else
//            	$puntaje = 'NO CALIFICA';
//
//            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
//            $this->pdf->Cell(10, 5, $contador, 1, 0, 'C');
//            $this->pdf->Cell(25, 5, $documento, 1, 0, 'C');
//            $this->pdf->Cell(80, 5, $nombre, 1, 0, 'C');
//            $this->pdf->Cell(25, 5, $puntajehv, 1, 0, 'C');
//            $this->pdf->Cell(40, 5, $puntaje, 1, 0, 'C');
//            $this->pdf->Ln(5);
//            $contador++;
//        }
        
            

        $this->pdf->Ln(5);
        $this->pdf->SetFont('Arial', 'BU', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'IMPORTANTE ', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

       $this->pdf->Ln(5);
       $this->pdf->SetFont('Arial', '', 12);
       $this->pdf->Cell(90, 0, utf8_decode('El postulante deberá portar su DNI, indispensable para poder poder ingresar a rendir la'), '', 0, 'L', 0);
       $this->pdf->Ln(5);
       $this->pdf->Cell(90, 0, utf8_decode('entrevista personal.'), '', 0, 'L', 0);

       $this->pdf->Ln(8);
       $this->pdf->SetFont('Arial', 'BI', 12);
       $this->pdf->Cell(90, 0, utf8_decode('El postulante que no se presente en la fecha y hora establecida, con el documento solicitado'), '', 0, 'L', 0);
       $this->pdf->Ln(5);
       $this->pdf->Cell(90, 0, utf8_decode('quedarán eliminados del proceso de selección.'), '', 0, 'L', 0);


       $this->pdf->Ln(18);
       $this->pdf->setfont('Arial', 'B', 10);
       $this->pdf->Cell(1, 5, '', 0, 0, 'L', false);
        $this->pdf->SetWidths(array(8,70,17,18,21,60));
        //un arreglo con alineacion de cada celda
        $this->pdf->SetAligns(array('C','C','C','C','C','C'));
        $this->pdf->Row(array(
            utf8_decode('N°'),
            utf8_decode('Apellidos y Nombres del postulante'),
            utf8_decode('DNI'),
            utf8_decode('Puntaje Obtenido'),
            utf8_decode('Condición Obtenida'),
            utf8_decode('Motivo de Descalificación'),
            )
                );

        //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
        //un arreglo con su medida  a lo ancho

        $contador = 1;

        for ($i = 0; $i < count($datos); $i++) {
        
        $this->pdf->SetFont('Arial', '', 9);
        $nombre = utf8_decode($datos[$i]['nombre']);
        $documento = utf8_decode($datos[$i]['documento']);
        $puntajehv = utf8_decode($datos[$i]['puntaje']);
        $puntaje = utf8_decode($datos[$i]['puntaje']);
        $obs = utf8_decode($datos[$i]['obs']);
        if ($puntaje >=45) {
            $puntaje = 'APTO';
        }
        else
            $puntaje = 'NO APTO';
        
        
        $this->pdf->Cell(1, 5, '', 0, 0, 'L', false);
        $this->pdf->SetWidths(array(8,70,17,18,21,60));
        //un arreglo con alineacion de cada celda
        $this->pdf->SetAligns(array('C','C','C','C','C','C'));
        $this->pdf->Row(array(utf8_decode($contador),
            $nombre,
            utf8_decode($documento),
            utf8_decode($puntajehv),
            utf8_decode($puntaje),
            $obs,
            )
                );
            $contador++;
        }

       $this->pdf->Ln(9);
       $this->pdf->SetFont('Arial', 'B', 9);
       $this->pdf->Cell(180, 8, utf8_decode('CADA ETAPA TIENE UN PUNTAJE Y ES DE CARÁCTER ELIMINATORIO'), 0, 0, 'C');

       $this->pdf->SetFont('Arial', '', 12);
       $this->pdf->Ln(15);

       setlocale(LC_ALL, 'es_ES');
       $fecha = strftime("Comas, %d de %B de %Y");

       $this->pdf->Cell(180, 8, utf8_decode($fecha), 0, 0, 'R');

       $this->pdf->Ln(15);
       $this->pdf->Cell(180, 8, utf8_decode('EQUIPO DE RECLUTAMIENTO Y SELECCIÓN'), 0, 0, 'R');

       $this->pdf->Ln(25);
       $this->pdf->SetFont('Arial', 'B', 7);
       $this->pdf->SetY(- 67);

       //$this->pdf->Output("Reporte.pdf", 'I');
       $fileName = 'RESULTADOS_HOJA_VIDA_' . $datos [0] ['numero'] . '.pdf'; 
             $this->pdf->Output($fileName,'I');
       ob_end_flush();
       }
       //PLAZA DESIERTA DE HOJA DE VIDA
       else {
       	$detale_convocatoria = $this->postulacion->detalle_convocatoria($id_plaza);

       	$this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf3 ();
        // Agregamos una página
        $this->pdf->AddPage('P');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        $this->pdf->SetFont('Arial', 'B', 15);
        $this->pdf->Ln(8);
        $this->pdf->Cell(180, 8, 'NO HAY EVALUACIONES RELACIONADAS A', 0, 0, 'C');
        $this->pdf->Ln(8);
        $this->pdf->Cell(180, 8, utf8_decode('ESTE CÓDIGO DE CONVOCATORIA'), 0, 0, 'C');	
                $this->pdf->Ln(9);
        $this->pdf->Cell(180, 8, '', 0, 0, 'C');

        $this->pdf->Ln(13);

//       $this->pdf->Output("Reporte.pdf", 'I');
        $fileName = 'RESULTADOS_HOJA_VIDA_' .'.pdf'; 
             $this->pdf->Output($fileName,'I');
       ob_end_flush();
       }

        
    }

    public function reporte_pdf_et() {
        $id_plaza = $this->input->get('id_plaza_et');
        $detale_convocatoria = $this->postulacion->detalle_convocatoria($id_plaza);
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf3');
        $datos = $this->postulacion->reporte_pdf_et($id_plaza);
        //IF
        $condicion = $this->postulacion->condicion_examen_tecnico($id_plaza);
		$valor_condicion = $condicion[0]['valor'];
		if ( $valor_condicion != null ) {
		$this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf3 ();
        // Agregamos una página
        $this->pdf->AddPage('P');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        /*
         * Se define el titulo, márgenes izquierdo, derecho y
         * el color de relleno predeterminado
         */

        $this->pdf->SetFont('Arial', 'BU', 15);
        $this->pdf->Ln(2);
        $this->pdf->Cell(180, 8, 'RESULTADOS PRELIMINARES - EXAMEN TECNICO', 0, 0, 'C');
        $this->pdf->Ln(8);
        $this->pdf->Cell(180, 8, 'CAS '.utf8_decode('N°').$datos[0]['numero'].' - UGEL 04', 0, 0, 'C');	
        $this->pdf->Ln(9);
        $this->pdf->Cell(180, 8, utf8_decode($datos[0]['asuntoContrato']), 0, 0, 'C');

        $this->pdf->Ln(13);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, 'EL POSTULANTE DECLARADO COMO CALIFICA PRESENTARSE AL', '', 0, 'L', 0);

        $this->pdf->Ln(5);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, 'EXANEN TECNICO EN LA UGEL 04 UBICADA EN LA AV. EL MAESTRO S/N URB. CARABAYLLO)', '', 0, 'L', 0);
        
        $this->pdf->Ln(5);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, '- COMAS (AL COSTADO DE LA I.E. ESTADOS UNIDOS', '', 0, 'L', 0); 	

        $this->pdf->Ln(7);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'FECHA : 17 DE NOVIEMBRE DE 2020 ', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'HORA   : 9:30 AM', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'LUGAR : OFICINA DE RECURSOS HUMANOS', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(10);

        $this->pdf->SetFillColor(212, 212, 212);
        $this->pdf->SetTextColor(0, 0, 0);

        $this->pdf->setfont('Arial', 'B', 9);


//               $this->pdf->Cell(10, 5, '#', 1, 0, 'C', true);
//        $this->pdf->Cell(25, 5, 'DNI', 1, 0, 'C', true);
//        $this->pdf->Cell(80, 5, 'APELLIDOS Y NOMBRES', 1, 0, 'C', true);
//        $this->pdf->Cell(25, 5, 'PUNTAJE', 1, 0, 'C', true);
//        $this->pdf->Cell(40, 5, 'OBSERVACION', 1, 0, 'C', true);
//        $this->pdf->Ln(5);
//
//        $contador = 1;
//
//        for ($i = 0; $i < count($datos); $i++) {
//
//            $this->pdf->SetFont('Arial', '', 8);
//            $documento = utf8_decode($datos[$i]['documento']);
//            $nombre = utf8_decode($datos[$i]['nombre']);
//            $puntajeet = utf8_decode($datos[$i]['puntaje']);
//            $puntaje = utf8_decode($datos[$i]['puntaje']);
//            if ($puntaje >=30) {
//            	$puntaje = 'CALIFICA';
//            }
//            else
//            	$puntaje = 'NO CALIFICA';
//
//            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
//            $this->pdf->Cell(10, 5, $contador, 1, 0, 'C');
//            $this->pdf->Cell(25, 5, $documento, 1, 0, 'C');
//            $this->pdf->Cell(80, 5, $nombre, 1, 0, 'C');
//            $this->pdf->Cell(25, 5, $puntajeet, 1, 0, 'C');
//            $this->pdf->Cell(40, 5, $puntaje, 1, 0, 'C');
//            $this->pdf->Ln(5);
//            $contador++;
//        }
        
        $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(10,25,80,25,40));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C'));
            $this->pdf->Row(array(
                utf8_decode('#'),
                utf8_decode('DNI '),
                utf8_decode('APELLIDOS Y NOMBRES '),
                utf8_decode('PUNTAJE '),
                utf8_decode('OBSERVACION '),
                )
                    );

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            //un arreglo con su medida  a lo ancho

                   $contador = 1;

        for ($i = 0; $i < count($datos); $i++) {
            
            $this->pdf->SetFont('Arial', '', 8);
            $documento = utf8_decode($datos[$i]['documento']);
            $nombre = utf8_decode($datos[$i]['nombre']);
            $puntajeet = utf8_decode($datos[$i]['puntaje']);
            $puntaje = utf8_decode($datos[$i]['puntaje']);
            if ($puntaje >=11) {
            	$puntaje = 'CALIFICA';
            }
            else
            	$puntaje = 'NO CALIFICA';
            
            
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(10,25,80,25,40));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C'));
            $this->pdf->Row(array(utf8_decode($contador),
                utf8_decode($documento),
                utf8_decode($nombre),
                utf8_decode($puntajeet),
                utf8_decode($puntaje),
                )
                    );
            
            
                   $contador++;
        }

        $this->pdf->Ln(5);
        $this->pdf->SetFont('Arial', 'BU', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'IMPORTANTE ', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

        // $this->pdf->Ln(70);
        // $this->pdf->Cell(90, 0, utf8_decode('Comision de contratacion docente 2018 - UGEL 04 '), '', 0, 'L', 0);

       $this->pdf->Ln(5);
       $this->pdf->SetFont('Arial', '', 12);
       $this->pdf->Cell(90, 0, utf8_decode('El postulante deberá portar su DNI, indispensable para poder poder ingresar a rendir la'), '', 0, 'L', 0);
       $this->pdf->Ln(5);
       $this->pdf->Cell(90, 0, utf8_decode('entrevista personal.'), '', 0, 'L', 0);

       $this->pdf->Ln(8);
       $this->pdf->SetFont('Arial', 'BI', 12);
       $this->pdf->Cell(90, 0, utf8_decode('El postulante que no se presente en la fecha y hora establecida, con el documento solicitado'), '', 0, 'L', 0);
       $this->pdf->Ln(5);
       $this->pdf->Cell(90, 0, utf8_decode('quedarán eliminados del proceso de selección.'), '', 0, 'L', 0);


       $this->pdf->Ln(25);
       $this->pdf->SetFont('Arial', 'B', 7);
       $this->pdf->SetY(- 67);

//       $this->pdf->Output("Reporte.pdf", 'I');
       $fileName = 'RESULTADOS_EXAMEN_TECNICO_' . $datos [0] ['numero'] . '.pdf'; 
       $this->pdf->Output($fileName,'I');
       
       ob_end_flush();
		}

        else {
        $detale_convocatoria = $this->postulacion->detalle_convocatoria($id_plaza);

       	$this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf3 ();
        // Agregamos una página
        $this->pdf->AddPage('P');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->Ln(5);
        $this->pdf->SetFont('Arial', 'B', 13);
        $this->pdf->AliasNbPages();
        $this->pdf->Cell(180, 8, utf8_decode('NO HAY EVALUACIONES TÉCNICAS RELACIONADAS A'), 0, 0, 'C');
        $this->pdf->Ln(8);
        $this->pdf->Cell(180, 8, utf8_decode('ESTE CÓDIGO DE CONVOCATORIA'), 0, 0, 'C');    
        $this->pdf->Ln(9);
        $this->pdf->Cell(180, 8, '', 0, 0, 'C');

//       $this->pdf->Output("Reporte.pdf", 'I');
        $fileName = 'RESULTADOS_EXAMEN_TECNICO_' . '.pdf'; 
        $this->pdf->Output($fileName,'I');
       
       ob_end_flush();	
       
        }
    }

    public function reporte_pdf_nota_final() {
        $id_plaza = $this->input->get('id_plaza_final');
        $detale_convocatoria = $this->postulacion->detalle_convocatoria($id_plaza);
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf3');
        $datos = $this->postulacion->ganador_resultado_final($id_plaza);
        $valor_condicion = $datos[0];
        //var_dump($valor_condicion);die;
        if ( $valor_condicion != null ) { 

        //var_dump($datos);die;
        $this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf3 ();
        // Agregamos una página
        $this->pdf->AddPage('P');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();

        $this->pdf->SetFont('Arial', 'BU', 15);
        $this->pdf->Ln(2);
        $this->pdf->Cell(180, 8, 'RESULTADOS FINALES', 0, 0, 'C');
        $this->pdf->Ln(8);
        $this->pdf->Cell(180, 8, 'CONVOCATORIA CAS '.utf8_decode('N°').$datos[0]['numero'].' - UGEL 04', 0, 0, 'C');    
        $this->pdf->Ln(9);
        $this->pdf->Cell(180, 8, utf8_decode($datos[0]['asuntoContrato']), 0, 0, 'C');
        
        $this->pdf->Ln(13);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, utf8_decode('EL POSTULANTE GANADOR DEBERÁ ESTAR PENDIENTE DE LA COMUNICACIÓN'), '', 0, 'L', 0);

        $this->pdf->Ln(7);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, utf8_decode('DEL RESPONSABLE DE RECLUTAMIENTO Y SELECCIÓN PARA LA  CORRESPONDIENTE'), '', 0, 'L', 0);
        
        $this->pdf->Ln(7);

        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', '', 12);
        $this->pdf->Cell(40, 7, utf8_decode('SUSCRIPCIÓN DE CONTRATO'), '', 0, 'L', 0);    

        $this->pdf->Ln(5);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'FECHA : ' . $datos[0]['fecha_manual_dos'], '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'HORA : ' . $datos[0]['hora_manual_dos'], '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'LUGAR :  En el siguiente link:', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(10);

        $this->pdf->SetFont('Arial', 'B', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, $datos[0]['lugar_manual_dos'], '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(10);

        $this->pdf->SetFillColor(212, 212, 212);
        $this->pdf->SetTextColor(0, 0, 0);

        $this->pdf->setfont('Arial', 'B', 9);

        $this->pdf->Ln(5);
        $this->pdf->SetFont('Arial', 'BU', 12);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, 'IMPORTANTE ', '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, '', '', 0, 'C', 0);
        $this->pdf->Ln(5);

       $this->pdf->Ln(5);
       $this->pdf->SetFont('Arial', '', 12);
       $this->pdf->Cell(90, 0, utf8_decode('Es importante señalar, que , en concordancia con los requisitos de la convocatoria, el postulante'), '', 0, 'L', 0);
       $this->pdf->Ln(5);
       $this->pdf->Cell(90, 0, utf8_decode('declarado GANADOR no debe tener impedimento alguno para contratar con el Estado.'), '', 0, 'L', 0);

       $this->pdf->Ln(7);
       $this->pdf->Cell(90, 0, utf8_decode('Asimismo, y de acuerdo a la naturaleza del contrato antes mencionado, el postulante declarado'), '', 0, 'L', 0);

       $this->pdf->Ln(5);
       $this->pdf->Cell(90, 0, utf8_decode('GANADOR debera presentar lo siguiente:'), '', 0, 'L', 0);

       $this->pdf->SetFont('Arial', 'B', 12);
       $this->pdf->Ln(7);
       $this->pdf->Cell(90, 0, utf8_decode('(*) Voucher del número de cuenta del BANCO DE LA NACIÓN. (Solo si tuviese cuenta)'), '', 0, 'L', 0);

       $this->pdf->SetFont('Arial', 'B', 12);
       $this->pdf->Ln(7);
       $this->pdf->Cell(90, 0, utf8_decode('(*) Exoneración de Renta de 4ta categoría. (Si lo desea)'), '', 0, 'L', 0);

       $this->pdf->Ln(10);
       $this->pdf->SetFont('Arial', '', 12);
       $this->pdf->Cell(90, 0, utf8_decode('Agradecemos el interés mostrado en la presente convocatoria.'), '', 0, 'L', 0);
       $this->pdf->Ln(10);


       $this->pdf->Cell(1, 5, '', 0, 0, 'L', false);
        $this->pdf->SetWidths(array(8,60,15,15,18,18,20,40));
        $this->pdf->SetFont('Arial', 'B', 9);
        //$this->pdf->SetWidths(array(8,70,17,18,21,60));
        //un arreglo con alineacion de cada celda
        $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
        $this->pdf->Row(array(
            utf8_decode('N°'),
            utf8_decode('Apellidos y Nombres del postulante'),
            utf8_decode('DNI'),
            utf8_decode('Ev. Hoja de Vida'),
            utf8_decode('Puntaje Entrevista'),
            utf8_decode('Resultado Final'),
            utf8_decode('Condicion'),
            utf8_decode('Observaciones'),
            )
                );

        //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
        //un arreglo con su medida  a lo ancho

        $contador = 1;

        for ($i = 0; $i < count($datos); $i++) {
            
            $this->pdf->SetFont('Arial', '', 8);
            $documento = utf8_decode($datos[$i]['documento']);
            $nombre = utf8_decode($datos[$i]['nombre']);
            $puntajehv = utf8_decode($datos[$i]['puntajehv']);
            $puntajeet = utf8_decode($datos[$i]['puntajeet']);
            $puntajerf = utf8_decode($datos[$i]['puntaje']);
            $puntaje = utf8_decode($datos[$i]['resultado']);
            $obs = utf8_decode($datos[$i]['obs']);
            // if ($puntaje >=30) {
            //  $puntaje = 'CALIFICA';
            // }
            // else
            //  $puntaje = 'NO CALIFICA';
            
            
            $this->pdf->Cell(1, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(8,60,15,15,18,18,20,40));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
            $this->pdf->Row(array(utf8_decode($contador),
                $nombre,
                utf8_decode($documento),
                utf8_decode($puntajehv),
                utf8_decode($puntajeet),
                utf8_decode($puntajerf),
                utf8_decode($puntaje),
                $obs,
                )
                    );
            
            
                   $contador++;
        }

       $this->pdf->SetFont('Arial', '', 12);
       setlocale(LC_ALL, 'es_ES');
       $fecha = strftime("Comas, %d de %B de %Y");
       $this->pdf->Ln(12);
       $this->pdf->Cell(180, 8, utf8_decode($fecha), 0, 0, 'R');

       $this->pdf->Ln(12);
       $this->pdf->Cell(180, 8, utf8_decode('EQUIPO DE RECLUTAMIENTO Y SELECCIÓN'), 0, 0, 'R');


       $this->pdf->Ln(25);
       $this->pdf->SetFont('Arial', 'B', 7);
       $this->pdf->SetY(- 67);

       //$this->pdf->Output("Reporte.pdf", 'I');
       
       $fileName = 'RESULTADOS_FINALES_' . $datos [0] ['numero'] . '.pdf'; 
       $this->pdf->Output($fileName,'I');
       
       ob_end_flush();

       }
       else {
        $this->db->reconnect();
        ob_start();
        $this->pdf = new Pdf3 ();
        // Agregamos una página
        $this->pdf->AddPage('P');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->Ln(5);
        $this->pdf->SetFont('Arial', 'B', 13);
        $this->pdf->AliasNbPages();
        $this->pdf->Cell(180, 8, utf8_decode('NO HAY EVALUACIONES FINALES RELACIONADAS A'), 0, 0, 'C');
        $this->pdf->Ln(8);
        $this->pdf->Cell(180, 8, utf8_decode('ESTE CÓDIGO DE CONVOCATORIA'), 0, 0, 'C');    
        $this->pdf->Ln(9);
        $this->pdf->Cell(180, 8, '', 0, 0, 'C');

//       $this->pdf->Output("Reporte.pdf", 'I');
        $fileName = 'RESULTADOS_FINALES_' . '.pdf'; 
        $this->pdf->Output($fileName,'I');
       
       ob_end_flush();  
       
        }

    }


	public function actualizar_evaluacion() {
		//$this->load->library('encrypt');
		//$password = null;
		
		//if(!empty( $clave )){ $password = $this->encrypt->encode ( $clave ); }

		
		$input_valorPK = $this->input->post ('input_valorPK');

		$input_hoja_vida = $this->input->post ('input_hoja_vida');
		$input_examen_tecnico = $this->input->post ('input_examen_tecnico');
		$input_resultado_final = $this->input->post ('input_resultado_final');

		$this->postulacion->actualizar_evaluacion(
			$input_hoja_vida,
			$input_examen_tecnico,
			$input_valorPK,
			$input_resultado_final
		 );
		 
		echo json_encode ( array (
				"status" => TRUE 
		) );
	}

	public function obtener_evaluacion_tecnica() {
        $detalleid = $this->input->get ('detalleid');
        $idconvocatoria = $this->input->get ('idconvocatoria');
        $idpostulante = $this->input->get ('idpostulante');
        //var_dump($idpostulante);die;
		$data = $this->postulacion->obtener_evaluacion_tecnica ( $detalleid, $idconvocatoria, $idpostulante );
		echo json_encode ( $data );
	}

    public function obtener_evaluacion_curricular() {
        $detalleid = $this->input->get ('detalleid');
        $idconvocatoria = $this->input->get ('idconvocatoria');
        $idpostulante = $this->input->get ('idpostulante');
        //var_dump($idpostulante);die;
        $data = $this->postulacion->obtener_evaluacion_curricular ( $detalleid, $idconvocatoria, $idpostulante );
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
                        $row [] = $miembro->fecha_reg;
			$row [] = $miembro->IDconvocatoria;
                        $row [] = $miembro->numero;
			$row [] = $miembro->documento;
			$row [] = $miembro->nombres;
                        
            $row [] = '<div class="text-center"><a href="' . base_url() . 'archivos_a_evaluar/' . $miembro->archivo. '" target="_blank"><i class="fa fa-folder fa-2x"></i></a></div>';


			$row [] = $miembro->evaluacion_exp;
			$row [] = $miembro->examen_tecnico;
            $row [] = $miembro->entrevista_personal;
			$row [] = $miembro->resultado_final;
			

            $row [] = '<div class="btn-group">
                  <button type="button" class="btn btn-info">Ficha</button>
                  <button type="button" class="btn btn-info dropdown-toggle" data-toggle="dropdown">
                    <span class="caret"></span>
                    <span class="sr-only">Toggle Dropdown</span>
                  </button>
                  <ul class="dropdown-menu" role="menu">
                    <li><a class="btn btn-sm btn-default"  title="CV" onclick="imprimir_evaluacion_personal_pdf(' . "'" . $miembro->IDpostulante . "'" . ')"><i class="fa fa-file-pdf-o fa-2x" style="color: red;"></i>CV     </a></li>
                    <li><a class="btn btn-sm btn-default"  title="Anexo" onclick="imprimir_anexos_pdf(' . "'" . $miembro->IDpostulante . "'" . ')"><i class="fa fa-file-pdf-o fa-2x" style="color: red;"></i>ANEXOS </a></li>
                    <li><a class="btn btn-sm btn-default"  title="Resumen" onclick="imprimir_resumen_excel(' . "'" . $miembro->IDpostulante . "'" . ')"><i class="fa fa-file-excel-o fa-2x" style="color: green;"></i>RESUMEN</a></li>

            </ul>
            </div>';

            $fila = '<div class="btn-group">
              <button type="button" class="btn btn-success">Acción</button>
              <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
                <span class="caret"></span>
                <span class="sr-only">Toggle Dropdown</span>
              </button>
              <ul class="dropdown-menu" role="menu">';
                     
              if ( $miembro->condicion_uno != null ) {
                 $fila .= '<li><a class="btn btn-sm btn-default" href="javascript:void(0)" onclick="ev_curricular(' . "'" . $miembro->IDdetalle_postulacion . "'" . ',' . "'" . $miembro->IDconvocatoria . "'" . ',' . "'"  . $miembro->IDpostulante . "'" . ')"><i class="fa fa-edit"></i> EV. CURRICULAR </a></li>';
              }
              if ( $miembro->condicion_dos != null ) {
                 $fila .= '<li><a class="btn btn-sm btn-default" href="javascript:void(0)"  onclick="ex_tecnico(' . "'" . $miembro->IDdetalle_postulacion . "'" . ',' . "'" . $miembro->IDconvocatoria . "'" . ',' . "'"  . $miembro->IDpostulante . "'" . ')"><i class="fa fa-edit"></i> EXAMEN TÉCNICO </a></li>';
              }
              if ( $miembro->condicion_tres != null ) {
                 $fila .= '<li><a class="btn btn-sm btn-default" href="javascript:void(0)"  onclick="entre_final(' . "'" . $miembro->IDdetalle_postulacion . "'" . ',' . "'" . $miembro->IDconvocatoria . "'" . ',' . "'"  . $miembro->IDpostulante . "'" . ')"><i class="fa fa-edit"></i> ENTREVISTA FINAL </a></li>';
              }

              if ( $miembro->condicion_uno != null ) {
                 $fila .= '<li><a class="btn btn-sm btn-default" style="color: red;" href="javascript:void(0)" onclick="pdf_ev_curricular(' . "'" . $miembro->IDdetalle_postulacion . "'" . ',' . "'" . $miembro->IDconvocatoria . "'" . ',' . "'"  . $miembro->IDpostulante . "'" . ')"><i class="fa fa-file-pdf-o"></i> evaluación Curricular </a></li>';
              }

              if ( $miembro->condicion_dos != null ) {
                 $fila .= '<li><a class="btn btn-sm btn-default" style="color: red;" href="javascript:void(0)" onclick="pdf_ev_tecnica(' . "'" . $miembro->IDdetalle_postulacion . "'" . ',' . "'" . $miembro->IDconvocatoria . "'" . ',' . "'"  . $miembro->IDpostulante . "'" . ')"><i class="fa fa-file-pdf-o"></i> Examen Técnico </a></li>';
              }

              if ( $miembro->condicion_tres != null ) {
                 $fila .= '<li><a class="btn btn-sm btn-default" style="color: red;" href="javascript:void(0)" onclick="pdf_ev_final(' . "'" . $miembro->IDdetalle_postulacion . "'" . ',' . "'" . $miembro->IDconvocatoria . "'" . ',' . "'"  . $miembro->IDpostulante . "'" . ')"><i class="fa fa-file-pdf-o"></i> Entrevista Final </a></li>';
              }
               
                
            $fila .= '</ul></div>';
		    $row [] = $fila;

                        
                        
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
        
    public function reporte_personal_pdf() {
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf_papeleta');

        $id = $this->input->get('conv');

        $datos = $this->postulacion->reporte_personal_pdf($id);
       $datos_fac = $this->postulacion->reporte_fac_pdf($id);
       $datos_cap = $this->postulacion->reporte_cap_pdf($id);
        $datos_lab = $this->postulacion->reporte_lab_pdf($id);
//        $datos_det = $this->postulacion->reporte_personal_det_pdf($id);
        $this->db->reconnect();
        ob_start();
//        $this->pdf = new Pdf ();
        
        $this->pdf = new Pdf_papeleta();
        
        // Agregamos una página
        $this->pdf->AddPage('');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        
        /*
         * Se define el titulo, márgenes izquierdo, derecho y
         * el color de relleno predeterminado
         */

        $this->pdf->SetFont('Arial', 'BU', 15);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 01 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('FICHA CURRICULAR DEL POSTULANTE '), 0, 0, 'C');
//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, utf8_decode('I. DATOS DE POSTULACIÓN'), '', 0, 'L', 0);

        $this->pdf->Ln(7);
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('PROCESO DE SELECCIÓN'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['CAS']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('DESCRIPCIÓN DE CAS'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['asuntoContrato']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
               $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('FECHA DE POSTULACIÓN'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['FEC_POSTULACION']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
       
       
       $this->pdf->Ln(6);
        
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'BU', 9);
        $this->pdf->Cell(40, 7, utf8_decode('II. DATOS PERSONALES'), '', 0, 'L', 0);

        $this->pdf->Ln(7);
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('DNI'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['dni']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('CÓDIGO DE VERIFICACIÓN'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['COD_VERIF']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('APELLIDOS Y NOMBRES'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['nombre_completo']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('SEXO'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['sexo']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('FECHA DE NACIMIENTO'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['FEC_NAC']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
      
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('DOMICILIO'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['direccion']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
                $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('TELEFONO FIJO'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['TELEFONO']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('CELULAR'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['celular']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('CORREO'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
        
        $this->pdf->Ln(10);

        $this->pdf->SetFillColor(212, 212, 212);
        $this->pdf->SetTextColor(0, 0, 0);

        $this->pdf->setfont('Arial', 'B', 9);



            /*------- INICIO   FORM. ACADEMICA --------*/
            $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('III. FORMMACION ACADEMICA'), '', 0, 'L', 0);
            $this->pdf->Ln(8);

                  $this->pdf->SetFont('Arial', '', 8);
                  
                      $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
            $this->pdf->Row(array(
                utf8_decode('#'),
                utf8_decode('NIVEL EDUCATIVO'),
                utf8_decode('GRADO ACADÉMICO '),
                utf8_decode('NOMBRE DE LA CARRERA'),
                utf8_decode('CENTRO DE ESTUDIOS'),
                utf8_decode('DESDE'),
                utf8_decode('HASTA'),
                )
                    );

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            //un arreglo con su medida  a lo ancho

                   $contador = 1;

        for ($i = 0; $i < count($datos_fac); $i++) {
            
            $ie = $datos_fac[$i]['NIV_EDUCA'];
            $tipo = $datos_fac[$i]['GRAD_ACA'];
            $nivel = utf8_decode($datos_fac[$i]['NOM_CARRERA']);
            $descripcion = utf8_decode($datos_fac[$i]['CENT_ESTUDIO']);
            $estado = utf8_decode($datos_fac[$i]['desde_academico']);
            $fecha = utf8_decode($datos_fac[$i]['hasta_academico']);
            
            
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
            $this->pdf->Row(array(utf8_decode($contador),
                utf8_decode($ie),
                utf8_decode($tipo),
                utf8_decode($nivel),
                utf8_decode($descripcion),
                utf8_decode($estado),
                utf8_decode($fecha),
                )
                    );
            
            
                   $contador++;
        }

                 $this->pdf->Ln(3);       

            
             /*------- INICIO   CAPACITACIONES.  --------*/
             $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('IV. CAPACITACIONES'), '', 0, 'L', 0);
            $this->pdf->Ln(8);

               $this->pdf->SetFont('Arial', '', 8);
                  
                      $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
            $this->pdf->Row(array(
                utf8_decode('#'),
                utf8_decode('EMPRESA / INSTITUCIÓN'),
                utf8_decode('TIPO DE CURSO'),
                utf8_decode('NOMBRE DEL CURSO'),
                utf8_decode('TOTAL DE HORAS'),
                utf8_decode('FEC. INICIO'),
                utf8_decode('FEC. FIN'),
                )
                    );

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            //un arreglo con su medida  a lo ancho

                   $contador = 1;

        for ($i = 0; $i < count($datos_cap); $i++) {
            
            $ie = $datos_cap[$i]['NOM_CURSO'];
            $tipo = $datos_cap[$i]['TIP_CURSO'];
            $nivel = utf8_decode($datos_cap[$i]['INSTITUCION']);
            $descripcion = utf8_decode($datos_cap[$i]['desde_capa']);
            $estado = utf8_decode($datos_cap[$i]['hasta_capa']);
            $fecha = utf8_decode($datos_cap[$i]['TOTHORAS']);
            
            
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
            $this->pdf->Row(array(utf8_decode($contador),
                utf8_decode($nivel),
                utf8_decode($tipo),
                 utf8_decode($ie),
                 utf8_decode($fecha),
                 utf8_decode($descripcion),
                utf8_decode($estado),
                )
                    );
            
            
                   $contador++;
        }

                 $this->pdf->Ln(3);   
            

               /*------- INICIO   EXPERIENCIA LABORAL.  --------*/
          $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
            $this->pdf->SetFont('Arial', 'BU', 9);
            $this->pdf->Cell(40, 7, utf8_decode('V. EXPERIENCIA LABORAL'), '', 0, 'L', 0);
            $this->pdf->Ln(8);

           $this->pdf->SetFont('Arial', '', 8);
                  
                      $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
            $this->pdf->Row(array(
                utf8_decode('#'),
                utf8_decode('EMPRESA / INSTITUCIÓN'),
                utf8_decode('PUESTO'),
                utf8_decode('SECTOR'),
                utf8_decode('AÑO'),
                utf8_decode('MES'),
                utf8_decode('DÍA'),
                )
                    );

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            //un arreglo con su medida  a lo ancho

                   $contador = 1;

        for ($i = 0; $i < count($datos_lab); $i++) {
            
            $ie = $datos_lab[$i]['EMPRESA'];
            $tipo = $datos_lab[$i]['CARGO'];
            $nivel = utf8_decode($datos_lab[$i]['SECTOR']);
            $descripcion = utf8_decode($datos_lab[$i]['AÑO']);
            $estado = utf8_decode($datos_lab[$i]['MES']);
            $fecha = utf8_decode($datos_lab[$i]['DIA']);
            
            
            $this->pdf->Cell(6, 5, '', 0, 0, 'L', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C','C','C'));
            $this->pdf->Row(array(utf8_decode($contador),
                utf8_decode($ie),
                utf8_decode($tipo),
                utf8_decode($nivel),
                 utf8_decode($descripcion),
                utf8_decode($estado),
                utf8_decode($fecha),
                )
                    );
            
            
                   $contador++;
        }


                 $this->pdf->Ln(8);   
               
//                $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//            $this->pdf->SetFont('Arial', 'BU', 9);
//            $this->pdf->Cell(40, 7, utf8_decode('III. EXPERIENCIA LABORAL'), '', 0, 'L', 0);
//            $this->pdf->Ln(8);
//            
             $this->pdf->SetFont('Arial', '', 5);
           $this->pdf->Cell(15, 5, '', '', 0, 'R', 0);
             $this->pdf->MultiCell(150, 5, utf8_decode('DECLARO BAJO JURAMENTO, QUE LA INFORMACION PROPORCIONADA ES VERAZ Y EXACTA Y EN CASO SEA NECESARIO, AUTORIZO A LA UNIDAD DE GESTION EDUCATIVA LOCAL N° 04, EFECTUAR LA VERACIDAD DE LA PRESENTE DECLARACION JURADA; SEGÚN LO ESTABLECIDO EN EL ARTICULO 411 DEL CODIGO PENAL Y DELITO CONTRA LA FE PÚBLICA - TITULO XIX DEL CODIGO PENAL, ACORDE AL ARTICULO 33° DEL TEXTO UNICO ORDENADO DE LA LEY N° 27444, LEY DE PROCEDIMIENTOS ADMINISTRATIVOS GENERAL, APROBADO POR DECRETO SUPREMO N° 004-JUS, ASIMISMO ME COMPROMETO A REEMPLAZAR LA PRESENTE DECLARACION JURADA POR LOS CERTIFICADOS, SEGUN SEAN REQUERIDO.'), 0);
 
          $this->pdf->Ln(30); 
   
          
              $this->pdf->SetFont('Arial', 'B', 8);

        
        /* FOOTER */
        $this->pdf->SetY(- 38);
        $this->pdf->Line(80, 260, 130, 260);
        $this->pdf->Rect(140, 240, 20, 25);
        $this->pdf->Cell(85, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'B', 9);
        $this->pdf->Cell(35, 7, 'Firma del Postulante', '', 0, 'LU', 0);
        $this->pdf->Ln(4);
        $this->pdf->Cell(80, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(5, 7, '', '', 0, 'LU', 0);
        $this->pdf->Cell(0, 7, 'DNI' . ' ' . $datos [0] ['dni'], '', 0, 'LU', 0);
            $this->pdf->Ln(12);

//            $this->pdf->Output("Ficha_postulación_.pdf", 'I');
            
            
             $fileName = 'Ficha_postulación_' . $datos [0] ['dni'] . '.pdf'; 
             $this->pdf->Output($fileName,'I');
        
        
            ob_end_flush();
    }
    
    
    
     public function reporte_anexos_pdf() {
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf');

        $id_anexo = $this->input->get('conv');

        $datos = $this->postulacion->reporte_personal_anexo_pdf($id_anexo);
        $this->db->reconnect();
        ob_start();
//        $this->pdf = new Pdf ();
        
        $this->pdf = new Pdf();
        
        // Agregamos una página
        $this->pdf->AddPage('');
        // Define el alias para el número de página que se imprimirá en el pie
        $this->pdf->AliasNbPages();
        
        /*
         * Se define el titulo, márgenes izquierdo, derecho y
         * el color de relleno predeterminado
         */
/*  INICIO  ANEXO '2  */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 02 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DECLARACIÓN JURADA DE AFILIACIÓN AL RÉGIMEN PREVISIONAL'), 0, 0, 'C');
//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Me encuentro afiliado a algún régimen de pensiones: '.utf8_decode($datos [0] ['RADIO_A1'])), 0);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Elijo el siguiente régimen de pensiones: '), 0);

        $this->pdf->Ln(4);
        
             $dl = utf8_decode($datos [0] ['RADIO_A2']);
            if ($dl == 'DL 19990') {
            	$dl = 'DL 19990';
            }
            else
            	$dl = ' ';

        $this->pdf->Cell(15, 7, '', '', 0, 'L', 0);
        $this->pdf->Cell(80, 7, utf8_decode('Sistema Nacional de Pensiones DL 19990'), '', 0, 'L', 0);
        $this->pdf->Cell(50, 7, ':', '', 0, 'L', 0);
        $this->pdf->Cell(5, 7, utf8_decode($dl), '', 0, 'L', 0);
        $this->pdf->Ln(4);

            $RADIO_A2 = utf8_decode($datos [0] ['RADIO_A2']);
            if ($RADIO_A2 == 'INTEGRA') {
            	$RADIO_A2 = 'INTEGRA';
            }
            else if ($RADIO_A2 == 'PRIMA') {
            	$RADIO_A2 = 'PRIMA';
            }
            else if ($RADIO_A2 ==  'PROFUTURO') {
            	$RADIO_A2 = 'PROFUTURO';
            }
            else if ($RADIO_A2 == 'HABITAT') {
            	$RADIO_A2 = 'HABITAT';
            }
            else
            	$RADIO_A2 = ' ';
        
        $this->pdf->Cell(15, 7, '', '', 0, 'L', 0);
        $this->pdf->Cell(80, 7, utf8_decode('Sistema Privado de Pensiones D.L.25897'), '', 0, 'L', 0);
        $this->pdf->Cell(50, 7, ':', '', 0, 'L', 0);
        $this->pdf->Cell(5, 7, utf8_decode($RADIO_A2), '', 0, 'L', 0);
        $this->pdf->Ln(10);
        
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);   
        $this->pdf->MultiCell(160, 6, utf8_decode('En un plazo de cinco (05) días hábiles de suscrito el Contrato Administrativo de Servicios me comprometo a presentar ante el Área de Recursos Humanos mis documentos que acrediten mi afiliación a algún régimen previsional y la solicitud de continuar aportando a dicho régimen, debiendo indicar si suspendí los pagos o si me encontraba aportando un monto voluntario, y en su caso de optar por aportar como afiliado regular, a fin que la UGEL 04 efectúe la retención correspondiente.'), 0);
        $this->pdf->Ln(2);
        
          $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);   
        $this->pdf->MultiCell(160, 6, utf8_decode('Apellidos y nombres: '.utf8_decode($datos [0] ['nombre_completo'])), 0);
  $this->pdf->Ln(2);
        
          $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);   
        $this->pdf->MultiCell(160, 6, utf8_decode('DNI: '.utf8_decode($datos [0] ['dni'])), 0);
$this->pdf->Ln(2);
        
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Nota: Deberá elegir necesariamente algún régimen de pensiones. En caso de haberse afiliado al Sistema Privado de Pensiones deberá necesariamente presentar copia de su contrato y/o constancia de afiliación. NO PROCEDE elegir afiliarse al Sistema Nacional de Pensiones si se encuentra registrado en el Sistema Privado de Pensiones.'), 0);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode(' 
        Podrá verificar su situación previsional en el siguiente link: 
        http://www.sbs.gob.pe/app/spp/Afiliados/afil_existe.asp'), 0);       
/*  FIN  ANEXO '2  */
     
         $this->pdf->Ln(150); 
        
 /*  INICIO  ANEXO '3  */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 03 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DECLARACIÓN JURADA DE NO ESTAR INHABILITADO'), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('PARA CONTRATAR CON EL ESTADO'), 0, 0, 'C');

//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('
Señores
UNIDAD DE GESTIÓN EDUCATIVA LOCAL N°04 - COMAS
Presente.-
De mi consideración:

Quien suscribe, '.utf8_decode($datos [0] ['nombre_completo']).' (*),  con Documento Nacional de Identidad Nº '.utf8_decode($datos [0] ['dni']).' (*), con RUC Nº……………………., con domicilio en '.utf8_decode($datos [0] ['direccion']).' (*), se presenta para postular en la CONVOCATORIA CAS N° '.utf8_decode($datos [0] ['CAS']).'-2020/UGEL04 (*), para la CONTRATACIÓN ADMINISTRATIVA DE SERVICIOS DE UN '.utf8_decode($datos [0] ['asuntoContrato']).' (*), y declara bajo juramento que: 

1.-	No tiene impedimento para participar en el proceso de selección ni para contratar con el Estado.
2.-	Conoce, acepta y se somete a las condiciones y procedimientos del proceso de selección para la contratación administrativa de servicios, regulados por el Decreto Legislativo 1057 y su Reglamento, aprobado mediante el Decreto Supremo Nº 075-2008-PCM.
3.-	Ser responsable de la veracidad de los documentos e información que presenta, a efectos del presente proceso de selección.
4.-	Conoce las sanciones contenidas en el TUO de la Ley N° 27444, Ley del Procedimiento Administrativo General
'), 0);
  
/*  FIN  ANEXO '3  */
        
          $this->pdf->Ln(150); 
        
        /*  INICIO  ANEXO '4  */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 04 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DECLARACIÓN JURADA DE AFILIACIÓN AL RÉGIMEN PREVISIONAL'), 0, 0, 'C');
//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Yo, '.utf8_decode($datos [0] ['nombre_completo']).', identificado (a) con DNI Nº '.utf8_decode($datos [0] ['dni']).' y con domicilio en '.utf8_decode($datos [0] ['direccion']).';

DECLARO BAJO JURAMENTO:

INCOMPATIBILIDAD:
No tener impedimento para contratar con el Estado en la modalidad de Contratos Administrativos de Servicios ni estar dentro de las prohibiciones e incompatibilidades señaladas en la Ley Nº 27588, y su Reglamento aprobado por el Decreto Supremo Nº 019-02-PCM (1).

Esta declaración se formula en aplicación del principio de veracidad establecido en el Artículo 49º del TUO de la Ley Nº 27444, Ley del Procedimiento Administrativo General.
'), 0);
   
/*  FIN  ANEXO '4  */
        
         $this->pdf->Ln(200); 
        
        /*  INICIO  ANEXO '5  */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 05 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DECLARACIÓN JURADA DE AUSENCIA DE NEPOTISMO 
Ley Nº 26771'), 0, 0, 'C');
                      $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode(' D.S. Nº 021-2000-PCM, D.S. 017-2002-PCM y D.S. Nº 034-2005-PCM
'), 0, 0, 'C');
//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Yo, '.utf8_decode($datos [0] ['nombre_completo']).' identificado con D.N.I. Nº '.utf8_decode($datos [0] ['dni']).' al amparo del Principio de Presunción de Veracidad señalado por el artículo IV, numeral 1.7 del Título Preliminar y lo dispuesto en el artículo 49º del TUO la Ley de Procedimiento Administrativo General – Ley Nº 27444, DECLARO BAJO JURAMENTO, lo siguiente:
No tener en la Institución, familiares hasta el 4º grado de consanguinidad, 2º de afinidad o por razón de matrimonio, con la facultad de designar, nombrar, contratar o influenciar de manera directa o indirecta en el ingreso a laborar en la UGEL N°04- COMAS.
Por lo cual declaro que no me encuentro incurso en los alcances de la Ley Nº 26771 y su Reglamento aprobado por D.S.Nº 021-2000-PCM y sus modificatorias. Asimismo, me comprometo a no participar en ninguna acción que configure ACTO DE NEPOTISMO, conforme a lo determinado en las normas sobre la materia.

EN CASO DE TENER PARIENTES
Declaro bajo juramento que en la Unidad de Gestión Educativa Local N°04, laboran las personas cuyos apellidos y nombres indico, a quien(es) me une la relación o vinculo de afinidad (A) o consanguinidad (C), vínculo matrimonial (M) o unión de hecho (UH), señalados a continuación. 
Relación Apellidos Nombres Área de Trabajo:'), 0);
         $this->pdf->Ln(3); 
        $this->pdf->SetFont('Arial', '', 8);
                  
                      $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C'));
            $this->pdf->Row(array(
                utf8_decode('#'),
                utf8_decode('RELACIÓN '),
                utf8_decode('RELACIÓN  '),
                utf8_decode('NOMBRES '),
                utf8_decode('ÁREA DE TRABAJO '),
                )
                    );

            //*** COLOCAMOS LOS DATOS EN LAS CELDAS DEL PDF ***//
            //un arreglo con su medida  a lo ancho

                   $contador = 1;

        for ($i = 0; $i < count($datos); $i++) {
            
            $ie = $datos[$i]['REL_PARENT'];
            $tipo = $datos[$i]['REL_APELLIDO'];
            $nivel = utf8_decode($datos[$i]['REL_NOMBRE']);
            $descripcion = utf8_decode($datos[$i]['REL_TRABAJO']);
            
            
            $this->pdf->Cell(6, 5, '', 0, 0, 'C', false);
            $this->pdf->SetWidths(array(5,30,30,30,30,30,30));
            //un arreglo con alineacion de cada celda
            $this->pdf->SetAligns(array('C','C','C','C','C','C'));
            $this->pdf->Row(array(utf8_decode($contador),
                utf8_decode($ie),
                utf8_decode($tipo),
                utf8_decode($nivel),
                utf8_decode($descripcion),
                )
                    );
            
            
                   $contador++;
        }

                 $this->pdf->Ln(3);       
                $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Manifiesto, que lo mencionado responde a la verdad de los hechos y tengo conocimiento, que si lo declarado es falso, estoy sujeto a los alcances de lo establecido en el artículo 438º del Código Penal, que prevén pena privativa de libertad de hasta 04 años, para los que hacen una falsa declaración, violando el principio de veracidad, así como para aquellos que cometan falsedad, simulando o alterando la verdad intencionalmente.
'), 0);
        
        


/*  FIN  ANEXO '5  */
        
         $this->pdf->Ln(100); 
        
        /*  INICIO  ANEXO '6  */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 06 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DECLARACION JURADA DE NO ENCONTRARSE INSCRITO EN EL REGISTRO'), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DE DEUDORES ALIMENTARIOS MOROSOS-REDAM'), 0, 0, 'C');

//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Yo, '.utf8_decode($datos [0] ['nombre_completo']).', identificado con DNI Nº '.utf8_decode($datos [0] ['dni']).', con domicilio en '.utf8_decode($datos [0] ['direccion']).' declaro bajo juramento que, a la fecha, no me encuentro inscrito en el “Registro de Deudores Alimentarios Morosos” a que hace referencia la Ley Nº 28970, Ley que crea el Registro de Deudores Alimentarios Morosos, y su Reglamento, aprobado por Decreto Supremo Nº 002-2007-JUS, el cual se encuentra a cargo y bajo la responsabilidad del Consejo Ejecutivo del Poder Judicial.'), 0);
   
/*  FIN  ANEXO '6  */
        
                 $this->pdf->Ln(200); 
        
        /*  INICIO  ANEXO '7  */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 07 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DECLARACIÓN JURADA DE CONOCIMIENTO DEL CÓDIGO'), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DE ÉTICA DE LA FUNCIÓN PÚBLICA'), 0, 0, 'C');

//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Yo, '.utf8_decode($datos [0] ['nombre_completo']).' con DNI Nº '.utf8_decode($datos [0] ['dni']).' y domicilio fiscal en '.utf8_decode($datos [0] ['direccion']).' declaro bajo Juramento, que tengo conocimiento de la siguiente normatividad:
 - Ley N° 28496, “Ley que modifica el numeral 4.1 del artículo 4° y el artículo 11° de la Ley N° 27815, Ley del Código de Ética de la Función Pública.
 - Decreto Supremo N° 033-2005-PCM, que aprueba el Reglamento de la Ley del Código de Ética de la Función Pública. 
Asimismo, declaro que me comprometo a observarlas y cumplirlas en toda circunstancia.
'), 0);

/*  FIN  ANEXO '7  */
        
         $this->pdf->Ln(200); 
        
        /*  INICIO  ANEXO ' 8 */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 08 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('DECLARACIÓN JURADA SOBRE ANTECEDENTES'), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode('POLICIALES, JUDICIALES Y/O PENALES'), 0, 0, 'C');

//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('Yo,'.utf8_decode($datos [0] ['nombre_completo']).' con DNI Nº '.utf8_decode($datos [0] ['dni']).' y domicilio fiscal en '.utf8_decode($datos [0] ['direccion']).' , que en relación a mi postulación, según el cronograma establecido; declaro bajo juramento y en correcta correspondencia a las normas vigentes que:

POSEO ANTECEDENTES POLICIALES  : '.utf8_decode($datos [0] ['RADIO_A3']).'
POSEO ANTECEDENTES JUDICIALES  : '.utf8_decode($datos [0] ['RADIO_A4']).'
POSEO ANTECEDENTES PENALES     : '.utf8_decode($datos [0] ['RADIO_A5']).'
'), 0);

/*  FIN  ANEXO '8  */
        
        /*  FIN  ANEXO '9  */
        
                 $this->pdf->Ln(200); 
        
        /*  INICIO  ANEXO '7  */
        $this->pdf->SetFont('Arial', 'BU', 13);
        $this->pdf->Cell(180, 8, utf8_decode('ANEXO N° 09 '), 0, 0, 'C');
              $this->pdf->Ln(7);
        $this->pdf->Cell(180, 8, utf8_decode(' DECLARACIÓN JURADA DE DATOS PERSONALES.'), 0, 0, 'C');
//              $this->pdf->Ln(7);
//        $this->pdf->Cell(180, 8, utf8_decode('DE ÉTICA DE LA FUNCIÓN PÚBLICA'), 0, 0, 'C');

//              $this->pdf->Ln(7);
//       $this->pdf->SetFont('Arial', 'B', 10);
//       $this->pdf->Cell(180, 8, utf8_decode('PROCESO DE SELECCIÓN'. utf8_decode($datos [0] ['CAS']).' CAS N° 011 - 2020-UGEL N°04'), 0, 0, 'C');

        $this->pdf->Ln(10);
        
        $this->pdf->SetFont('Arial', '', 9);
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);
        $this->pdf->MultiCell(160, 6, utf8_decode('
Yo, '.utf8_decode($datos [0] ['nombre_completo']).' con DNI Nº '.utf8_decode($datos [0] ['dni']).' y domicilio fiscal en '.utf8_decode($datos [0] ['direccion']).' 
En este contexto de Estado de Emergencia Sanitaria y de Aislamiento Social Obligatorio, doy a conocer a la Comisión y/o a la Jefatura de Recursos Humanos, que autorizo7 a ser notificado el resultado de la evaluación para acceder a una plaza de Contrato Administrativo de Servicio (CAS), a través de las vías de comunicación siguientes:

Correo electrónico principal	: '.utf8_decode($datos [0] ['email']).'
Correo electrónico  alternativo	: '.utf8_decode($datos [0] ['email']).'
Teléfono de contacto		: '.utf8_decode($datos [0] ['celular']).'

Firmo la presente declaración de conformidad con lo establecido en el artículo 49º del Texto Único Ordenado de la Ley N° 27444, Ley del Procedimiento Administrativo General, y en caso de resultar falsa la información que proporciono, me sujeto a los alcances de lo establecido en el artículo 411 del Código Penal, concordante con el artículo 33 del Texto Único Ordenado de la Ley N° 27444, Ley del Procedimiento Administrativo General; autorizando a efectuar la comprobación de la veracidad de la información declarada en el presente documento.

'), 0);

/*  FIN  ANEXO '9  */
        
//              $this->pdf->SetFont('Arial', 'B', 8);
//        $this->pdf->Ln(5);
//        $this->pdf->Cell(0, 10, utf8_decode('Comas, ' . date_format(date_create($datos [0] ['FEC_POSTULACION']), "d") . ' de ' . [date_format(date_create($datos [0] ['FEC_POSTULACION']), "m") - 1] . ' del ' . date('Y') . ' siendo las ' . date_format(date_create($datos [0] ['FEC_POSTULACION']), "g:i A")), 0, 0, 'R');

        
        /* FOOTER */
        $this->pdf->SetY(- 38);
        $this->pdf->Line(80, 260, 130, 260);
        $this->pdf->Rect(140, 240, 20, 25);
        $this->pdf->Cell(85, 7, '', '', 0, 'C', 0);
        $this->pdf->SetFont('Arial', 'B', 9);
        $this->pdf->Cell(35, 7, 'Firma del Postulante', '', 0, 'LU', 0);
        $this->pdf->Ln(4);
        $this->pdf->Cell(80, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(5, 7, '', '', 0, 'LU', 0);
        $this->pdf->Cell(0, 7, 'DNI' . ' ' . $datos [0] ['dni'], '', 0, 'LU', 0);
        $this->pdf->Ln(12);

//            $this->pdf->Output("Ficha_postulación_.pdf", 'I');
            
            
             $fileName = 'Anexos_' . $datos [0] ['dni'] . '.pdf'; 
             $this->pdf->Output($fileName,'I');
        
        
            ob_end_flush();
    }


           public function reporte_resumen_excel() {
               
            $id_anexo = $this->input->get('conv');
            
//            $datos = $this->postulacion->reporte_personal_pdf($id);
            
           $datos = $this->postulacion->reporte_personal_excel($id_anexo);
                        /* A partir de ahora cualquier salida al navegador se guardarÃ¡ en un buffer */
        /* Obtenemos el listado de locales disponibles en el sistema */
        file_put_contents('log.txt', shell_exec('locale -a'), FILE_APPEND);
        set_time_limit(0);
        setlocale(LC_TIME, 'es_PE');
        $fecha = date('d/m/Y H:i:s');
        ini_set('memory_limit', '-1');
//        $datos = null;
//        $datos = $this->gestion->listar_reporte_horas();
//        
        $this->load->library('excel');

        $hoja = $this->excel->getActiveSheet();

//activate worksheet number 1
        $this->excel->setActiveSheetIndex(0);
//name the worksheet
        $hoja->setTitle('REPORTE DE POSTULANTES');
//set cell A1 content with some text
        $hoja->setCellValue('A1', 'FICHA DE POSTULANTES '. $fecha);
//change the font size
        $hoja->getStyle('A1')->getFont()->setSize(24);
//make the font become bold
        $hoja->getStyle('A1')->getFont()->setBold(true);
//merge cell A1 until D1
        $hoja->mergeCells('A1:K1');
//set aligment to center for that merged cell (A1 to D1)
                            
        $hoja->getStyle('A1')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('A2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('B2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('C2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('D2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('E2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('F2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('G2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('H2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('I2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('J2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
        $hoja->getStyle('K2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
//        $hoja->getStyle('H2')->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);

        $hoja->setCellValue('A2', '# ')->getStyle('A2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('B2', ' POSTULANTE')->getStyle('B2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('C2', ' CAS')->getStyle('C2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('D2', ' DESCRIPCION')->getStyle('D2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('E2', ' DETALLE')->getStyle('E2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('F2', ' CAMPO 1')->getStyle('F2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('G2', ' CAMPO 2')->getStyle('G2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('H2', ' CAMPO 3')->getStyle('H2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('I2', ' CAMPO 4')->getStyle('I2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('J2', ' CAMPO 5')->getStyle('J2')->getFont()->setSize(15)->setBold(true);
        $hoja->setCellValue('K2', ' CAMPO 6')->getStyle('K2')->getFont()->setSize(15)->setBold(true);
//        $hoja->setCellValue('H2', 'HORAS EFECTIVOS')->getStyle('H2')->getFont()->setSize(15)->setBold(true);

        $hoja->setAutoFilter('A2:K2');
        $hoja->getStyle('A2:K2')->getFill()->getStartColor()->setRGB('FF0000');

        $hoja->getColumnDimension('A')->setAutoSize(true);
        $hoja->getColumnDimension('B')->setAutoSize(true);
        $hoja->getColumnDimension('C')->setAutoSize(true);
        $hoja->getColumnDimension('D')->setAutoSize(true);
        $hoja->getColumnDimension('E')->setAutoSize(true);
        $hoja->getColumnDimension('F')->setAutoSize(true);
        $hoja->getColumnDimension('G')->setAutoSize(true);
        $hoja->getColumnDimension('H')->setAutoSize(true);
        $hoja->getColumnDimension('I')->setAutoSize(true);
        $hoja->getColumnDimension('J')->setAutoSize(true);
        $hoja->getColumnDimension('K')->setAutoSize(true);
//        $hoja->getColumnDimension('H')->setAutoSize(true);

        $cont = 3;
        
        foreach ($datos as $fila) {
               $hoja->getStyle('A' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('A' . $cont, $cont);
               $hoja->getStyle('B' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('B' . $cont, $fila['nombre_completo'], PHPExcel_Cell_DataType::TYPE_STRING);
               $hoja->getStyle('C' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('C' . $cont, $fila['CAS']);
               $hoja->getStyle('D' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('D' . $cont, $fila['asuntoContrato']);
               $hoja->getStyle('E' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('E' . $cont, $fila['DETALLE']);
               $hoja->getStyle('F' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('F' . $cont, $fila['NIV_EDUCA'], PHPExcel_Cell_DataType::TYPE_STRING);
               $hoja->getStyle('G' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('G' . $cont, $fila['GRAD_ACA'], PHPExcel_Cell_DataType::TYPE_STRING);
              $hoja->getStyle('H' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('H' . $cont, $fila['NOM_CARRERA'], PHPExcel_Cell_DataType::TYPE_STRING);
              $hoja->getStyle('I' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('I' . $cont, $fila['CENT_ESTUDIO'], PHPExcel_Cell_DataType::TYPE_STRING);
               $hoja->getStyle('J' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('J' . $cont, $fila['DESDE'], PHPExcel_Cell_DataType::TYPE_STRING);
              $hoja->getStyle('K' . $cont)->getAlignment()->setHorizontal(PHPExcel_Style_Alignment::HORIZONTAL_CENTER);
            $hoja->setCellValue('K' . $cont, $fila['HASTA'], PHPExcel_Cell_DataType::TYPE_STRING);
//            $hoja->setCellValue('H' . $cont, $fila['horas'], PHPExcel_Cell_DataType::TYPE_STRING);
            
            $cont++;
        }

//        $filename = 'REPORTE_POSTULANTES.xls'; //save our workbook as this file name
        $filename = 'REPORTE_POSTULANTES_' . $datos [0] ['dni'] . '.xls'; 
//             $this->pdf->Output($fileName,'I');

        header('Content-Type: application/vnd.ms-excel'); //mime type
        header('Content-Disposition: attachment;filename="' . $filename . '"'); //tell browser what's the file name
        header('Cache-Control: max-age=0'); //no cache
//save it to Excel5 format (excel 2003 .XLS file), change this to 'Excel2007' (and adjust the filename extension, also the header mime type)
//if you want to save it as .XLSX Excel 2007 format
        $objWriter = PHPExcel_IOFactory::createWriter($this->excel, 'Excel5');
//force user to download the Excel file without writing it to server's HD
        //force user to download the Excel file without writing it to server's HD
                /* Obtenemos los caracteres adicionales o mensajes de advertencia y los
          guardamos en el archivo "depuracion.txt" si tenemos permisos */
        file_put_contents('depuracion.txt', ob_get_contents());
        /* Limpiamos el búfer */
        ob_end_clean();
        
        $objWriter->save('php://output');
    }
}
