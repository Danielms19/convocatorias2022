<?php
defined('BASEPATH') or exit('No direct script access allowed');
date_default_timezone_set('America/Lima');
class Cas_NP extends CI_Controller
{

    public function __construct()
    {
        parent::__construct();
        $this->load->model('Cas_NP_model', 'Datosencargatura');
        $this->load->model ( 'Postulacion_model', 'postulacion' );
        $this->load->helper('date');
    }

    public function index()
    {
        $this->load->view('registro_datos_Cas_view');
        // $this->load->view('ignorar');
    }

    public function verificar_dni_docente()
    {
        $nombres = $this->Datosencargatura->verificar_dni_docente($this->input->post('NUMEXPE'));

        echo json_encode($nombres);
    }

    public function verificar_dni_validar()
    {
        $nombres = $this->Datosencargatura->verificar_dni_validar($this->input->post('COD_CONV'),$this->input->post('DNI'));

        echo json_encode($nombres);
    }

  
    public function register_docente_pun()
    {

        $codigo_con = $this->input->post("dni_docente");
        $numero_orden = $this->input->post("numero_orden");
        $dato_cas = $this->input->post("dato_cas");

        $dni_cas = $this->input->post("dni_cas");

        $codigo_verificacion = $this->input->post("codigo_verificacion"); //id

        $fecha_nacimiento = $this->input->post("fecha_nacimiento");
        $direccion = $this->input->post("direccion");
        $app_paterno = $this->input->post("app_paterno");
        $app_materno = $this->input->post("app_materno");
        $nombres = $this->input->post("nombres");
        $sexo = $this->input->post("sexo");

        $telefono_auxiliar = $this->input->post("telefono_auxiliar");
        $numero_celular_auxiliar = $this->input->post("numero_celular_auxiliar");
        $email_auxiliar = $this->input->post("email_auxiliar");

        $chkDeclaracionjurada = $this->input->post("chkDeclaracionjurada");
        $not_correo = $this->input->post("not_correo");
        $not_celular = $this->input->post("not_celular");

        $radio_a1 = $this->input->post("radio_a1");
        $radio_a2 = $this->input->post("radio_a2");
        $radio_a3 = $this->input->post("radio_a3");
        $radio_a4 = $this->input->post("radio_a4");
        $radio_a5 = $this->input->post("radio_a5");
        $radio_a6 = $this->input->post("radio_a6");

        $rel_parent = $this->input->post("rel_parent");
        $rel_apellido = $this->input->post("rel_apellido");
        $rel_nombre = $this->input->post("rel_nombre");
        $rel_trabajo = $this->input->post("rel_trabajo");

        // $this->input->post("radio_a1");
        $array_form_academica = json_decode($this->input->post("array_form_academica"),true);
        $array_capacitaciones = json_decode($this->input->post("array_capacitaciones"),true);
        $array_expe_labo =json_decode($this->input->post("array_expe_labo"),true);

        $this->form_validation->set_rules("dni_docente", "CÓDIGO DE CONVOCATORIA", "required");
        $this->form_validation->set_rules("numero_orden", "N° DE CAS", "required");
        $this->form_validation->set_rules("dato_cas", "DESCRIPCIÓN CAS", "required");
        $this->form_validation->set_rules("dni_cas", "DNI POSTULANTE", "required");

        $this->form_validation->set_rules("codigo_verificacion", "CODIGO DE VERIFICACION", "required");
        $this->form_validation->set_rules("fecha_nacimiento", "FECHA DE NACIMIENTO", "required");

        $this->form_validation->set_rules("direccion", "DIRECION", "required");
        $this->form_validation->set_rules("app_paterno", "APELLIDO PATERNO", "required");
        $this->form_validation->set_rules("app_materno", "APELLIDO MATERNO", "required");

        $this->form_validation->set_rules("nombres", "NOMBRES", "required");
        $this->form_validation->set_rules("sexo", "SEXO", "required");

        $this->form_validation->set_rules("telefono_auxiliar", "TELEFONO", "required");
        $this->form_validation->set_rules("numero_celular_auxiliar", "NUMERO CELULAR", "required");
        $this->form_validation->set_rules("email_auxiliar", "CORREO", "required");


        if ($this->form_validation->run()) {

            //Subida de archivo

            $config['upload_path'] = 'archivos_a_evaluar';
            $config['allowed_types'] = "pdf";
            $config['max_size'] = 8000;

            $this->load->library('upload', $config);
            $this->upload->initialize($config);

            if ($this->upload->do_upload('file')) {

                $archivo = array("upload_data" => $this->upload->data());

                $security_dni =  $this->db->query("select * from view_convocatorias where NUMEXPE = '$codigo_con';");

                $numero_dni_existe = $security_dni->row('NUMEXPE');

                if ($numero_dni_existe != null) {

                    $num_orden_security   = $security_dni->row('CAS');
                    $dato_cas_security    = $security_dni->row('asuntoContrato');

                    //Iniciamos la transaccion------------------------------------------------
                    $this->db->trans_begin();

                    $data = array(
                        'FASE' => 'CONVOCATORIA',
                        'COD_CONV' => $codigo_con,
                        'NUM_CAS' => $num_orden_security,
                        'DESC_CAS' => $dato_cas_security,
                        'COD_VERIF' =>  $codigo_verificacion,
                        'FEC_NAC' =>  $fecha_nacimiento,
                        'NOMBRES' => $nombres,
                        'DNI' => $dni_cas,
                        'SEXO' => $sexo,
                        'DIRECCION' =>  $direccion,
                        'AP_PATERNO' =>  $app_paterno,
                        'AP_MATERNO' => $app_materno,
                        'TELEFONO' =>  $telefono_auxiliar,
                        'CELULAR' => $numero_celular_auxiliar,
                        'CORREO' => $email_auxiliar,
                        'ARCHIVO' => $archivo['upload_data']['file_name'],
                    );

                    $this->db->insert('AUX_REG_VIRTUAL', $data);
                    /*Obtenemos el ultimo id */
                    $AUX_REG_VIRTUAL = $this->db->insert_id();

                    /*Inser 2 tabla AUX_DET_VIRTUAL */

                    $data2 = array(
                        'ID_CAS' =>  $AUX_REG_VIRTUAL,
                        'RADIO_A1' =>  $radio_a1,
                        'RADIO_A2' =>  $radio_a2,
                        'RADIO_A3' =>  $radio_a3,
                        'RADIO_A4' =>  $radio_a4,
                        'RADIO_A5' =>  $radio_a5,
                        'RADIO_A6' =>   $radio_a6,
                        'REL_PARENT' => $rel_parent,
                        'REL_APELLIDO' => $rel_apellido,
                        'REL_NOMBRE' => $rel_nombre,
                        'REL_TRABAJO' => $rel_trabajo,
                        'ESTADO_DOCUMENTO' => 'EN PROCESO',
                        'DEC_JUR' => $chkDeclaracionjurada,
                        'FEC_POSTULACION' => date('Y-m-d H:i:s'),
                        'NOT_CORREO' =>  $not_correo,
                        'NOT_CELULAR' =>  $not_celular,
                    );
                    $this->db->insert('AUX_DET_VIRTUAL', $data2);

                    /*Tablas que no vienen al asco :V --------------- es enserio -_- */


                    $data3 = array(
                        'IDpostulante' => $AUX_REG_VIRTUAL,
                        'documento' => $dni_cas,
                        'nombre' => $nombres,
                        'apaterno' => $app_paterno,
                        'amaterno' => $app_materno,
                        'sexo' => $sexo,
                        'celular' => $numero_celular_auxiliar,
                        'email' => $email_auxiliar,
                        'direccion' =>  $direccion,
                        'archivo' => $archivo['upload_data']['file_name'],
                    );

                    $this->db->insert('postulante',  $data3);
                    /*Obtenemos el ultimo id */
                    $postulante = $this->db->insert_id();

                    $data4 = array(
                        'IDpostulante' => $postulante,
                        'IDconvocatoria' => $codigo_con,
                        'fecha_reg' => date('Y-m-d H:i:s'),
                        'estado' => 1
                    );

                    $this->db->insert('detalle_postulacion', $data4);

                    /*Recorremos los arrays xd */

                    /* for ($i=0; $i <sizeof($array_form_academica); $i++) { 
                    # code...
                } */
                    //////////////form_academica----------------------
                    foreach ($array_form_academica as  $value) {

                        $dataArray = array(
                            'ID_CAS' => $AUX_REG_VIRTUAL,
                            'NIV_EDUCA' => $value['niv_edu'],
                            'GRAD_ACA' => $value['grad_aca'],
                            'NOM_CARRERA' => $value['nom_carrera'],
                            'CENT_ESTUDIO' => $value['cent_estu'],
                            'DESDE' => $value['fecha_1'],
                            'HASTA' => $value['fecha_2'],
                        );
                        $this->db->insert('form_academica', $dataArray);
                    }
                    //////////////Laboral----------------------
                    foreach ($array_expe_labo as  $value) {

                        $dataArray1 = array(
                            'ID_CAS' => $AUX_REG_VIRTUAL,
                            'EMPRESA' => $value['empre'],
                            'CARGO' => $value['puesto'],
                            'SECTOR' => $value['sector'],
                            'AÑO' => $value['tlan'],
                            'MES' => $value['tlmeses'],
                            'DIA' => $value['tldias'],
                        );
                        $this->db->insert('laboral', $dataArray1);
                    }

                    //////////////capacitaciones----------------------
                    foreach ($array_capacitaciones as  $value) {

                        $dataArray2 = array(
                            'ID_CAS' => $AUX_REG_VIRTUAL,
                            'NOM_CURSO' => $value['nom_curso'],
                            'TIP_CURSO' => $value['tip_curso'],
                            'INSTITUCION' => $value['instit'],
                            'DESDE' => $value['fechaini_cap'],
                            'HASTA' => $value['fechafin_cap'],
                            'TOTHORAS' => $value['total_horas']

                        );
                        $this->db->insert('capacitaciones', $dataArray2);
                    }


                    if ($this->db->trans_status() === FALSE) {
                        //Hubo errores en la consulta, entonces se cancela la transacción.   
                        $this->db->trans_rollback();
                        echo json_encode(['status' => false]);
                    } else {
                        //Todas las consultas se hicieron correctamente.  
                       $this->db->trans_commit(); //Seregistro con exito
                       $correo_status = $this->sendMailOutlook($email_auxiliar,$numero_orden, $dato_cas,$dni_cas,$nombres,$app_paterno,$app_materno);
                       if($correo_status){
                            echo json_encode(['status' => true]);
                       }else{
                            echo json_encode(['error_correo' => 'Error al enviar el correo']);
                       }
                      
                       
                    }

                    //echo json_encode($AUX_REG_VIRTUAL);

                }
            } else {

                echo json_encode(['error_archivo' => 'Error al Subir archivo']);
            }
        } else {
            echo json_encode(validation_errors());
            //exit;
        }
        // echo json_encode($_POST);
    }

 
        function envio_correo_docente(){
//

                 $id = $this->input->get('conv');


		$archivos = array($this->postulacion($id));
		
		if ($this->sendMailOutlook( $archivos)) {
                    
                      echo  json_encode(array('status' => true,'correo'=>'Correo enviado con Éxito'));

                  }else{
               echo  json_encode(array('status' => false, 'error'=> 'El Correo no existe'));
        }

		  foreach ($archivos as $value) {

                unlink("docpdf/".$value);
            }

	
	}
    //  Lo modifique
    public function sendMailOutlook($email_auxiliar, $numero_orden, $dato_cas, $dni_cas, $nombres, $app_paterno, $app_materno, $archivos)
    {

        $this->load->library("email");
        $this->email->set_crlf("\r\n");
        $configOutlook = array(
            'protocol' => 'smtp',
            'smtp_host' => 'smtp.live.com',
            'smtp_port' => 25,
            'smtp_timeout' => '60',
            //'smtp_port' => 587,
            'smtp_user' => 'carlos.mendoza@ugel04.gob.pe',
            'smtp_pass' => 'Mendoza1903',
            'mailtype' => 'html',
            'charset' => 'utf-8',
            'newline' => "\r\n",
            'smtp_crypto' => 'tls',
        );

        $data = array(
            'numero_orden' => $numero_orden,
            'dato_cas' => $dato_cas,
            'dni_cas' => $dni_cas,
            'nombres' => $nombres,
            'app_paterno' => $app_paterno,
            'app_materno' => $app_materno,

        );

        $path = realpath('docpdf/');
        
        $this->email->initialize($configOutlook);
        $this->email->from('carlos.mendoza@ugel04.gob.pe');
        //          $this->email->cc('postulacion.directivos@ugel04.gob.pe');
        $this->email->to($email_auxiliar);
        $this->email->subject('CONVOCATORIA DEL PROCESO DE SELECCIÓN DE CONTRATACIÓN ADMINISTRATIVA DE SERVICIO - NO PRESENCIAL - UGEL 04');
        //         $message = $this->load->view('new_user2.php',$data,true);
        $message = 'Estimado postulante ' . $nombres . ' , se acaba de registrar de manera exitosa para el PROCESO DE SELECCIÓN DE CONTRATACIÓN ADMINISTRATIVA DE SERVICIO - NO PRESENCIAL  <br/>'
            . '<br/>
             DATOS DE LA POSTULACIÓN <br/>
             <br/>DNI:' . $dni_cas .
            '<br/>Nombres: ' . $nombres .
            '<br/>N° DE CAS: ' . $numero_orden .
            '<br/>DESCRIPCIÓN DE CAS: ' . $dato_cas .
            '<br/><br/>© 2022 Todos los derechos reservados
             <br/>Comisión de Contratación Administrativa de Servicio - UGEL 04
             <br/>Equipo de tecnologías de la información';
        $this->email->message($message);
        
                foreach ($archivos as $archivo_proyecto) {

            $this->email->attach($path . '/' . $archivo_proyecto);
        }

        for ($i = 1; $i <= 1; $i++) {
            if ($this->email->send()) {
                //echo "enviado";7
                return true;
            } else {
                //show_error($this->email->print_debugger());
                return false;
            }
            //sleep(1);
        }
    }
    
    
                  public function reporte_personal_pdf() {
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf_papeleta');

        $id = $this->input->get('conv');

        $datos = $this->postulacion->reporte_personal_pdf($id);
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

//        $this->pdf->SetFont('Arial', '', 8);
//        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(40, 7, utf8_decode('ESTADO CIVIL'), '', 0, 'L', 0);
//        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
//        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['sexo']), '', 0, 'L', 0);
//        $this->pdf->Ln(4);
        
        $this->pdf->SetFont('Arial', '', 8);
        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
        $this->pdf->Cell(40, 7, utf8_decode('FECHA DE NACIMIENTO'), '', 0, 'L', 0);
        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['FEC_NAC']), '', 0, 'L', 0);
        $this->pdf->Ln(4);
        
