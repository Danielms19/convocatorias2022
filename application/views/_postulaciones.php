<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title> Postulaciones </title>
      <!-- Tell the browser to be responsive to screen width -->
      <meta
         content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
         name="viewport">
      <link rel="stylesheet"
         href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <link href="<?php echo base_url(); ?>bootstrap/css/bootstrap.min.css"
         rel="stylesheet">
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>plugins/datatables/dataTables.bootstrap.css">
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>plugins/datatables/extensions/Responsive/css/dataTables.responsive.css">
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>plugins/select2/select2.min.css">
      <!-- Theme style -->
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>dist/css/AdminLTE.min.css">
         <link rel="stylesheet"
  href="<?php echo base_url(); ?>dist/css/sweetalert.css">
      <!-- AdminLTE Skins. Choose a skin from the css/skins
         folder instead of downloading all of them to reduce the load. -->
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>dist/css/skins/_all-skins.min.css">
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker-bs3.css">
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>plugins/datepicker/datepicker3.css">
      <!-- blueimp Gallery styles  -->
      <link rel="stylesheet" href="//blueimp.github.io/Gallery/css/blueimp-gallery.min.css">
      <!-- CSS to style the file input field as button and adjust the Bootstrap progress bars  -->
      <link rel="stylesheet" href="<?php echo base_url(); ?>upload/css/jquery.fileupload.css">
      <link rel="stylesheet" href="<?php echo base_url(); ?>upload/css/jquery.fileupload-ui.css">
      <noscript>
         <link rel="stylesheet" href="<?php echo base_url(); ?>upload/css/jquery.fileupload-noscript.css">
      </noscript>
      <noscript>
         <link rel="stylesheet" href="<?php echo base_url(); ?>upload/css/jquery.fileupload-ui-noscript.css">
      </noscript>
      <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.min.css">
      <!-- Ionicons -->
      <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
      <link href="https://fonts.googleapis.com/css?family=Fjalla+One" rel="stylesheet">
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker-bs3.css">
      <link rel="stylesheet"
         href="<?php echo base_url(); ?>plugins/datepicker/datepicker3.css">
      <link rel="icon" type="image/png"
         href="<?php echo base_url(); ?>dist/img/favicon.ico" />
      <style>
         body {
         padding-right: 0 !important;
         }

         .text-muted {
          color: #1F2930;
          font-weight: bold;
         }
      </style>
   </head>
   <body class="hold-transition skin-blue layout-top-nav">
      <div class="wrapper">
         <?php $this->load->view('layout/_menu'); ?>
         <!-- Content Wrapper. Contains page content -->
         <div class="content-wrapper">
            <div class="container">
               <div class="row" style="margin-top: 20px;">
                  <div class="col-md-4">
                  </div>
                  <div class="col-md-2 text-right">
                     <button style="font-weight: bold;" class="btn btn-sm btn-success" onclick="listar_individual_hoja_de_vida()">
                     REPORTE HOJA DE VIDA </button>
                  </div>
                  <div class="col-md-2 text-right">
                     <button style="font-weight: bold;" class="btn btn-sm btn-danger" onclick="listar_individual_examen_tecnico()">
                     REPORTE EXAMEN TÉCNICO </button>
                  </div>
                  <div class="col-md-2 text-right">
                     <button style="font-weight: bold;" class="btn btn-sm btn-primary" onclick="listar_individual_resultado_final()">
                     REPORTE RESULTADO FINAL </button>
                  </div>
                  <div class="col-md-1 text-right">
                     <!-- <button style="font-weight: bold;" class="btn btn-sm btn-info" onclick="listar_individual_contrato_cas()">
                        CONTRATO CAS </button> -->
                  </div>
               </div>
               <section class="content">
                  <div class="row">
                     <div class="col-xs-12">
                        <div class="box box-solid">
                           <div class="box-header">
                              <h3 class="box-title">
                                 <i class="fa fa-check-circle"></i> Postulaciones 
                              </h3>
                           </div>
                           <!-- /.box-header -->
                           <div class="box-body">
                              <table id="table_usuario"
                                 class="table table-condensed table-hover"
                                 cellspacing="0" width="100%">
                                 <thead >
                                    <tr>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">FEC. POSTULACIÓN</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">Cod. CAS</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">N° CAS</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">DNI</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">NOMBRE COMPLETO</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">EXPEDIENTE</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;"> EVALUACIÓN CURRICULAR </th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">EXAMEN TÉCNICO</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">ENTREVISTA PERSONAL</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">RESULTADO FINAL</th>
                                       <!--                     <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">CV</th>-->
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">DOCUMENTOS</th>
                                       <th class="text-center" style="width: 150px;  vertical-align: middle; background: #222D32;color: white;">EVALUACIONES</th>
                                    </tr>
                                 </thead>
                                 <tbody style="text-align: center;text-transform: uppercase;">
                                 </tbody>
                              </table>
                           </div>
                        </div>
                     </div>
                  </div>
               </section>

               <!-- INICIO FICHA DE EVALUACIÓN 1  -->
               <div class="modal fade" id="modal_form_uno" tabindex="-1"  data-backdrop="static"
                  role="dialog">
                  <div class="modal-dialog modal-lg" role="document">
                     <div class="modal-content">
                        <div class="modal-header" style="background: #1E282C; color: white;">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h3 class="modal-title" id="modal-title-vida" style="text-align: center;">FICHA DE EVALUACIÓN CURRICULAR <span class="fa fa-folder-open-o"></span></h3>
                        </div>
                        <section class="content">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="box box-solid">
                                    <div class="box-body">
                                       <form action="#" id="form_evaluacion_curricular" method="POST">
                                          <div class="col-md-12">
                                             <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                <div class="box-header with-border" style="background-color: #373953 !important;">
                                                   <h3 class="box-title" style="padding-top: 5px; font-weight: bold;"> Datos Personales </h3>
                                                   <input type="hidden" id="IDpostulante_1" name="IDpostulante_1" style="color: black">
                                                </div>
                                                <div class="box-body">
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="dni_docente_1"> DNI ( OBLIGATORIO ) <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                            </span></label>
                                                            <div class="input-group">
                                                               <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="dni_docente_1" id="dni_docente_1" type="text" class="form-control" readonly="">
                                                            </div>
                                                            <div style="font-size: 12px" class="help-block with-errors"></div>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_nombre_completo_1"> APELLIDOS Y NOMBRES </label>
                                                            <input type="text" required="" disabled="" autocomplete="off" class="form-control" id="input_nombre_completo_1" name="input_nombre_completo_1" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_codigo_convocatoria_1"> Código de convocatoria <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                            </span></label>
                                                            <div class="input-group">
                                                               <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="input_codigo_convocatoria_1" id="input_codigo_convocatoria_1" type="text" class="form-control" readonly="">
                                                            </div>
                                                            <div style="font-size: 12px" class="help-block with-errors"></div>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_telefono_1"> TELEFONO </label>
                                                            <input type="text" required="" autocomplete="off" class="form-control" id="input_telefono_1" name="input_telefono_1" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_num_cas_1"> N° CAS </label>
                                                            <input type="text" required="" autocomplete="off" maxlength="9" class="form-control" id="input_num_cas_1" name="input_num_cas_1" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;font-size: 20px;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_descripcion_cas_1"> Descripción del Puesto CAS </label>
                                                            <input type="text" required="" autocomplete="off" class="form-control" id="input_descripcion_cas_1" name="input_descripcion_cas_1" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12 col-sm-12 ">
                                                      <div class="form-group">
                                                         <input type="hidden" class="form-control" id="input_fecha_actual" name="input_fecha_actual" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 16px; background: white;" readonly value="<?php echo date("Y-n-j"); ?>">
                                                         </span> <label style="color: #373953; font-size: 20px;">
                                                         <?php 
                                                            $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
                                                            $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
                                                            echo $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y');
                                                            ?></label>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="col-xs-12">
                                             <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                <div class="box-header" style="background-color: #373953 !important;">
                                                   <h3 class="box-title" style="padding-top: 5px; font-weight: bold;">
                                                      <i class="fa fa-check-circle"></i> FORMACIÓN ACADÉMICA (*)
                                                   </h3>
                                                </div>
                                                <div class="box-body">
                                                   <table class="table table-bordered table-condensed table-hover responsive"
                                                      cellspacing="0" width="100%" style="font-size: 18px;">
                                                      <thead>
                                                         <tr>
                                                            <th colspan="2" > Grado (s)/situación académica y estudios requeridos para el puesto: </th>
                                                            <th style="width: 120px;"> Puntaje </th>
                                                            <th style="width: 100px;"> Puntaje  Acumulado  </th>
                                                         </tr>
                                                      </thead>
                                                      <tbody>
                                                         <tr>
                                                            <td rowspan="13" style="padding-top: 190px; font-weight: bold;"> FORMACIÓN ACADÉMICA </td>
                                                            <td style="text-align: left; padding-left: 90px;">  Cumple con el grado mínimo requerido en el perfil del puesto </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="a_1_1" name="a_1_1" class="fi_1 amta_1" maxlength="5"><span class="help-block"></span> </td>
                                                            <td rowspan="13" style="padding-top: 190px; font-weight: bold;" rowspan="13"> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;"  placeholder="25" id="suma_a_1" name="suma_a_1" readonly=""> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;">  Cuenta con 1 grado superior al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="20" id="a_2_1" name="a_2_1" autocomplete="off" class="fi_1 amta_1"> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;">  Cuenta con 2 o más grados superiores al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="25" id="a_3_1" name="a_3_1" autocomplete="off" class="fi_1 amta_1"> </td>
                                                         </tr>
                                                      </tbody>
                                                   </table>
                                                </div>
                                             </div>
                                             <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                <div class="box-header" style="background-color: #373953 !important;">
                                                   <h3 class="box-title" style="font-weight: bold;">
                                                      <i class="fa fa-check-circle"></i> EXPERIENCIA LABORAL GENERAL (**)
                                                   </h3>
                                                </div>
                                                <div class="box-body">
                                                   <table class="table table-bordered table-condensed table-hover responsive"
                                                      cellspacing="0" width="100%" style="font-size: 18px;">
                                                      <thead>
                                                         <tr>
                                                            <th colspan="2" > Años de experiencia profesional general: </th>
                                                            <th style="width: 120px;"> Puntaje  </th>
                                                            <th style="width: 100px;"> Puntaje Acumulado  </th>
                                                         </tr>
                                                      </thead>
                                                      <tbody>
                                                         <tr>
                                                            <td rowspan="13" style="padding-top: 190px; font-weight: bold;"> EXPERIENCIA LABORAL GENERAL </td>
                                                            <td style="text-align: left; padding-left: 90px;">  Cumple con el mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="b_1_1" name="b_1_1" class="fi_1 bmta_1" maxlength="5"><span class="help-block"></span> </td>
                                                            <td rowspan="13" style="padding-top: 190px; font-weight: bold;" rowspan="13"> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;"  placeholder="17" id="suma_b_1" name="suma_b_1" readonly=""> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;">  Tiene 2 años adicionales al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="16" id="b_2_1" name="b_2_1" autocomplete="off" class="fi_1 bmta_1"> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;">  Tiene de 4 a más años adicionales al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="17" id="b_3_1" name="b_3_1" autocomplete="off" class="fi_1 bmta_1"> </td>
                                                         </tr>
                                                      </tbody>
                                                   </table>
                                                </div>
                                             </div>
                                             <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                <div class="box-header" style="background-color: #373953 !important;">
                                                   <h3 class="box-title" style="font-weight: bold;">
                                                      <i class="fa fa-check-circle"></i>  EXPERIENCIA ESPECÍFICA (***)
                                                   </h3>
                                                </div>
                                                <div class="box-body">
                                                   <table class="table table-bordered table-condensed table-hover responsive"
                                                      cellspacing="0" width="100%" style="font-size: 18px;">
                                                      <thead>
                                                         <tr>
                                                            <th colspan="2" > Años de experiencia específica en la función y/o materia: </th>
                                                            <th style="width: 120px;"> Puntaje  </th>
                                                            <th style="width: 100px;"> Puntaje Acumulado  </th>
                                                         </tr>
                                                      </thead>
                                                      <tbody>
                                                         <tr>
                                                            <td rowspan="13" style="padding-top: 190px; font-weight: bold;"> EXPERIENCIA ESPECÍFICA </td>
                                                            <td style="text-align: left; padding-left: 90px;"> Cumple con el mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="c_1_1" name="c_1_1" class="fi_1 cmta_1" maxlength="5"><span class="help-block"></span> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;"> Tiene 2 años adicionales al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="16" id="c_2_1" name="c_2_1" autocomplete="off" class="fi_1 cmta_1"> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;"> Tiene de 4 a más años adicionales al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="18" id="c_3_1" name="c_3_1" autocomplete="off" class="fi_1 cmta_1"> </td>
                                                         </tr>
                                                      </tbody>
                                                      <thead>
                                                         <tr>
                                                            <th colspan="2"> Años de experiencia específica asociada al Sector Público: </th>
                                                         </tr>
                                                      </thead>
                                                      <tbody>
                                                         <tr>
                                                            <td rowspan="13" style="padding-top: 190px; font-weight: bold;">  EXPERIENCIA ESPECÍFICA </td>
                                                            <td style="text-align: left; padding-left: 90px;"> Cumple con el mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="c_4_1" name="c_4_1" class="fi_1 cmta_1" maxlength="5"><span class="help-block"></span> </td>
                                                            <td rowspan="13" style="padding-top: 190px; font-weight: bold;" rowspan="13"> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;"  placeholder="18" id="suma_c_1" name="suma_c_1" readonly=""> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;"> Tiene 2 años adicionales al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="16" id="c_5_1" name="c_5_1" autocomplete="off" class="fi_1 cmta_1"> </td>
                                                         </tr>
                                                         <tr>
                                                            <td style="text-align: left; padding-left: 90px;"> Tiene de 4 a más años adicionales al mínimo requerido </td>
                                                            <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="18" id="c_6_1" name="c_6_1" autocomplete="off" class="fi_1 cmta_1"> </td>
                                                         </tr>
                                                      </tbody>
                                                   </table>
                                                </div>
                                             </div>
                                             <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                <div class="box-header" style="background-color: #373953 !important;">
                   <h3 class="box-title" style="padding-top: 5px; font-weight: bold;">
                      <i class="fa fa-check-circle"></i>  CURSOS Y/O ESTUDIOS DE ESPECIALIZACIÓN (****)   
                   </h3>
                </div>
                <div class="box-body">
                   <table id="tabla_c" class="table table-bordered table-condensed table-hover responsive"
                      cellspacing="0" width="100%" style="font-size: 15px;">
                      <tbody>
                         <tr>
                            <td style="padding-top: 30px; font-weight: bold; width: 60%"> cumple con el primer Cursos y/o Estudios de Especialización </td>
                            <td style="padding-top: 30px; font-weight: bold;width: 25%">
                               <select name="uno_selectaa" id="uno_selectaa" class="form-control selecta uno_select">
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                         <tr>
                            <td style="padding-top: 30px; font-weight: bold;"> cumple con el segundo Cursos y/o Estudios de Especialización </td>
                            <td style="padding-top: 30px; font-weight: bold;">
                               <select name="uno_selectbb" id="uno_selectbb" class="form-control selecta uno_select">
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                         <tr>
                            <td style="padding-top: 30px; font-weight: bold;"> cumple con el tercer Cursos y/o Estudios de Especialización </td>
                            <td style="padding-top: 30px; font-weight: bold;">
                               <select name="uno_selectcc" id="uno_selectcc" class="form-control selecta uno_select">
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                         <tr>
                            <td style="padding-top: 30px; font-weight: bold;"> cumple con el cuarto Cursos y/o Estudios de Especialización </td>
                            <td style="padding-top: 30px; font-weight: bold;">
                               <select name="uno_selectdd" id="uno_selectdd" class="form-control selecta uno_select">
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                      </tbody>
                   </table>
                </div>
             </div>
                                             <div class="col-md-9">
                                                <div class="box box-solid box-default">
                                                   <div class="box-header with-border" style="text-align: center;">
                                                      <h3 class="box-title"> Nota </h3>
                                                   </div>
                                                   <div class="box-body">
                                                      <div class="form-group" style="margin: 0 20px;">
                                                         <h4 class="box-title">PUNTAJE ASIGNADO TOTAL (mínimo aprobatorio 45 y máximo 60) </h4>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="col-md-3 pull-right" >
                                                <div class="box box-solid box-danger">
                                                   <div class="box-header with-border" style="text-align: center;">
                                                      <h3 class="box-title"> Resultado Final </h3>
                                                   </div>
                                                   <div class="box-body">
                                                      <div class="form-group" style="margin: 0 20px;">
                                                         <input type="text" class="form-control" id="input_suma_final_1" name="input_suma_final_1" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 20px; text-align: center;" value="0" readonly="">
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="col-lg-9 col-md-9 col-sm-9" >
                                                <div class="box box-solid box-default">
                                                   <div class="box-header with-border" style="text-align: center;">
                                                      <h3 class="box-title"> Observacion </h3>
                                                   </div>
                                                   <div class="box-body">
                                                      <textarea id="input_obse_1" name="input_obse_1" class="form-control" rows="5" style="resize:none; height: 80px;text-transform: uppercase;font-weight: bold; border: 1px solid #373953 !important;" value=""></textarea>  
                                                   </div>
                                                </div>
                                             </div>
                                             <div class="col-md-3 pull-right" >
                                                <div class="box box-solid box-default">
                                                   <div class="box-header with-border" style="text-align: center;">
                                                      <h3 class="box-title"> Condición </h3>
                                                   </div>
                                                   <div class="box-body">
                                                      <div class="form-group" style="margin: 0 20px;">
                                                         <input type="text" class="form-control" id="input_condicion_1" name="input_condicion_1" style="font-weight:bold;text-transform: uppercase; font-size: 20px; text-align: center;" readonly="">
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="modal-footer" id="modal_footer_1">
                                             <button type="button" id="btnSave_1" onclick="guardar_evaluacion_curricular()"
                                                class="btn btn-primary"><i class="fa fa-check"></i>  Registrar Evaluación </button>

                                             <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar <i class="fa fa-close"></i></button>
                                          </div>
                                       </form>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </section>
                     </div>
                  </div>
               </div>
               <!-- FIN FICHA DE EVALUACIÓN 1  -->
               <!-- INICIO FICHA DE EVALUACION 2 -->
               <div class="modal fade" id="modal_form_dos" tabindex="-1"  data-backdrop="static"
                  role="dialog">
                  <div class="modal-dialog modal-lg" role="document">
                     <div class="modal-content">
                        <div class="modal-header" style="background: #1E282C; color: white;">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h3 class="modal-title" id="modal-title-eva" style="text-align: center;">FICHA DE EXAMEN TÉCNICO <span class="fa fa-folder-open-o"></span></h3>
                        </div>
                        <section class="content">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="box box-solid">
                                    <div class="box-body">
                                       <form action="#" id="form_evaluacion_entrevista_tecnica" method="POST">
                                          <div class="col-md-12">
                                             <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                <div class="box-header with-border" style="background-color: #373953 !important;">
                                                   <h3 class="box-title" style="padding-top: 5px; font-weight: bold;"> Datos Personales </h3>
                                                   <input type="hidden" id="IDpostulante_2" name="IDpostulante_2" style="color: black">
                                                </div>
                                                <div class="box-body">
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="dni_docente_2"> DNI <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                            </span></label>
                                                            <div class="input-group">
                                                               <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="dni_docente_2" id="dni_docente_2" type="text" class="form-control" readonly="">
                                                            </div>
                                                            <div style="font-size: 12px" class="help-block with-errors"></div>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_nombre_completo_2"> APELLIDOS Y NOMBRES </label>
                                                            <input type="text" required="" disabled="" autocomplete="off" class="form-control" id="input_nombre_completo_2" name="input_nombre_completo_2" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_codigo_convocatoria_2"> Código de convocatoria <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                            </span></label>
                                                            <div class="input-group">
                                                               <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="input_codigo_convocatoria_2" id="input_codigo_convocatoria_2" type="text" class="form-control" readonly="">
                                                            </div>
                                                            <div style="font-size: 12px" class="help-block with-errors"></div>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_telefono_2"> TELEFONO </label>
                                                            <input type="text" required="" autocomplete="off" class="form-control" id="input_telefono_2" name="input_telefono_2" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_num_cas_2"> N° CAS </label>
                                                            <input type="text" required="" autocomplete="off" maxlength="9" class="form-control" id="input_num_cas_2" name="input_num_cas_2" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;font-size: 20px;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_descripcion_cas_2"> Descripción del Puesto CAS </label>
                                                            <input type="text" required="" autocomplete="off" class="form-control" id="input_descripcion_cas_2" name="input_descripcion_cas_2" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12 col-sm-12 ">
                                                      <div class="form-group">
                                                         <input type="hidden" class="form-control" id="input_fecha_actual" name="input_fecha_actual" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 16px; background: white;" readonly value="<?php echo date("Y-n-j"); ?>">
                                                         </span> <label style="color: #373953; font-size: 20px;">
                                                         <?php 
                                                            $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
                                                            $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
                                                            echo $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y');
                                                            ?></label>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <!-- TABLA DE EVALUACION PRINCIPAL-->
                                          <div class="row">
                                             <div class="col-xs-12">
                                                <div class="col-lg-9 col-md-9 col-sm-9" >
                                                   <div class="box box-solid box-default">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Nota </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <div class="form-group" style="margin: 0 20px;">
                                                            <h4 class="box-title">El puntaje mínimo para aprobar la entrevista es de 11 </h4>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-md-3 pull-right" >
                                                   <div class="box box-solid box-danger">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Resultado Final </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <div class="form-group" style="margin: 0 20px;">
                                                            <input type="text" class="form-control fi_2" id="input_suma_final_2" name="input_suma_final_2" maxlength="3" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 20px; text-align: center;" value="">
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9" >
                                                   <div class="box box-solid box-default">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Observacion </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <textarea id="input_obse_2" name="input_obse_2" class="form-control" rows="5" style="resize:none; height: 80px;text-transform: uppercase;font-weight: bold; border: 1px solid #373953 !important;" value=""></textarea>  
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-md-3 pull-right" >
                                                   <div class="box box-solid box-default">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Condición </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <div class="form-group" style="margin: 0 20px;">
                                                            <input type="text" class="form-control" id="input_condicion_2" name="input_condicion_2" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 20px; text-align: center;" value="0" readonly="">
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="modal-footer" id="modal_footer">
                                             <button type="button" id="btnSave_2" onclick="guardar_evaluacion_tecnico()"
                                                class="btn btn-primary"><i class="fa fa-check"></i>  Actualizar Evaluación </button>

                                              <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar <i class="fa fa-close"></i></button>
                                          </div>
                                       </form>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </section>
                     </div>
                  </div>
               </div>
               <!-- FIN FICHA 2  -->  
               <!-- INICIO FICHA 3 -->
               <div class="modal fade" id="modal_form_tres" tabindex="-1"  data-backdrop="static"
                  role="dialog">
                  <div class="modal-dialog modal-lg" role="document">
                     <div class="modal-content">
                        <div class="modal-header" style="background: #1E282C; color: white;">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h3 class="modal-title" id="modal-title-eva" style="text-align: center;">FICHA DE EVALUACIÓN DE ENTREVISTA FINAL <span class="fa fa-folder-open-o"></span></h3>
                        </div>
                        <section class="content">
                           <div class="row">
                              <div class="col-md-12">
                                 <div class="box box-solid">
                                    <div class="box-body">
                                       <form action="#" id="form_evaluacion_entrevista" method="POST">
                                          <div class="col-md-12">
                                             <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                <div class="box-header with-border" style="background-color: #373953 !important;">
                                                   <h3 class="box-title" style="padding-top: 5px; font-weight: bold;"> Datos Personales </h3>
                                                   <input type="hidden" id="IDpostulante_final" name="IDpostulante_final" style="color: black">
                                                </div>
                                                <div class="box-body">
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="dni_docente"> DNI ( OBLIGATORIO ) <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                            </span></label>
                                                            <div class="input-group">
                                                               <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="dni_docente" id="dni_docente" type="text" class="form-control" readonly="">
                                                            </div>
                                                            <div style="font-size: 12px" class="help-block with-errors"></div>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_nombre_completo"> APELLIDOS Y NOMBRES </label>
                                                            <input type="text" required="" disabled="" autocomplete="off" class="form-control" id="input_nombre_completo" name="input_nombre_completo" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_codigo_convocatoria"> Código de convocatoria <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                            </span></label>
                                                            <div class="input-group">
                                                               <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="input_codigo_convocatoria" id="input_codigo_convocatoria" type="text" class="form-control" readonly="">
                                                            </div>
                                                            <div style="font-size: 12px" class="help-block with-errors"></div>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_telefono"> TELEFONO </label>
                                                            <input type="text" required="" autocomplete="off" class="form-control" id="input_telefono" name="input_telefono" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12">
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_num_cas"> N° CAS </label>
                                                            <input type="text" required="" autocomplete="off" maxlength="9" class="form-control" id="input_num_cas" name="input_num_cas" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;font-size: 20px;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                      <div class="col-md-6 col-sm-6">
                                                         <div class="form-group">
                                                            <label for="input_descripcion_cas"> Descripción del Puesto CAS </label>
                                                            <input type="text" required="" autocomplete="off" class="form-control" id="input_descripcion_cas" name="input_descripcion_cas" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                                                         </div>
                                                      </div>
                                                   </div>
                                                   <div class="col-md-12 col-sm-12 ">
                                                      <div class="form-group">
                                                         <input type="hidden" class="form-control" id="input_fecha_actual" name="input_fecha_actual" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 16px; background: white;" readonly value="<?php echo date("Y-n-j"); ?>">
                                                         </span> <label style="color: #373953; font-size: 20px;">
                                                         <?php 
                                                            $dias = array("Domingo","Lunes","Martes","Miercoles","Jueves","Viernes","Sábado");
                                                            $meses = array("Enero","Febrero","Marzo","Abril","Mayo","Junio","Julio","Agosto","Septiembre","Octubre","Noviembre","Diciembre");
                                                            echo $dias[date('w')]." ".date('d')." de ".$meses[date('n')-1]. " del ".date('Y');
                                                            ?></label>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <!-- TABLA DE EVALUACION PRINCIPAL-->
                                          <div class="row">
                                             <div class="col-xs-12">
                                                <!-- I. COMPROMISO DE GESTIÓN ESCOLAR 2:   RETENCIÓN ANUAL DE ESTUDIANTES DE LA INSITUCIÓN EDUCATIVA  -->
                                                <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                   <div class="box-body">
                                                      <table id="tabla_c" class="table table-bordered table-condensed table-hover responsive"
                                                         cellspacing="0" width="100%" style="font-size: 15px;">
                                                         <thead>
                                                            <tr>
                                                               <th style="width: 250px;"> CRITERIOS </th>
                                                               <th style="width: 30px;"> Muy por debajo de lo esperado   1 </th>
                                                               <th style="width: 30px;"> Por debajo de lo esperado   2 </th>
                                                               <th style="width: 30px;"> Dentro de lo esperado   3 </th>
                                                               <th style="width: 30px;"> Por encima de lo esperado   4 </th>
                                                               <th style="width: 30px;"> Puntaje  </th>
                                                            </tr>
                                                         </thead>
                                                      </table>
                                                   </div>
                                                </div>
                                                <!-- I. COMPROMISO DE GESTIÓN ESCOLAR 2:   RETENCIÓN ANUAL DE ESTUDIANTES DE LA INSITUCIÓN EDUCATIVA  -->
                                                <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                   <div class="box-header" style="background-color: #373953 !important;">
                                                      <h3 class="box-title" style="padding-top: 5px; font-weight: bold;">
                                                         <i class="fa fa-check-circle"></i>  I.- Adaptacion al puesto y cumplimiento de Funciones (Marcar con un X los recuadros seleccionados)   
                                                      </h3>
                                                   </div>
                                                   <div class="box-body">
                                                      <table id="tabla_c" class="table table-bordered table-condensed table-hover responsive"
                                                         cellspacing="0" width="100%" style="font-size: 15px;">
                                                         <tbody>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold; width: 60%"> Genera confianza y credibilidad en su ámbito técnico. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;width: 25%">
                                                                  <select name="uno_selecta" id="uno_selecta" class="form-control selecta uno_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                               <td rowspan="4" style="width: 15%;">
                                                                  <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;margin-top: 232px;" placeholder="16" id="suma_a" name="suma_a" readonly="">
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold;"> Tiene capacidad de análisis y aplicación. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;">
                                                                  <select name="uno_selectb" id="uno_selectb" class="form-control selecta uno_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold;"> Ha propuesto ideas innovadoras en anteriores experiencias laborales. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;">
                                                                  <select name="uno_selectc" id="uno_selectc" class="form-control selecta uno_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold;"> Evidencia a través de ejemplos el haber alcanzado los objetivos previstos en situaciones de presión de tiempo, inconvenientes imprevistos, desacuerdos, oposición y diversidad en experiencias laborales anteriores. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;">
                                                                  <select name="uno_selectd" id="uno_selectd" class="form-control selecta uno_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                                   </div>
                                                </div>
                                                <!-- I. COMPROMISO DE GESTIÓN ESCOLAR 2:   RETENCIÓN ANUAL DE ESTUDIANTES DE LA INSITUCIÓN EDUCATIVA  -->
                                                <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                   <div class="box-header" style="background-color: #373953 !important;">
                                                      <h3 class="box-title" style="padding-top: 5px; font-weight: bold;">
                                                         <i class="fa fa-check-circle"></i>  II.- Adaptación a la Área u Oficina (Marcar con un X los recuadros seleccionados)   
                                                      </h3>
                                                   </div>
                                                   <div class="box-body">
                                                      <table id="tabla_c" class="table table-bordered table-condensed table-hover responsive"
                                                         cellspacing="0" width="100%" style="font-size: 15px;">
                                                         <tbody>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold; width: 60%"> Establece haber mantenido relaciones cordiales con su superior jerárquico en experiencias laborales anteriores. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;width: 25%">
                                                                  <select name="dos_selecta" id="dos_selecta" class="form-control selecta dos_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                               <td rowspan="4" style="width: 15%;">
                                                                  <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;margin-top: 232px;" placeholder="12" id="suma_b" name="suma_b" readonly="">
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold;"> Entiende la estructura organizacional y línea de mando. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;">
                                                                  <select name="dos_selectb" id="dos_selectb" class="form-control selecta dos_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold;"> Evidencia a través de ejemplos el haberse comprometido en la búsqueda de logros compartidos. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;">
                                                                  <select name="dos_selectc" id="dos_selectc" class="form-control selecta dos_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                                   </div>
                                                </div>
                                                <!-- I. COMPROMISO DE GESTIÓN ESCOLAR 2:   RETENCIÓN ANUAL DE ESTUDIANTES DE LA INSITUCIÓN EDUCATIVA  -->
                                                <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                                   <div class="box-header" style="background-color: #373953 !important;">
                                                      <h3 class="box-title" style="padding-top: 5px; font-weight: bold;">
                                                         <i class="fa fa-check-circle"></i>  III.- Adaptación a la cultura de la entidad (Marcar con un X los recuadros seleccionados)    
                                                      </h3>
                                                      </h3>
                                                   </div>
                                                   <div class="box-body">
                                                      <table id="tabla_c" class="table table-bordered table-condensed table-hover responsive"
                                                         cellspacing="0" width="100%" style="font-size: 15px;">
                                                         <tbody>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold; width: 60%"> Se adapta con versatilidad a distintas culturas, contextos y situaciones.  </td>
                                                               <td style="padding-top: 30px; font-weight: bold;width: 25%">
                                                                  <select name="tres_selecta" id="tres_selecta" class="form-control selecta tres_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                               <td rowspan="4" style="width: 15%;">
                                                                  <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;margin-top: 232px;" placeholder="12" id="suma_c" name="suma_c" readonly="">
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold;"> Entiende y se enrola fácilmente en la dinámica institucional. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;">
                                                                  <select name="tres_selectb" id="tres_selectb" class="form-control selecta tres_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                            </tr>
                                                            <tr>
                                                               <td style="padding-top: 30px; font-weight: bold;"> Evidencia a través de ejemplos actitud de servivio. </td>
                                                               <td style="padding-top: 30px; font-weight: bold;">
                                                                  <select name="tres_selectc" id="tres_selectc" class="form-control selecta tres_select">
                                                                     
                                                                     <option value="1">1</option>
                                                                     <option value="2">2</option>
                                                                     <option value="3">3</option>
                                                                     <option value="4">4</option>
                                                                  </select>
                                                               </td>
                                                            </tr>
                                                         </tbody>
                                                      </table>
                                                   </div>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9" >
                                                   <div class="box box-solid box-default">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Nota </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <div class="form-group" style="margin: 0 20px;">
                                                            <h4 class="box-title">El puntaje mínimo para aprobar la entrevista es de 30 </h4>
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-md-3 pull-right" >
                                                   <div class="box box-solid box-danger">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Resultado Final </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <div class="form-group" style="margin: 0 20px;">
                                                            <input type="text" class="form-control" id="input_suma_final" name="input_suma_final" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 20px; text-align: center;" value="0" readonly="">
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-lg-9 col-md-9 col-sm-9" >
                                                   <div class="box box-solid box-default">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Observacion </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <textarea id="input_obse" name="input_obse" class="form-control" rows="5" id="comment" style="resize:none; height: 80px;text-transform: uppercase;font-weight: bold; border: 1px solid #373953 !important;" value=""></textarea>  
                                                      </div>
                                                   </div>
                                                </div>
                                                <div class="col-md-3 pull-right" >
                                                   <div class="box box-solid box-default">
                                                      <div class="box-header with-border" style="text-align: center;">
                                                         <h3 class="box-title"> Condición </h3>
                                                      </div>
                                                      <div class="box-body">
                                                         <div class="form-group" style="margin: 0 20px;">
                                                            <input type="text" class="form-control" id="input_condicion" name="input_condicion" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 20px; text-align: center;" value="0" readonly="">
                                                         </div>
                                                      </div>
                                                   </div>
                                                </div>
                                             </div>
                                          </div>
                                          <div class="modal-footer" id="modal_footer">
                                             <button type="button" id="btnSave_final" onclick="guardar_evaluacion_entrevista_final()"
                                                class="btn btn-primary"><i class="fa fa-check"></i>  Registrar Evaluación </button>
                                             <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar <i class="fa fa-close"></i></button>
                                          </div>
                                       </form>
                                    </div>
                                 </div>
                              </div>
                           </div>
                        </section>
                     </div>
                  </div>
               </div>
               <!-- FIN FICHA DE ENTREVISTA FINAL  -->   
               <div class="modal fade" id="modal_form_colegio" tabindex="-1"
                  role="dialog">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h3 id="msg_cabecera" class="modal-title text-center"></h3>
                        </div>
                        <div class="modal-body form">
                           <form action="#" id="form_miembro" class="form-horizontal">
                              <input type="hidden" value="" name="docenteID">
                              <div class="form-body">
                                 <div class="form-group">
                                    <label class="control-label col-md-3">Codigo de Convcoatoria</label>
                                    <div class="col-md-9">
                                       <span id="error_especialidad" style="color: red; font-weight: bold;">  </span>
                                       <input id="id_plaza" autocomplete="off" name="id_plaza" type="text" class="form-control bordecito solo-numero" style="border: 1px solid #555; color: #555; font-weight: bold;" maxlength="7" placeholder="Ingrese el ID de la plaza">
                                    </div>
                                    <span id="mensaje_plaza_no"><strong style="color: red;margin-left: 15px;">Plaza no existe</strong></span>
                                 </div>
                              </div>
                           </form>
                        </div>
                        <div class="modal-footer" id="modal_footer">
                           <button type="button" id="btnSave" onclick="mostrar_individual_hvida()"
                              class="btn btn-primary">Generar Reporte</button>
                           <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                     </div>
                  </div>
               </div>
               <!--EXAMEN TECNICO -->
               <div class="modal fade" id="modal_form_examen_tecnico" tabindex="-1"
                  role="dialog">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h3 id="msg_cabecera_et" class="modal-title text-center"></h3>
                        </div>
                        <div class="modal-body form">
                           <form action="#" id="form_examen_tecnico" class="form-horizontal">
                              <input type="hidden" value="" name="docenteID">
                              <div class="form-body">
                                 <div class="form-group">
                                    <label class="control-label col-md-3">Codigo de Convcoatoria</label>
                                    <div class="col-md-9">
                                       <span id="error_especialidad_et" style="color: red; font-weight: bold;">  </span>
                                       <!-- <input id="id_plaza_et" autocomplete="off" name="id_plaza_et" type="text" class="form-control bordecito solo-numero" style="border: 1px solid #555; color: #555; font-weight: bold;" maxlength="7" placeholder="Ingrese el ID de la plaza"> -->
                                       <input type="text" id="valor_id_plaza_et" name="valor_id_plaza_et" class="form-control bordecito solo-numero" style="border: 1px solid #555; color: #555; font-weight: bold;" maxlength="7" placeholder="Ingrese el ID de la plaza">
                                    </div>
                                    <span id="mensaje_plaza_no_et"><strong style="color: red;margin-left: 15px;">Plaza no existe</strong></span>
                                 </div>
                              </div>
                           </form>
                        </div>
                        <div class="modal-footer" id="modal_footer">
                           <button type="button" id="btnSave" onclick="mostrar_individual_e_t()"
                              class="btn btn-primary">Generar Reporte</button>
                           <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- RESULTADO FINAL -->
               <div class="modal fade" id="modal_form_resultado_final" tabindex="-1"
                  role="dialog">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h3 id="msg_cabecera_resultado_final" class="modal-title text-center"></h3>
                        </div>
                        <div class="modal-body form">
                           <form action="#" id="form_resultado_final" class="form-horizontal">
                              <input type="hidden" value="" name="docenteID">
                              <div class="form-body">
                                 <div class="form-group">
                                    <label class="control-label col-md-3">Codigo de Convcoatoria</label>
                                    <div class="col-md-9">
                                       <span id="error_especialidad_resultado_final" style="color: red; font-weight: bold;">  </span>
                                       <input id="id_plaza_resultado_final" autocomplete="off" name="id_plaza_resultado_final" type="text" class="form-control bordecito solo-numero" style="border: 1px solid #555; color: #555; font-weight: bold;" maxlength="7" placeholder="Ingrese el ID de la plaza">
                                    </div>
                                    <span id="mensaje_plaza_no_resultado_final"><strong style="color: red;margin-left: 15px;">Plaza no existe</strong></span>
                                 </div>
                              </div>
                           </form>
                        </div>
                        <div class="modal-footer" id="modal_footer">
                           <button type="button" id="btnSave" onclick="mostrar_individual_resultado_final()"
                              class="btn btn-primary">Generar Reporte</button>
                           <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                     </div>
                  </div>
               </div>
               <!-- CONTRATO CAS -->
               <div class="modal fade" id="modal_form_contrato_cas" tabindex="-1"
                  role="dialog">
                  <div class="modal-dialog" role="document">
                     <div class="modal-content">
                        <div class="modal-header">
                           <button type="button" class="close" data-dismiss="modal"
                              aria-label="Close">
                           <span aria-hidden="true">&times;</span>
                           </button>
                           <h3 id="msg_cabecera_contrato_cas" class="modal-title text-center"></h3>
                        </div>
                        <div class="modal-body form">
                           <form action="#" id="form_contrato_cas" class="form-horizontal">
                              <input type="hidden" value="" name="docenteID">
                              <div class="form-body">
                                 <div class="form-group">
                                    <label class="control-label col-md-3">Codigo de Convcoatoria</label>
                                    <div class="col-md-9">
                                       <span id="error_especialidad_contrato_cas" style="color: red; font-weight: bold;">  </span>
                                       <input id="id_plaza_contrato_cas" autocomplete="off" name="id_plaza_contrato_cas" type="text" class="form-control bordecito solo-numero" style="border: 1px solid #555; color: #555; font-weight: bold;" maxlength="7" placeholder="Ingrese el ID de la plaza">
                                    </div>
                                    <span id="mensaje_plaza_contrato_cas"><strong style="color: red;margin-left: 15px;">Plaza no existe</strong></span>
                                 </div>
                              </div>
                           </form>
                        </div>
                        <div class="modal-footer" id="modal_footer">
                           <button type="button" id="btnSave" onclick="mostrar_individual_contrato_cas()"
                              class="btn btn-primary">Generar Reporte</button>
                           <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
                        </div>
                     </div>
                  </div>
               </div>
            </div>
         </div>
      </div>
      </div>
      </div>
      </div>
      </div>
      <?php $this->load->view('layout/_footer'); ?>
      </div>
      <!-- The template to display files available for upload -->
      <script id="template-upload" type="text/x-tmpl">
         {% for (var i=0, file; file=o.files[i]; i++) { %}
             <tr class="template-upload fade">
                 <td>
                     <span class="preview"></span>
                 </td>
                 <td>
                     <p class="name">{%=file.name%}</p>
                     <strong class="error text-danger"></strong>
                 </td>
                 <td>
                     <p class="size">Processing...</p>
                     <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100" aria-valuenow="0"><div class="progress-bar progress-bar-success" style="width:0%;"></div></div>
                 </td>
                 <td>
                     {% if (!i && !o.options.autoUpload) { %}
                         <button class="btn btn-primary start" disabled>
                             <i class="glyphicon glyphicon-upload"></i>
                             <span>Cargar</span>
                         </button>
                     {% } %}
                     {% if (!i) { %}
                         <button class="btn btn-warning cancel">
                             <i class="glyphicon glyphicon-ban-circle"></i>
                             <span>Cancelar</span>
                         </button>
                     {% } %}
                 </td>
             </tr>
         {% } %}
      </script>
      <!-- The template to display files available for download -->
      <script id="template-download" type="text/x-tmpl">
         {% for (var i=0, file; file=o.files[i]; i++) { %}
             <tr class="template-download fade">
                 <td>
                     <span class="preview">
                         {% if (file.thumbnailUrl) { %}
                             <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" data-gallery><img src="{%=file.thumbnailUrl%}"></a>
                         {% } %}
                     </span>
                 </td>
                 <td>
                     <p class="name">
                         {% if (file.url) { %}
                             <a href="{%=file.url%}" title="{%=file.name%}" download="{%=file.name%}" {%=file.thumbnailUrl?'data-gallery':''%}>{%=file.name%}</a>
                         {% } else { %}
                             <span>{%=file.name%}</span>
                         {% } %}
                     </p>
                     {% if (file.error) { %}
                         <div><span class="label label-danger">Error</span> {%=file.error%}</div>
                     {% } %}
                 </td>
                 <td>
                     <span class="size">{%=o.formatFileSize(file.size)%}</span>
                 </td>
                 <td>
                     {% if (file.deleteUrl) { %}
                        <button class="btn btn-danger delete" data-type="{%=file.deleteType%}" onclick="eliminar_archivo('{%=file.name%}')" {% if (file.deleteWithCredentials) { %} data-xhr-fields='{"withCredentials":true}'{% } %}>
                             <i class="glyphicon glyphicon-trash"></i>
                             <span>Eliminar</span>
                         </button>
                         <input type="checkbox" name="delete" value="1" class="toggle">
                     {% } else { %}
                         <button class="btn btn-warning cancel">
                             <i class="glyphicon glyphicon-ban-circle"></i>
                             <span>Cancel</span>
                         </button>
                     {% } %}
                 </td>
             </tr>
         {% } %}
      </script>
      <script
         src="<?php echo base_url(); ?>plugins/jQuery/jQuery-2.1.4.min.js"></script>
      <script src="<?php echo base_url(); ?>bootstrap/js/bootstrap.min.js"></script>
      <script
         src="<?php echo base_url(); ?>plugins/datatables/jquery.dataTables.min.js"></script>
      <script
         src="<?php echo base_url(); ?>plugins/datatables/dataTables.bootstrap.min.js"></script>
      <script
         src="<?php echo base_url(); ?>plugins/datatables/extensions/Responsive/js/dataTables.responsive.min.js"></script>
      <script
         src="<?php echo base_url(); ?>plugins/select2/select2.full.min.js"></script>
      <script src="<?php echo base_url(); ?>dist/js/app.min.js"></script>
      <!-- The jQuery UI widget factory, can be omitted if jQuery UI is already included -->
      <script src="<?php echo base_url(); ?>upload/js/vendor/jquery.ui.widget.js"></script>
      <!-- The Templates plugin is included to render the <?php echo base_url(); ?>upload/download listings -->
      <script src="//blueimp.github.io/JavaScript-Templates/js/tmpl.min.js"></script>
      <!-- The Load Image plugin is included for the preview images and image resizing functionality -->
      <script src="//blueimp.github.io/JavaScript-Load-Image/js/load-image.all.min.js"></script>
      <!-- The Canvas to Blob plugin is included for image resizing functionality -->
      <script src="//blueimp.github.io/JavaScript-Canvas-to-Blob/js/canvas-to-blob.min.js"></script>
      <script src="//blueimp.github.io/Gallery/js/jquery.blueimp-gallery.min.js"></script>
      <script src="<?php echo base_url(); ?>upload/js/jquery.iframe-transport.js"></script>
      <!-- The basic File Upload plugin -->
      <script src="<?php echo base_url(); ?>upload/js/jquery.fileupload.js"></script>
      <!-- The File Upload processing plugin -->
      <script src="<?php echo base_url(); ?>upload/js/jquery.fileupload-process.js"></script>
      <!-- The File Upload image preview & resize plugin -->
      <script src="<?php echo base_url(); ?>upload/js/jquery.fileupload-image.js"></script>
      <!-- The File Upload audio preview plugin -->
      <script src="<?php echo base_url(); ?>upload/js/jquery.fileupload-audio.js"></script>
      <!-- The File Upload video preview plugin -->
      <script src="<?php echo base_url(); ?>upload/js/jquery.fileupload-video.js"></script>
      <!-- The File Upload validation plugin -->
      <script src="<?php echo base_url(); ?>upload/js/jquery.fileupload-validate.js"></script>
      <!-- The File Upload user interface plugin -->
      <script src="<?php echo base_url(); ?>upload/js/jquery.fileupload-ui.js"></script>
      <script
      src="<?php echo base_url(); ?>plugins/jquerynumeric/jquery.numeric.js"></script>

      <script src="<?php echo base_url(); ?>dist/js/sweetalert.js"></script>
      <script src="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker.js"></script>
      <script src="<?php echo base_url(); ?>plugins/datepicker/bootstrap-datepicker.js"></script>
      <script type="text/javascript">
         jQuery(document).ready(function($) {
             $("#mensaje_plaza_no").hide();
             $("#mensaje_plaza_no_et").hide();
             $("#mensaje_plaza_no_resultado_final").hide();
             $("#mensaje_plaza_no_resultado_final").hide();
         });
            var baseurl = "<?php echo base_url(); ?>";
         
            var save_method; 
            var table;
            var convocatoria = '';
            var tipo = '';
             
            $(document).ready(function() {
         
         
               $('.datepicker').datepicker({
                      autoclose: true,
                      format: "yyyy-mm-dd",
                      todayHighlight: true,
                      orientation: "top auto",
                      todayBtn: true,
                      todayHighlight: true,
                      language: "es" 
                  });
         
               $(function () {
                //datatables
                  table_usuario = $('#table_usuario').DataTable({
                      "processing": true, //Feature control the processing indicator.
                      "serverSide": true, //Feature control DataTables' server-side processing mode.
                      "order": [], //Initial no order.
               
                      // Load data for the table's content from an Ajax source
                      "ajax": {
                          "url": "<?php echo site_url('Postulaciones/lista_usuarios')?>",
                          "type": "POST",
                          "data" :{"ci_csrf_token":"<?php echo $this->security->get_csrf_hash(); ?>"}
                      },
               
                      //Set column definition initialisation properties.
                      "columnDefs": [
                      {
                          "targets": [ -1 ], //last column
                          "orderable": false, //set not orderable
                      },
                      ],       
                      "language": {
                        "processing":     "Procesando...",
                          "lengthMenu":     "Mostrar _MENU_ registros",
                          "zeroRecords":    "No se encontraron resultados",
                          "emptyTable":     "Ningún dato disponible en esta tabla",
                          "info":           "Mostrando registros del _START_ al _END_ de un total de _TOTAL_ registros",
                          "infoEmpty":      "Mostrando registros del 0 al 0 de un total de 0 registros",
                          "infoFiltered":   "(filtrado de un total de _MAX_ registros)",
                          "infoPostFix":    "",
                          "search":         "Buscar:",
                          "url":            "",
                          "infoThousands":  ",",
                          "loadingRecords": "Cargando...",
                          "paginate": {
                              "first":    "Primero",
                              "last":     "Último",
                              "next":     "Siguiente",
                              "previous": "Anterior"
                          },
                          "aria": {
                              "sortAscending":  ": Activar para ordenar la columna de manera ascendente",
                              "sortDescending": ": Activar para ordenar la columna de manera descendente"
                          }
                      },
                      "lengthMenu": [[10, 15, 20, 25], [10, 15, 20, 25]],
                      "iDisplayLength": 10,
                  });
                  
                  $("input").change(function(){
                      $(this).parent().parent().removeClass('has-error');
                      $(this).next().empty();
                  });
                
              });
               
               
            });
         
            function listar_individual_hoja_de_vida()
                                     {
                                         save_method = 'add';
                                         $('#form_miembro')[0].reset(); 
                                         $('.form-group').removeClass('has-error'); 
                                         $('.help-block').empty();
                                         $('#modal_form_colegio').modal('show');
                                         $('#msg_cabecera').html("GENERAR REPORTE HOJA DE VIDA");
                                         $('#error_especialidad').hide();
                                         $('#error_fecha').hide();
                                         
                                         /*------------------------------------*/
                                     }
         
                 function listar_individual_examen_tecnico()
                                     {
                                         save_method = 'add';
                                         $('#form_examen_tecnico')[0].reset(); 
                                         $('.form-group').removeClass('has-error'); 
                                         $('.help-block').empty();
                                         $('#modal_form_examen_tecnico').modal('show');
                                         $('#msg_cabecera_et').html("GENERAR REPORTE EXAMEN TÉCNICO");
                                         $('#error_especialidad_et').hide();
                                         
                                         /*------------------------------------*/
                                     }
         
                 function listar_individual_resultado_final()
                                     {
                                         save_method = 'add';
                                         $('#form_resultado_final')[0].reset(); 
                                         $('.form-group').removeClass('has-error'); 
                                         $('.help-block').empty();
                                         $('#modal_form_resultado_final').modal('show');
                                         $('#msg_cabecera_resultado_final').html("GENERAR REPORTE RESULTADO FINAL");
                                         $('#error_especialidad_resultado_final').hide();
                                         
                                         /*------------------------------------*/
                                     }
         
                 // function listar_individual_contrato_cas()
                 //                     {
                 //                         save_method = 'add';
                 //                         $('#form_resultado_final')[0].reset(); 
                 //                         $('.form-group').removeClass('has-error'); 
                 //                         $('.help-block').empty();
                 //                         $('#modal_form_resultado_final').modal('show');
                 //                         $('#msg_cabecera_resultado_final').html("GENERAR CONTRATO CAS");
                 //                         $('#error_especialidad_resultado_final').hide();
                                         
                 //                         /*------------------------------------*/
                 //                     }
         
                                     
         
                 function mostrar_individual_hvida()
                         {
                             var id_plaza = $('#id_plaza').val();
                             //validando data antes de enviarla
         
                             if ($.trim(id_plaza) == "" || $.trim(id_plaza) == null) {
                                 $("#id_plaza").css("border", "1px solid red");
                                 $("#id_plaza").focus();
                                 $("#error_fecha").show();
                                 return false;
                              }else{
                                 $.ajax({
                                 url: '<?php echo base_url(); ?>Postulaciones/verificar_idplaza',
                                 type: 'post',
                                 data: {id_plaza: id_plaza},
                                 dataType: 'json',
                                 success: function (data) {
                                     let ayuda = data[0]['valor'];
                                     if (ayuda == 0) {
                                         $("#mensaje_plaza_no").show();
                                     }
                                     if (ayuda == 1) {
                                        var win = window.open(baseurl +
                                         'Postulaciones/reporte_pdf?id_plaza='+id_plaza, '_blank');
                                         //win.focus();
                                         $("#mensaje_plaza_no").hide();
                                     }
                                        
                                 },
                                 error: function (jqXHR, textStatus, errorThrown)
                                 {
                                     alert('Error adding / update data');
                                     //$('#btnSave').text('Guardar'); //change button text
                                     //$('#btnSave').attr('disabled',false); //set button enable
                                 }
                                       });
                            }
         
                          }
         
                  function mostrar_individual_e_t()
                         {
                             var id_plaza = $('#valor_id_plaza_et').val();
                             //validando data antes de enviarla
         
                             if ($.trim(id_plaza) == "" || $.trim(id_plaza) == null) {
                                 $("#id_plaza_et").css("border", "1px solid red");
                                 $("#id_plaza_et").focus();
                                 return false;
                              }else{
                                 $.ajax({
                                 url: '<?php echo base_url(); ?>Postulaciones/verificar_idplaza',
                                 type: 'post',
                                 data: {id_plaza: id_plaza},
                                 dataType: 'json',
                                 success: function (data) {
                                     let ayuda = data[0]['valor'];
                                     if (ayuda == 0) {
                                         $("#mensaje_plaza_no_et").show();
                                     }
                                     if (ayuda == 1) {
                                        var win = window.open(baseurl +
                                         'Postulaciones/reporte_pdf_et?id_plaza_et='+id_plaza, '_blank');
                                         //win.focus();
                                         $("#mensaje_plaza_no_et").hide();
                                     }
                                        
                                 },
                                 error: function (jqXHR, textStatus, errorThrown)
                                 {
                                     alert('Error adding / update data');
                                     //$('#btnSave').text('Guardar'); //change button text
                                     //$('#btnSave').attr('disabled',false); //set button enable
                                 }
                                       });
                            }
         
                          }
         
                          function mostrar_individual_resultado_final()
                         {
                             var id_plaza = $('#id_plaza_resultado_final').val();
                             //validando data antes de enviarla
         
                             if ($.trim(id_plaza) == "" || $.trim(id_plaza) == null) {
                                 $("#id_plaza_resultado_final").css("border", "1px solid red");
                                 $("#id_plaza_resultado_final").focus();
                                 return false;
                              }else{
                                 $.ajax({
                                 url: '<?php echo base_url(); ?>Postulaciones/verificar_idplaza',
                                 type: 'post',
                                 data: {id_plaza: id_plaza},
                                 dataType: 'json',
                                 success: function (data) {
                                     let ayuda = data[0]['valor'];
                                     if (ayuda == 0) {
                                         $("#mensaje_plaza_no_et").show();
                                     }
                                     if (ayuda == 1) {
                                        var win = window.open(baseurl +
                                         'Postulaciones/reporte_pdf_nota_final?id_plaza_final='+id_plaza, '_blank');
                                         //win.focus();
                                         $("#mensaje_plaza_no_et").hide();
                                     }
                                        
                                 },
                                 error: function (jqXHR, textStatus, errorThrown)
                                 {
                                     alert('Error adding / update data');
                                     //$('#btnSave').text('Guardar'); //change button text
                                     //$('#btnSave').attr('disabled',false); //set button enable
                                 }
                                       });
                            }
         
                          }
         
         
                 $('.solo-numero').on('input', function () { 
                 this.value = this.value.replace(/[^0-9]/g,'');
                 });
         
                  function letra(e){
                key = e.keyCode || e.which;
                tecla = String.fromCharCode(key).toLowerCase();
                letras = " áéíóúabcdefghijklmnñopqrstuvwxyz";
                especiales = "8-37-39-46";
         
                tecla_especial = false
                for(var i in especiales){
                     if(key == especiales[i]){
                         tecla_especial = true;
                         break;
                     }
                 }
         
                 if(letras.indexOf(tecla)==-1 && !tecla_especial){
                     return false;
                 }
             }
         
            function reload_table_usuario()
            {
                table_usuario.ajax.reload(null,false); //reload datatable ajax
            }
         
            function editar_usuario(id)
          {
            $('#modal_form_usuario').modal('show');
            //$('#sig-clearBtn').click();
            //$('#usuario').prop('disabled',true);
              //save_method = 'update';
              $('#form_usuario')[0].reset(); // reset form on modals
              $('.form-group').removeClass('has-error'); // clear error class
              $('.help-block').empty(); // clear error string
         
              //Ajax Load data from ajax
              $.ajax({
                  url : "<?php echo site_url('Postulaciones/obtener_evaluacion/')?>/" + id,
                  type: "GET",
                  dataType: "JSON",
                  success: function(data)
                  {         
                      //$('[name="usuarioID"]').val(data.usuarioID);
                      var sexoo ='';
                      if (data.sexo == 2) {
                        sexoo = 'FEMENINO';
                      }
                      if (data.sexo == 1) {
                        sexoo = 'MASCULINO';
                      }
         
                      $('#input_mostrar').text(data.IDconvocatoria);
         
                      $('#input_valorPK').val(data.IDdetalle_postulacion);
         
                      $('#input_dni').text(data.dni);
                      $('#input_sexo').text(sexoo);
                      $('#input_nombre').text(data.nombre);
                      $('#input_apaterno').text(data.apaterno);
                      $('#input_amaterno').text(data.amaterno);
                      $('#input_estado_civil').text(data.estado_civil);
                      $('#input_celular').text(data.celular);
                      $('#input_email').text(data.email);
                      $('#input_direccion').text(data.direccion);
         
                      $('#input_hoja_vida').val(data.evaluacion_exp);
                      $('#input_examen_tecnico').val(data.examen_tecnico);
         
         
                    $('#modal_form_usuario').modal('show'); // show bootstrap modal when complete loaded
                    //$('#modal-title-usuario').text('Editar usuario del sistema'); // Set Title to Bootstrap modal title
              },
                  error: function (jqXHR, textStatus, errorThrown)
                  {
                      alert('Error get data from ajax');
                  }
              });
          }
         
         
            $( "#modal_convocatoria" ).on('hidden.bs.modal', function(){
              reload_table();
            });
         
            function cerrar_respuesta(){
              reload_table();
               $('#modal_respuesta').modal('hide');
            }
         
            
         
            function cerrar(){
              reload_table();
              $('#modal_convocatoria').modal('hide');
            }
         
            function eliminar_convocatoria(id){
              $('#modal_confirmar').modal('show');
              $('#IDconvocatoria_e').val(id);
            }
         
            function confirmar(){
              $.ajax({
                    url : "<?php echo site_url('convocatoria/eliminar')?>",
                    type: "POST",
                    data: {IDconvocatoria: $('#IDconvocatoria_e').val()},
                    dataType: "JSON",
                    success: function(data)
                    {
                      if(data.status){
                        $('#modal_confirmar').modal('hide');
                        $('#p_respuesta_modal').text('El registro se ha eliminado con éxito.');
                        
                      }else{
                        $('#p_respuesta_modal').text('El registro no se podido eliminar.');
                      }
                      $('#modal_respuesta').modal('show');
                      
                },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error get data from ajax');
                    }
                });
            }
         
            function registrar_convocatoria(){
              save_method = 'add';
                $('#form_convocatoria')[0].reset();
              $('#btnGuardar').text('Guardar');
              $('#titulo_convocatoria').text('Registro de una nueva convocatoria');
              $('#carga_archivos').hide();
              $('#modal_convocatoria').modal('show');
            }
         
            function eliminar_archivo(archivo){
              dir = convocatoria+'/'+tipo+'/'+archivo;
               $.ajax({
                      url : "<?php echo site_url('convocatoria/eliminar_archivo')?>",
                      type: "POST",
                      data: {archivo: dir },
                      dataType: "JSON",
                      success: function(data)
                      {
                      }
                  });
            }
         
            function guardar_convocatoria(){
              $('#btnGuardar').text('Guardando...'); 
                $('#btnGuardar').attr('disabled',true); 
                var url;
             
                if(save_method == 'add') {
                    url = "<?php echo site_url('convocatoria/registrar')?>";
                } else {
                    url = "<?php echo site_url('convocatoria/actualizar')?>";
                }
             
                $.ajax({
                    url : url,
                    type: "POST",
                    data: $('#form_convocatoria').serialize(),
                    dataType: "JSON",
                    success: function(data)
                    {
                        if(data.status) {
                          console.log(data);
                            $('#carga_archivos').show();
                            $('#IDconvocatoria').val(data.ID);
                            convocatoria = data.ID;
                            cambio(1);
                            limpiar_tabs();
                            reload_table();
                            $('#btnGuardar').text('Actualizar'); 
                            $('#btnGuardar').attr('disabled',false); 
                           
                        } else {
                         
                            for (var i = 0; i < data.inputerror.length; i++) {
                                $('[name="'+data.inputerror[i]+'"]').parent().parent().addClass('has-error'); 
                                $('[name="'+data.inputerror[i]+'"]').next().text(data.error_string[i]);
                            }
                            $('#btnGuardar').text('Guardar'); 
                            $('#btnGuardar').attr('disabled',false); 
                        }
         
                       
                        
                        
                    },
                    error: function (jqXHR, textStatus, errorThrown)
                    {
                        alert('Error adding / update data');
                        $('#btnGuardar').text('Guardar'); 
                        $('#btnGuardar').attr('disabled',false); 
             
                    }
                });
            }
            
            function limpiar_tabs(){
              
              $(".nav-tabs li").removeClass("active");
              $('#principal').addClass('active');
            }
         
         
         
            function cambio(url){
              tipo = url;
              $("table tbody.files").empty();
              load(convocatoria+'/'+url);
            }
         
            function load(folder){
              'use strict';
            
                $('#fileupload').fileupload({
                    url: '<?php echo site_url('convocatoria/subir')?>?data='+folder,
                });
                
                $('#fileupload').fileupload(
                    'option',
                    'redirect',
                    window.location.href.replace(
                        /\/[^\/]*$/,
                        '/cors/result.html?%s'
                    )
                );
            
                if (window.location.hostname === 'blueimp.github.io') {
                    $('#fileupload').fileupload('option', {
                        url: '<?php echo site_url('convocatoria/subir')?>',
                        disableImageResize: /Android(?!.*Chrome)|Opera/
                            .test(window.navigator.userAgent),
                        maxFileSize: 999000,
                        acceptFileTypes: /(\.|\/)(gif|jpe?g|png)$/i
                    });
                    if ($.support.cors) {
                        $.ajax({
                            url: '<?php echo site_url('convocatoria/subir')?>',
                            type: 'HEAD'
                        }).fail(function () {
                            $('<div class="alert alert-danger"/>')
                                .text('Upload server currently unavailable - ' +
                                        new Date())
                                .appendTo('#fileupload');
                        });
                    }
                } else {
                    $('#fileupload').addClass('fileupload-processing');
                    $.ajax({
                        url: $('#fileupload').fileupload('option', 'url'),
                        dataType: 'json',
                        context: $('#fileupload')[0]
                    }).always(function () {
                        $(this).removeClass('fileupload-processing');
                    }).done(function (result) {
                        $(this).fileupload('option', 'done')
                            .call(this, $.Event('done'), {result: result});
                    });
                }
          }
         
         
         
               function imprimir_evaluacion_personal_pdf(id)
               {
               // var win = window.open(baseurl +
               //   'Documento/reporte_personal_pdf',
               //           '_blank' // <- Esto es lo que lo hace abrir en una ventana nueva.
               //           );
               // win.focus();
               var win = window.open(
               '<?php echo base_url(); ?>postulaciones/reporte_personal_pdf?conv=' + id,
                                                     '_blank' // <- This is what makes it open in a new window.
                     );
                  win.focus();
               }
               
                     function imprimir_anexos_pdf(id)
               {
               // var win = window.open(baseurl +
               //   'Documento/reporte_personal_pdf',
               //           '_blank' // <- Esto es lo que lo hace abrir en una ventana nueva.
               //           );
               // win.focus();
               var win = window.open(
               '<?php echo base_url(); ?>postulaciones/reporte_anexos_pdf?conv=' + id,
                                                     '_blank' // <- This is what makes it open in a new window.
                     );
                  win.focus();
               }
               
                          function imprimir_resumen_excel(id)
               {
               // var win = window.open(baseurl +
               //   'Documento/reporte_personal_pdf',
               //           '_blank' // <- Esto es lo que lo hace abrir en una ventana nueva.
               //           );
               // win.focus();
               var win = window.open(
               '<?php echo base_url(); ?>postulaciones/reporte_resumen_excel?conv=' + id,
                                                     '_blank' // <- This is what makes it open in a new window.
                     );
                  win.focus();
               }

         /*-- MODALES-EVALUACIONES ----------------------------------------------------- */
         // INICIO FICHA DE EVALUACION 1
         function ev_curricular(detalleid, idconvocatoria, idpostulante)
          {
            $('#modal_form_uno').modal('show');
              $('#form_evaluacion_curricular')[0].reset(); // reset form on modals
              $('#btnSave_1').text('Actualizar Evaluación');
              $('#btnSave_1').attr('disabled', false);
              
              $('.form-group').removeClass('has-error'); // clear error class
              $('.help-block').empty(); // clear error string
         
              //Ajax Load data from ajax
              $.ajax({
                  url : "<?php echo site_url('Postulaciones/obtener_evaluacion_curricular/')?>?detalleid=" + detalleid + '&idconvocatoria=' + idconvocatoria + '&idpostulante=' + idpostulante,
                  type: "GET",
                  dataType: "JSON",
                  success: function(data)
                  {         
                      //$('[name="usuarioID"]').val(data.usuarioID);        
                      $('#IDpostulante_1').val(data[0]['IDpostulante']);
         
                      $('#dni_docente_1').val(data[0]['dni_postulante']);
                      $('#input_nombre_completo_1').val(data[0]['nombre_postulante']);
                      $('#input_telefono_1').val(data[0]['celular']);
                      $('#input_codigo_convocatoria_1').val(data[0]['IDconvocatoria']);
                      $('#input_num_cas_1').val(data[0]['nro_cas']);
                      $('#input_descripcion_cas_1').val(data[0]['asuntoContrato']);
                      $('#input_suma_final_1').val(data[0]['suma_total']);
                      $('#input_obse_1').val(data[0]['obs']);
                      $('#input_condicion_1').val(data[0]['condicion']);

                      // notas de la evaluacion
                      $('#a_1_1').val(data[0]['a1']);
                      $('#a_2_1').val(data[0]['a2']);
                      $('#a_3_1').val(data[0]['a3']);
                      $('#suma_a_1').val(data[0]['suma']);


                      $('#b_1_1').val(data[0]['b1']);
                      $('#b_2_1').val(data[0]['b2']);
                      $('#b_3_1').val(data[0]['b3']);
                      $('#suma_b_1').val(data[0]['sumb']);

                      $('#c_1_1').val(data[0]['c1']);
                      $('#c_2_1').val(data[0]['c2']);
                      $('#c_3_1').val(data[0]['c3']);
                      $('#c_4_1').val(data[0]['c4']);
                      $('#c_5_1').val(data[0]['c5']);
                      $('#c_6_1').val(data[0]['c6']);
                      $('#suma_c_1').val(data[0]['sumc']);

                      $('#uno_selectaa').val(data[0]['select_uno']);
                      $('#uno_selectbb').val(data[0]['select_dos']);
                      $('#uno_selectcc').val(data[0]['select_tres']);
                      $('#uno_selectdd').val(data[0]['select_cuatro']);
                      // $('#input_examen_tecnico').val(data.examen_tecnico);
         
         
                    $('#modal_form_uno').modal('show'); // show bootstrap modal when complete loaded
                    //$('#modal-title-usuario').text('Editar usuario del sistema'); // Set Title to Bootstrap modal title
              },
                  error: function (jqXHR, textStatus, errorThrown)
                  {
                      alert('Error get data from ajax');
                  }
              });
          }
         // FIN FICHA DE EVALUACION 1
         
         // INICIO FICHA DE EVALUACION 2
         function ex_tecnico(detalleid, idconvocatoria, idpostulante)
          {   
              $('#modal_form_dos').modal('show');
              $('#form_evaluacion_entrevista_tecnica')[0].reset(); // reset form on modals
              $('#btnSave_2').text('Actualizar Evaluación');
              $('#btnSave_2').attr('disabled', false);

              $('.form-group').removeClass('has-error'); // clear error class
              $('.help-block').empty(); // clear error string
         
              //Ajax Load data from ajax
              $.ajax({
                  url : "<?php echo site_url('Postulaciones/obtener_evaluacion_tecnica/')?>?detalleid=" + detalleid + '&idconvocatoria=' + idconvocatoria + '&idpostulante=' + idpostulante,
                  type: "GET",
                  dataType: "JSON",
                  success: function(data)
                  {         
                      //$('[name="usuarioID"]').val(data.usuarioID);        
                      $('#IDpostulante_2').val(data[0]['IDpostulante']);
         
                      $('#dni_docente_2').val(data[0]['dni_postulante']);
                      $('#input_nombre_completo_2').val(data[0]['nombre_postulante']);
                      $('#input_telefono_2').val(data[0]['celular']);
                      $('#input_codigo_convocatoria_2').val(data[0]['IDconvocatoria']);
                      $('#input_num_cas_2').val(data[0]['nro_cas']);
                      $('#input_descripcion_cas_2').val(data[0]['asuntoContrato']);
                      $('#input_suma_final_2').val(data[0]['suma_total']);
                      $('#input_obse_2').val(data[0]['obs']);
                      $('#input_condicion_2').val(data[0]['condicion']);

                      // $('#input_direccion').text(data.direccion);
         
                      // $('#input_hoja_vida').val(data.evaluacion_exp);
                      // $('#input_examen_tecnico').val(data.examen_tecnico);
         
         
                    $('#modal_form_dos').modal('show'); // show bootstrap modal when complete loaded
                    //$('#modal-title-usuario').text('Editar usuario del sistema'); // Set Title to Bootstrap modal title
              },
                  error: function (jqXHR, textStatus, errorThrown)
                  {
                      alert('Error get data from ajax');
                  }
              });
          }
         // FIN FICHA DE EVALUACION 2
         
         // INICIO FICHA DE EVALUACION 3
         function entre_final( detalleid, idconvocatoria, idpostulante )
          {
            $('#modal_form_tres').modal('show');
              $('#form_resultado_final')[0].reset(); // reset form on modals
              $('#btnSave_final').text('Actualizar Evaluación');
              $('#btnSave_final').attr('disabled', false);

              $('.form-group').removeClass('has-error'); // clear error class
              $('.help-block').empty(); // clear error string
         
              //Ajax Load data from ajax
              $.ajax({
                  url : "<?php echo site_url('Entrevista/obtener_evaluacion_final/')?>?detalleid=" + detalleid + '&idconvocatoria=' + idconvocatoria + '&idpostulante=' + idpostulante,
                  type: "GET",
                  dataType: "JSON",
                  success: function(data)
                  {         
                      //$('[name="usuarioID"]').val(data.usuarioID);        
                      $('#IDpostulante_final').val(data[0]['IDpostulante']);
         
                      $('#dni_docente').val(data[0]['dni_postulante']);
                      $('#input_nombre_completo').val(data[0]['nombre_postulante']);
                      $('#input_telefono').val(data[0]['celular']);
                      $('#input_codigo_convocatoria').val(data[0]['IDconvocatoria']);
                      $('#input_num_cas').val(data[0]['nro_cas']);
                      $('#input_descripcion_cas').val(data[0]['asuntoContrato']);
                      $('#input_suma_final').val(data[0]['suma_total']);
                      $('#input_obse').val(data[0]['obs']);
                      $('#input_condicion').val(data[0]['condicion']);

                      // notas de la evaluacion
                      $('#uno_selecta').val(data[0]['a1']);
                      $('#uno_selectb').val(data[0]['a2']);
                      $('#uno_selectc').val(data[0]['a3']);
                      $('#uno_selectd').val(data[0]['a4']);
                      $('#suma_a').val(data[0]['suma']);


                      $('#dos_selecta').val(data[0]['b1']);
                      $('#dos_selectb').val(data[0]['b2']);
                      $('#dos_selectc').val(data[0]['b3']);
                      $('#suma_b').val(data[0]['sumb']);

                      $('#tres_selecta').val(data[0]['c1']);
                      $('#tres_selectb').val(data[0]['c2']);
                      $('#tres_selectc').val(data[0]['c3']);
                      $('#suma_c').val(data[0]['sumc']);
                      // $('#input_examen_tecnico').val(data.examen_tecnico);
         
         
                    $('#modal_form_tres').modal('show'); // show bootstrap modal when complete loaded
                    //$('#modal-title-usuario').text('Editar usuario del sistema'); // Set Title to Bootstrap modal title
              },
                  error: function (jqXHR, textStatus, errorThrown)
                  {
                      alert('Error get data from ajax');
                  }
              });
          }
         // FIN FICHA DE EVALUACION 3

         // VALIDACION FICHA 1
         //sumar todos los imput del bloque A que tengan la clase amta
           $('.amta_1').keyup(function() {
             var importe_total_2 = 0
             $(".amta_1").each(
               function(index, value) {
                 if ( $.isNumeric( $(this).val() ) ){
                   importe_total_2 = importe_total_2 + eval($(this).val());

                 }
               }
               );
             $("#suma_a_1").val(importe_total_2.toFixed(2));
           });
           
           //sumar todos los imput del bloque B que tengan la clase bmta
           $('.bmta_1').keyup(function() {
             var importe_total_2 = 0
             $(".bmta_1").each(
               function(index, value) {
                 if ( $.isNumeric( $(this).val() ) ){
                   importe_total_2 = importe_total_2 + eval($(this).val());

                 }
               }
               );
             $("#suma_b_1").val(importe_total_2.toFixed(2));
           });
           
           
           //sumar todos los imput del bloque C que tengan la clase cmta
           $('.cmta_1').keyup(function() {
             var importe_total_2 = 0
             $(".cmta_1").each(
               function(index, value) {
                 if ( $.isNumeric( $(this).val() ) ){
                   importe_total_2 = importe_total_2 + eval($(this).val());

                 }
               }
               );
             $("#suma_c_1").val(importe_total_2.toFixed(2));
           });
          

           $('.fi_1').keyup(function() {
             var importe_total_s = 0
             $(".fi_1").each(
               function(index, value) {
                 if ( $.isNumeric( $(this).val() ) ){
                   importe_total_s = importe_total_s + eval($(this).val());
                 }
               }
               );

             $("#input_suma_final_1").val(importe_total_s.toFixed(2));

             if ( importe_total_s.toFixed(2) >= 45  ) {
               $("#input_condicion_1").val('APTO');
               $("#input_condicion_1").css("color", "#008D4C");
             }
             else {
               $("#input_condicion_1").val('NO APTO');
               $("#input_condicion_1").css("color", "#D73925");
             }
             
           });

           $("#a_1_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });

           $("#a_2_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });

           $("#a_3_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });

           $("#b_1_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });
           $("#b_2_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });
           $("#b_3_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });

           $("#c_1_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });
           $("#c_2_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });
           $("#c_3_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });
           $("#c_4_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });
           $("#c_5_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });
           $("#c_6_1").numeric({decimal: false, negative: false},
             function () {
                 this.value = '';
                 this.focus();
             });

         
         // VALIDACION FICHA 2
         $('.fi_2').keyup(function() {
         var importe_total_s = 0

          importe_total_s = $("#input_suma_final_2").val();

          if ( importe_total_s >= 11  ) {
            $("#input_condicion_2").val('APTO');
            $("#input_condicion_2").css("color", "#008D4C");
          }
          else {
            $("#input_condicion_2").val('NO APTO');
            $("#input_condicion_2").css("color", "#D73925");
          }
        });

         $("#input_suma_final_2").numeric({decimal: false, negative: false},
           function () {
               this.value = '';
               this.focus();
         });

         // VALIDACION FICHA 3
         $(".uno_select").change(function(){
           var importe_total_1 = 0;
             $(".uno_select").each(
             function(index, value) {
               if ( $.isNumeric( $(this).val() ) ){
                 importe_total_1 = importe_total_1 + eval($(this).val());
         
               }
             }
             );
               $('#suma_a').val(importe_total_1.toFixed(2));
           });

         $(".dos_select").change(function(){
           var importe_total_2 = 0;
             $(".dos_select").each(
             function(index, value) {
               if ( $.isNumeric( $(this).val() ) ){
                 importe_total_2 = importe_total_2 + eval($(this).val());
         
               }
             }
             );
               $('#suma_b').val(importe_total_2.toFixed(2));
           });

         $(".tres_select").change(function(){
           var importe_total_3 = 0;
             $(".tres_select").each(
             function(index, value) {
               if ( $.isNumeric( $(this).val() ) ){
                 importe_total_3 = importe_total_3 + eval($(this).val());
         
               }
             }
             );
               $('#suma_c').val(importe_total_3.toFixed(2));
           });
         
           
         
         
           $('.selecta').change(function() {
             var importe_total_s = 0
             $(".selecta").each(
               function(index, value) {
                 if ( $.isNumeric( $(this).val() ) ){
                   importe_total_s = importe_total_s + eval($(this).val());
                 }
               }
               );
         //    $("#input_suma_total").val(importe_total_s.toFixed(2));
         
             $("#input_suma_final").val(importe_total_s.toFixed(2));

             if ( importe_total_s.toFixed(2) >= 30  ) {
                $("#input_condicion").val('APTO');
                $("#input_condicion").css("color", "#008D4C");
              }
              else {
                $("#input_condicion").val('NO APTO');
                $("#input_condicion").css("color", "#D73925");
              }
             
           });

         // MODIFICAR EVALUACIOANES

         // FICHA 1

         function guardar_evaluacion_curricular(){
          $('#btnSave_1').text('Modificando...');
          $('#btnSave_1').attr('disabled', true);

          var dni_docente = $("#dni_docente_1").val();
          var nombrecompleto = $('#input_nombre_completo_1').val();
          var num_cas = $('#input_num_cas_1').val();

          var puntaje_maximo = $("#input_suma_final_1").val();

          var url;
          url = baseurl + 'curricular/modificar_evaluacion_curricular';

          swal({
          title: "¿Desea actualizar la evaluación?",
          type: "info",
          showCancelButton: true,
          confirmButtonClass: "btn-primary",
          confirmButtonText: "Continuar",
          closeOnConfirm: false
          },
          function(isConfirm) {
          if (isConfirm) {

            if ( puntaje_maximo >= 61 ) {
              swal("Revise los puntajes",
              "EL resultado final no puede ser mayor a 60",
              "error");
              $('#btnSave_1').text('Actualizar Evaluación');
              $('#btnSave_1').attr('disabled', false);
              //return false;
            }

            else if ( nombrecompleto == null || nombrecompleto == '' ) {
              swal("Revise datos del postulante",
              "Recuerde validar el dni ingresado del postulante",
              "error");
              $('#btnSave_1').text('Actualizar Evaluación');
              $('#btnSave_1').attr('disabled', false);
              //return false;
            }

            else if ( num_cas == null || num_cas == '' ) {
              swal("Revise datos del CAS",
              "Recuerde validar código de verificación del CAS",
              "error");
              $('#btnSave_1').text('Actualizar Evaluación');
              $('#btnSave_1').attr('disabled', false);
              //return false;
            }

            else {
              $.ajax({
              url: url,
              type: "POST",
              data: { 
              dni_docente: dni_docente,
              a_1: $('#a_1_1').val(),
              a_2: $('#a_2_1').val(),
              a_3: $('#a_3_1').val(),
              suma_a: $('#suma_a_1').val(),

              b_1: $('#b_1_1').val(),
              b_2: $('#b_2_1').val(),
              b_3: $('#b_3_1').val(),
              suma_b: $('#suma_b_1').val(),

              c_1: $('#c_1_1').val(),
              c_2: $('#c_2_1').val(),
              c_3: $('#c_3_1').val(),
              c_4: $('#c_4_1').val(),
              c_5: $('#c_5_1').val(),
              c_6: $('#c_6_1').val(),
              suma_c: $('#suma_c_1').val(),

              input_suma_final: $('#input_suma_final_1').val(),

              obs: $('#input_obse_1').val(),

              valor_condicion : $("#input_condicion_1").val(),
              input_codigo_convocatoria : $("#input_codigo_convocatoria_1").val(),
              input_num_cas : $("#input_num_cas_1").val(),
              input_descripcion_cas : $("#input_descripcion_cas_1").val(),
              IDpostulante : $("#IDpostulante_1").val(),

              uno_selectaa : $("#uno_selectaa").val(),
              uno_selectbb : $("#uno_selectbb").val(),
              uno_selectcc : $("#uno_selectcc").val(),
              uno_selectdd : $("#uno_selectdd").val()

              },
              dataType: "JSON",
              success: function (data)
              {
                  if (data.status) {
                      swal("Correcto", "Evaluación curricular modificada correctamente", "success");
                      $('#btnSave_1').text('Actualizar Evaluación');
                      $('#btnSave_1').attr('disabled', false);
                      $('.form-group').removeClass('has-error'); // clear error class
                      $('.form-group').removeClass('has-error'); // clear error class
                      $('.help-block').empty(); // clear error string
                      //limpiar();
                      reload_table_usuario();
                      $('#modal_form_uno').modal('hide');
                  } else {
                      for (var i = 0; i < data.inputerror.length; i++) {
                          $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error');
                          $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]);
                      }

                      /**/
                      swal("Revise sus datos ingresados de la evaluación", "", "error");
                      $('#btnSave_1').text('Actualizar Evaluación');
                      $('#btnSave_1').attr('disabled', false);
                      return false;
                  }
                  
                 
              },
              error: function (jqXHR, textStatus, errorThrown)
                  {
                      alert('Error adding / update data');
                      $('#btnSave_1').text('Actualizar Evaluación');
                      $('#btnSave_1').attr('disabled', false);
                  }
              });
            }
          
              

          } else {
              //swal("Cancelled", "Your imaginary file is safe :)", "error");
              $('#btnSave_1').text('Actualizar Evaluación');
              $('#btnSave_1').attr('disabled', false);
              return false;
          }
          });
          }

         // FICHA 2

         function guardar_evaluacion_tecnico(){
          $('#btnSave_2').text('Modificando...');
          $('#btnSave_2').attr('disabled', true);

          var dni_docente = $("#dni_docente_2").val();
          var nombrecompleto = $('#input_nombre_completo_2').val();
          var num_cas = $('#input_num_cas_2').val();

          var puntaje_maximo = $("#input_suma_final_2").val();

          var url;
          url = baseurl + 'tecnico/modificar_evaluacion_tecnico';

          swal({
          title: "¿Desea actualizar la evaluación?",
          type: "info",
          showCancelButton: true,
          confirmButtonClass: "btn-primary",
          confirmButtonText: "Continuar",
          closeOnConfirm: false
          },
          function(isConfirm) {
          if (isConfirm) {

            if ( puntaje_maximo == '' || puntaje_maximo >= 21) {
              swal("Revise los puntajes",
              "EL resultado final no puede estar vacio o ser mayor a 20",
              "error");
              $('#btnSave_2').text('Registrar Evaluación');
              $('#btnSave_2').attr('disabled', false);
              //return false;
            }

            else if ( nombrecompleto == null || nombrecompleto == '' ) {
              swal("Revise datos del postulante",
              "Recuerde validar el dni ingresado del postulante",
              "error");
              $('#btnSave_2').text('Actualizar Evaluación');
              $('#btnSave_2').attr('disabled', false);
              //return false;
            }

            else if ( num_cas == null || num_cas == '' ) {
              swal("Revise datos del CAS",
              "Recuerde validar código de verificación del CAS",
              "error");
              $('#btnSave_2').text('Actualizar Evaluación');
              $('#btnSave_2').attr('disabled', false);
              //return false;
            }

            else {
              $.ajax({
              url: url,
              type: "POST",
              data: { 
              dni_docente: dni_docente,

              input_suma_final: $('#input_suma_final_2').val(),

              obs: $('#input_obse_2').val(),

              valor_condicion : $("#input_condicion_2").val(),
              input_codigo_convocatoria : $("#input_codigo_convocatoria_2").val(),
              input_num_cas : $("#input_num_cas_2").val(),
              input_descripcion_cas : $("#input_descripcion_cas_2").val(),
              IDpostulante : $("#IDpostulante_2").val()
              },
              dataType: "JSON",
              success: function (data)
              {
                  if (data.status) {
                      swal("Correcto", "Evaluación de examen técnico modificada correctamente", "success");
                      $('#btnSave_2').text('Actualizar Evaluación');
                      $('#btnSave_2').attr('disabled', false);
                      $('.form-group').removeClass('has-error'); // clear error class
                      $('.form-group').removeClass('has-error'); // clear error class
                      $('.help-block').empty(); // clear error string
                      //limpiar();
                      reload_table_usuario();
                      $('#modal_form_dos').modal('hide');
                  } else {
                      for (var i = 0; i < data.inputerror.length; i++) {
                          $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error');
                          $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]);
                      }

                      /**/
                      swal("Revise sus datos ingresados de la evaluación", "", "error");
                      $('#btnSave_2').text('Actualizar Evaluación');
                      $('#btnSave_2').attr('disabled', false);
                      return false;
                  }
                  
                 
              },
              error: function (jqXHR, textStatus, errorThrown)
                  {
                      alert('Error adding / update data');
                      $('#btnSave_2').text('Actualizar Evaluación');
                      $('#btnSave_2').attr('disabled', false);
                  }
              });
            }
          
              

          } else {
              //swal("Cancelled", "Your imaginary file is safe :)", "error");
              $('#btnSave_2').text('Actualizar Evaluación');
              $('#btnSave_2').attr('disabled', false);
              return false;
          }
          });
          }

          // FICHA 3
          function guardar_evaluacion_entrevista_final(){
          $('#btnSave_final').text('Guardando...');
          $('#btnSave_final').attr('disabled', true);

          var dni_docente = $("#dni_docente").val();
          var nombrecompleto = $('#input_nombre_completo').val();
          var num_cas = $('#input_num_cas').val();

          var puntaje_maximo = $("#input_suma_final").val();
          swal({
          title: "¿Desea registrar la evaluación?",
          type: "info",
          showCancelButton: true,
          confirmButtonClass: "btn-primary",
          confirmButtonText: "Continuar",
          closeOnConfirm: false
          },
          function(isConfirm) {
          if (isConfirm) {

            if ( puntaje_maximo >= 41 ) {
              swal("Revise los puntajes",
              "EL resultado final no puede ser mayor a 40",
              "error");
              $('#btnSave_final').text('Actualizar Evaluación');
              $('#btnSave_final').attr('disabled', false);
            }

            else if ( nombrecompleto == null || nombrecompleto == '' ) {
              swal("Revise datos del postulante",
              "Recuerde validar el dni ingresado del postulante",
              "error");
              $('#btnSave_final').text('Actualizar Evaluación');
              $('#btnSave_final').attr('disabled', false);
            }

            else if ( num_cas == null || num_cas == '' ) {
              swal("Revise datos del CAS",
              "Recuerde validar código de verificación del CAS",
              "error");
              $('#btnSave_final').text('Actualizar Evaluación');
              $('#btnSave_final').attr('disabled', false);
            }

            else {
                    var url2;
                    url2 = baseurl + 'entrevista/modificar_evaluacion_entrevista_final';
                    $.ajax({
                    url: url2,
                    type: "POST",
                    data: { 
                    dni_docente: dni_docente,
                    uno_selecta: $('#uno_selecta').val(),
                    uno_selectb: $('#uno_selectb').val(),
                    uno_selectc: $('#uno_selectc').val(),
                    uno_selectd: $('#uno_selectd').val(),
                    suma_a: $('#suma_a').val(),

                    dos_selecta: $('#dos_selecta').val(),
                    dos_selectb: $('#dos_selectb').val(),
                    dos_selectc: $('#dos_selectc').val(),
                    suma_b: $('#suma_b').val(),

                    tres_selecta: $('#tres_selecta').val(),
                    tres_selectb: $('#tres_selectb').val(),
                    tres_selectc: $('#tres_selectc').val(),
                    suma_c: $('#suma_c').val(),

                    input_suma_final: $('#input_suma_final').val(),

                    obs: $('#input_obse').val(),

                    valor_condicion : $("#input_condicion").val(),
                    input_codigo_convocatoria : $("#input_codigo_convocatoria").val(),
                    IDpostulante : $("#IDpostulante_final").val()
                    },
                    dataType: "JSON",
                    success: function (data)
                    {
                        if (data.status) {
                            swal("Correcto", "Evaluación de entrevista final registrada correctamente", "success");
                            $('#btnSave_final').text('Registrar Evaluación');
                            $('#btnSave_final').attr('disabled', false);
                            $('.form-group').removeClass('has-error'); // clear error class
                            $('.form-group').removeClass('has-error'); // clear error class
                            $('.help-block').empty(); // clear error string
                            reload_table_usuario();
                            $('#modal_form_tres').modal('hide');
                        } else {
                            for (var i = 0; i < data.inputerror.length; i++) {
                                $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error');
                                $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]);
                            }

                            /**/
                            swal("Revise sus datos ingresados de la evaluación", "", "error");
                            $('#btnSave_final').text('Registrar Evaluación');
                            $('#btnSave_final').attr('disabled', false);
                            return false;
                        }
                        
                       
                    },
                    error: function (jqXHR, textStatus, errorThrown)
                        {
                            alert('Error adding / update data');
                            $('#btnSave_final').text('Registrar Evaluación');
                            $('#btnSave_final').attr('disabled', false);
                        }
                    });
            }

          } else {
              //swal("Cancelled", "Your imaginary file is safe :)", "error");
              $('#btnSave_final').text('Registrar Evaluación');
              $('#btnSave_final').attr('disabled', false);
              return false;
          }
          });
          }



          /* ---------------- */

         function pdf_ev_curricular(id, idconvocatoria, idpostulante)
         {
         var win = window.open(
         '<?php echo base_url(); ?>entrevista/reporte_ev_curricular_pdf?conv=' + id + '&idconvocatoria=' + idconvocatoria + '&idpostulante=' + idpostulante,
                                               '_blank' // <- This is what makes it open in a new window.
               );
            win.focus();
         }


         function pdf_ev_tecnica(id, idconvocatoria, idpostulante)
         {
         var win = window.open(
         '<?php echo base_url(); ?>entrevista/reporte_ev_tecnica_pdf?conv=' + id + '&idconvocatoria=' + idconvocatoria + '&idpostulante=' + idpostulante,
                                               '_blank' // <- This is what makes it open in a new window.
               );
            win.focus();
         }

         function pdf_ev_final(id, idconvocatoria, idpostulante)
         {
         var win = window.open(
         '<?php echo base_url(); ?>entrevista/reporte_ev_final_pdf?conv=' + id + '&idconvocatoria=' + idconvocatoria + '&idpostulante=' + idpostulante,
                                               '_blank' // <- This is what makes it open in a new window.
               );
            win.focus();
         }
         
      </script>
   </body>
</html>