<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Cas_NP_model extends CI_Model
{

    public function __construct()
    {
        parent::__construct();
        $this->load->database();
    }



    /*Ya no se usa - eliminalo */
    public function registrar_docente_fase_una($data)
    {




        //VERIFICAMOS SI EL DNI INGRESADO POR EL DOCENTE EXISTE EN LA PUN_VIRTUAL

        //                           select * from AUX_resultados_auxiliares_np where NUMEXPE = '12345'

        //NUMERO DE EXPEDIENTE
        $security_dni =  $this->db->query("select * from view_convocatorias where NUMEXPE = '{$data['dni_docente']}';");

        $numero_dni_existe = $security_dni->row('NUMEXPE');

        //SI EXISTE EN LA TABLA PUN_VIRTUAL SE REGISTRA LA INFORMACION DEL DOCENTE
        if ($numero_dni_existe != null) {


            $num_orden_security   = $security_dni->row('CAS');
            $dato_cas_security    = $security_dni->row('asuntoContrato');


            $this->db->reconnect();

            $valor_not_correo   =  ($data['not_correo'] == 'SI') ? $data['not_correo'] : 'NO';
            $valor_not_celular  =  ($data['not_celular'] == 'SI') ? $data['not_celular'] : 'NO';

            $sql = "CALL AUX_USP_VIRTUAL(
                        'CONVOCATORIA',
                        '{$data['dni_docente']}',
                        '$num_orden_security',
                        '$dato_cas_security',
                        '{$data['dni_cas']}',
                        '{$data['codigo_verificacion']}'
                        ,'{$data['fecha_nacimiento']}',
                        '{$data['direccion']}', 
                        '{$data['app_paterno']}',
                        '{$data['app_materno']}',
                        '{$data['nombres']}'
                        '{$data['sexo']}', 
                        '{$data['telefono_auxiliar']}'
                        ,'{$data['numero_celular_auxiliar']}'
                        ,'{$data['email_auxiliar']}',
                        '{$data['archivo']}'
                        ,'{$data['radio1']}',
                        '{$data['radio2']}',
                        '{$data['chkDeclaracionjurada']}', 
                         now(),'$valor_not_correo', 
                         '$valor_not_celular', 
                         '{$data['radio_a1']}', 
                         '{$data['radio_a2']}',
                         '{$data['radio_a3']}',
                          '{$data['radio_a4']}',
                          '{$data['radio_a5']}', 
                          '{$data['radio_a6']}',
                         '{$data['rel_parent']}',
                          '{$data['rel_apellido']}', 
                          '{$data['rel_nombre']}', '{$data['rel_trabajo']}');";



            $result = $this->db->query($sql);

            $this->db->close();

            return $sql;
        }

        //SI NO EXISTE NO SE REGISTRA
        else {

            return 0;
        }
    }


    public function verificar_dni_docente($dni)
    {


        $query = $this->db->query("select * from view_convocatorias where NUMEXPE = $dni and estado=1");
        $numero_dni =  $query->row('NUMEXPE');

        if ($numero_dni != null) {

            $resultado = $this->db->query("SELECT * FROM  aux_reg_virtual where NUM_CAS = $dni; ");
            if ($resultado->num_rows() == 0) {
                return $query->result_array();
            } else {
                return 1;
            }
        } else {
            return 0;
        }
    }

     public function verificar_dni_validar($expe,$dni)
    {


        $query = $this->db->query("SELECT * FROM  view_registros where  COD_CONV=$expe and DNI=$dni");
        $numero_dni =  $query->row('DNI');

        if ($numero_dni != null) {

            $resultado = $this->db->query("SELECT * FROM  view_registros where  COD_CONV=$expe and DNI=$dni order by ID_CAS desc limit 1; ");
            if ($resultado->num_rows() == 0) {
                return $query->result_array();
            } else {
                return 1;
            }
        } else {
            return 0;
        }
    }


}