//                 $this->pdf->SetFont('Arial', '', 8);
//        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(40, 7, utf8_decode('DEPARTAMENTO'), '', 0, 'L', 0);
//        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
//        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
//        $this->pdf->Ln(4);
//        
//                    $this->pdf->SetFont('Arial', '', 8);
//        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(40, 7, utf8_decode('PROVINCIA'), '', 0, 'L', 0);
//        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
//        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
//        $this->pdf->Ln(4);
//        
//                            $this->pdf->SetFont('Arial', '', 8);
//        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(40, 7, utf8_decode('DISTRITO'), '', 0, 'L', 0);
//        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
//        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
//        $this->pdf->Ln(4);
//        
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
        
//        $this->pdf->SetFont('Arial', '', 8);
//        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(40, 7, utf8_decode('CORREO'), '', 0, 'L', 0);
//        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
//        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
//        $this->pdf->Ln(4);
//        
//         $this->pdf->SetFont('Arial', '', 8);
//        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(40, 7, utf8_decode('CORREO'), '', 0, 'L', 0);
//        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
//        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
//        $this->pdf->Ln(4);
//        
//        
//         $this->pdf->SetFont('Arial', '', 8);
//        $this->pdf->Cell(5, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(40, 7, utf8_decode('CORREO'), '', 0, 'L', 0);
//        $this->pdf->Cell(10, 7, ':', '', 0, 'C', 0);
//        $this->pdf->Cell(0, 7, utf8_decode($datos [0] ['email']), '', 0, 'L', 0);
//        $this->pdf->Ln(4);
        
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

        for ($i = 0; $i < count($datos); $i++) {
            
            $ie = $datos[$i]['NIV_EDUCA'];
            $tipo = $datos[$i]['GRAD_ACA'];
            $nivel = utf8_decode($datos[$i]['NOM_CARRERA']);
            $descripcion = utf8_decode($datos[$i]['CENT_ESTUDIO']);
            $estado = utf8_decode($datos[$i]['desde_academico']);
            $fecha = utf8_decode($datos[$i]['hasta_academico']);
            
            
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

        for ($i = 0; $i < count($datos); $i++) {
            
            $ie = $datos[$i]['NOM_CURSO'];
            $tipo = $datos[$i]['TIP_CURSO'];
            $nivel = utf8_decode($datos[$i]['INSTITUCION']);
            $descripcion = utf8_decode($datos[$i]['desde_capa']);
            $estado = utf8_decode($datos[$i]['hasta_capa']);
            $fecha = utf8_decode($datos[$i]['TOTHORAS']);
            
            
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

        for ($i = 0; $i < count($datos); $i++) {
            
            $ie = $datos[$i]['EMPRESA'];
            $tipo = $datos[$i]['CARGO'];
            $nivel = utf8_decode($datos[$i]['SECTOR']);
            $descripcion = utf8_decode($datos[$i]['AÑO']);
            $estado = utf8_decode($datos[$i]['MES']);
            $fecha = utf8_decode($datos[$i]['DIA']);
            
            
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
//             $this->pdf->SetFont('Arial', '', 8);
//           $this->pdf->Cell(15, 5, '', '', 0, 'R', 0);
//             $this->pdf->MultiCell(150, 5, utf8_decode('DECLARO BAJO JURAMENTO, QUE LA INFORMACION PROPORCIONADA ES VERAZ Y EXACTA Y EN CASO SEA NECESARIO, AUTORIZO A LA UNIDAD DE GESTION EDUCATIVA LOCAL N° 04, EFECTUAR LA VERACIDAD DE LA PRESENTE DECLARACION JURADA; SEGÚN LO ESTABLECIDO EN EL ARTICULO 411 DEL CODIGO PENAL Y DELITO CONTRA LA FE PÚBLICA - TITULO XIX DEL CODIGO PENAL, ACORDE AL ARTICULO 33° DEL TEXTO UNICO ORDENADO DE LA LEY N° 27444, LEY DE PROCEDIMIENTOS ADMINISTRATIVOS GENERAL, APROBADO POR DECRETO SUPREMO N° 004-JUS, ASIMISMO ME COMPROMETO A REEMPLAZAR LA PRESENTE DECLARACION JURADA POR LOS CERTIFICADOS, SEGUN SEAN REQUERIDO.'), 0);
// 
//          $this->pdf->Ln(30); 
   
          
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
//             $this->pdf->Output($fileName,'I');
             
             $this->pdf->Output('docpdf/' . $fileName, 'F');
        
        
            ob_end_flush();
    }
    
    
    
     public function reporte_anexos_pdf() {
        //*******  LLAMARA A LA LIBRERIA - PDF  ********//
        $this->load->library('Pdf');

        $id = $this->input->get('conv');

        $datos = $this->postulacion->reporte_personal_pdf($id);
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

        $this->pdf->Cell(15, 7, '', '', 0, 'L', 0);
        $this->pdf->Cell(80, 7, utf8_decode('Sistema Nacional de Pensiones DL 19990'), '', 0, 'L', 0);
        $this->pdf->Cell(50, 7, ':', '', 0, 'L', 0);
        $this->pdf->Cell(5, 7, utf8_decode($datos [0] ['RADIO_A2']), '', 0, 'L', 0);
        $this->pdf->Ln(4);

        $this->pdf->Cell(15, 7, '', '', 0, 'L', 0);
        $this->pdf->Cell(80, 7, utf8_decode('Sistema Privado de Pensiones D.L.25897'), '', 0, 'L', 0);
        $this->pdf->Cell(50, 7, ':', '', 0, 'L', 0);
        $this->pdf->Cell(5, 7, utf8_decode($datos [0] ['RADIO_A2']), '', 0, 'L', 0);
        $this->pdf->Ln(10);
        
        $this->pdf->Cell(15, 5, '', '', 0, 'L', 0);   
        $this->pdf->MultiCell(160, 6, utf8_decode('En un plazo de cinco (05) días hábiles de suscrito el Contrato Administrativo de Servicios me comprometo a presentar ante el Área de Recursos Humanos mis documentos que acrediten mi afiliación a algún régimen previsional y la solicitud de continuar aportando a dicho régimen, debiendo indicar si suspendí los pagos o si me encontraba aportando un monto voluntario, y en su caso de optar por aportar como afiliado regular, a fin que la UGEL 04 efectúe la retención correspondiente.'), 0);
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
        $this->pdf->MultiCell(160, 6, utf8_decode('Señores
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
        
          $this->pdf->Ln(100); 
        
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
        $this->pdf->MultiCell(160, 6, utf8_decode('Yo, ………………………………………………………………………….……………………..………………………………identificado con D.N.I. Nº ……………………………… al amparo del Principio de Presunción de Veracidad señalado por el artículo IV, numeral 1.7 del Título Preliminar y lo dispuesto en el artículo 49º del TUO la Ley de Procedimiento Administrativo General – Ley Nº 27444, DECLARO BAJO JURAMENTO, lo siguiente:
No tener en la Institución, familiares hasta el 4º grado de consanguinidad, 2º de afinidad o por razón de matrimonio, con la facultad de designar, nombrar, contratar o influenciar de manera directa o indirecta en el ingreso a laborar en la UGEL N°04- COMAS.
Por lo cual declaro que no me encuentro incurso en los alcances de la Ley Nº 26771 y su Reglamento aprobado por D.S.Nº 021-2000-PCM y sus modificatorias. Asimismo, me comprometo a no participar en ninguna acción que configure ACTO DE NEPOTISMO, conforme a lo determinado en las normas sobre la materia.
EN CASO DE TENER PARIENTES
Declaro bajo juramento que en la Unidad de Gestión Educativa Local N°04, laboran las personas cuyos apellidos y nombres indico, a quien(es) me une la relación o vinculo de afinidad (A) o consanguinidad (C), vínculo matrimonial (M) o unión de hecho (UH), señalados a continuación. 
Relación Apellidos Nombres Área de Trabajo:

RELACIÓN	APELLIDOS	NOMBRES	ÁREA DE TRABAJO
			
			
			

Manifiesto, que lo mencionado responde a la verdad de los hechos y tengo conocimiento, que si lo declarado es falso, estoy sujeto a los alcances de lo establecido en el artículo 438º del Código Penal, que prevén pena privativa de libertad de hasta 04 años, para los que hacen una falsa declaración, violando el principio de veracidad, así como para aquellos que cometan falsedad, simulando o alterando la verdad intencionalmente.
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
        
        /*  INICIO  ANEXO '  */
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

POSEO ANTECEDENTES POLICIALES, '.utf8_decode($datos [0] ['RADIO_A3']).'
POSEO ANTECEDENTES JUDICIALES, '.utf8_decode($datos [0] ['RADIO_A4']).'
POSEO ANTECEDENTES PENALES, '.utf8_decode($datos [0] ['RADIO_A5']).'
'), 0);

/*  FIN  ANEXO '8  */
        
        
        
//              $this->pdf->SetFont('Arial', 'B', 8);

        
        /* FOOTER */
//        $this->pdf->SetY(- 38);
//        $this->pdf->Line(80, 260, 130, 260);
//        $this->pdf->Rect(140, 240, 20, 25);
//        $this->pdf->Cell(85, 7, '', '', 0, 'C', 0);
//        $this->pdf->SetFont('Arial', 'B', 9);
//        $this->pdf->Cell(35, 7, 'Firma del Postulante', '', 0, 'LU', 0);
//        $this->pdf->Ln(4);
//        $this->pdf->Cell(80, 7, '', '', 0, 'C', 0);
//        $this->pdf->Cell(5, 7, '', '', 0, 'LU', 0);
//        $this->pdf->Cell(0, 7, 'DNI' . ' ' . $datos [0] ['dni'], '', 0, 'LU', 0);
//        $this->pdf->Ln(12);

//            $this->pdf->Output("Ficha_postulación_.pdf", 'I');
            
            
             $fileName = 'Anexos_' . $datos [0] ['dni'] . '.pdf'; 
             $this->pdf->Output($fileName,'I');
        
        
            ob_end_flush();
    }


    
}
