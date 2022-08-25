<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title> Evaluación Curricular </title>
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
	href="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker-bs3.css">
<link rel="stylesheet"
	href="<?php echo base_url(); ?>plugins/datepicker/datepicker3.css">
<link rel="stylesheet"
	href="<?php echo base_url(); ?>plugins/select2/select2.min.css">
<!-- InputUpload -->
<link rel="stylesheet"
	href="<?php echo base_url(); ?>plugins/inputUpload/css/fileinput.min.css"
	media="all" type="text/css" />
<!-- Theme style -->
<link rel="stylesheet"
	href="<?php echo base_url(); ?>dist/css/AdminLTE.min.css">
<!-- AdminLTE Skins. Choose a skin from the css/skins
			 folder instead of downloading all of them to reduce the load. -->
<link rel="stylesheet"
	href="<?php echo base_url(); ?>dist/css/skins/_all-skins.min.css">

  <link rel="stylesheet"
  href="<?php echo base_url(); ?>dist/css/sweetalert.css">


<link rel="icon" type="image/png"
	href="<?php echo base_url(); ?>dist/img/favicon.ico" />
<style>
    form .form-group {
    	margin-bottom: 8px;
    }

		#sig-canvas {
			border: 2px dotted #CCCCCC;
			border-radius: 5px;
			cursor: crosshair;
		}
		#sig-dataUrl {
			width: 100%;
		}

    .text-muted {
      color: #D73925;
      font-weight: bold;
    }

</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
        <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
</head>
<body class="hold-transition skin-blue layout-top-nav">
	<div class="wrapper">
	
	<?php $this->load->view('layout/_menu'); ?>

		<!-- Content Wrapper. Contains page content -->
		<div class="content-wrapper">
		
		<div class="container">
		
			<!-- Content Header (Page header) -->
			<!-- Main content -->
			<section class="content">
				   <div class="row">
        <div class="col-md-12">
          <div class="box box-solid">
            <div class="box-body">
              <section class="content-header">
                <h1 style="font-family: 'Fjalla One', sans-serif; text-align: center; padding-bottom: 15px;">
               FICHA DE EVALUACIÓN CURRICULAR 
               </h1>
             </section>

 <form action="#" id="form_evaluacion_curricular" method="POST"> 
 
             <div class="col-md-12">
              <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                <div class="box-header with-border" style="background-color: #373953 !important;">
                  <h3 class="box-title" style="padding-top: 5px; font-weight: bold;"> Datos Personales </h3> <input type="hidden" id="IDpostulante" name="IDpostulante" style="color: black">
                  <a class="btn btn-sm btn-danger pull-right" onclick="limpiar()"
                  id="limpiar_datos_docente"> <i class="fa fa-arrow-down">
                  </i> Reiniciar Evaluación </a>

                </div>
                <div class="box-body">
                  <div class="col-md-12">
                    <div class="col-md-6 col-sm-6">
                    <div class="form-group">
                      <label for="dni_docente"> DNI ( OBLIGATORIO ) <span style="font-size: 18px ; font-weight: bold;color: red">*
                            </span></label>
                       <div class="input-group">
                            <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="dni_docente" id="dni_docente" type="text" class="form-control" placeholder="Ingrese dni del postulante" autocomplete="off">
                            <span class="input-group-btn">
                                <button id="btn_docente" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" onclick="validar_dni()"> BUSCAR</button>
                            </span>
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
                      <label for="input_codigo_convocatoria"> CÓDIGO DE CONVOCATORIA <span style="font-size: 18px ; font-weight: bold;color: red">*
                            </span></label>
                       <div class="input-group">
                            <input maxlength="9" style="font-weight: bold; color: #D73925; font-size: 20px;" data-minlength="1" name="input_codigo_convocatoria" id="input_codigo_convocatoria" type="text" class="form-control" placeholder="Ingrese codigo de la convocatoria" autocomplete="off">
                            <span class="input-group-btn">
                                <button id="btn_docente_2" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown" onclick="validar_codigo_convocatoria()"> BUSCAR</button>
                            </span>
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
                      <label for="input_descripcion_cas"> DESCRIPCIÓN DEL PUESTO CAS </label>
                      <input type="text" required="" autocomplete="off" class="form-control" id="input_descripcion_cas" name="input_descripcion_cas" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
                    </div>
                  </div>
                  </div>
                  
                  <div class="col-md-12">
                    <div class="col-md-6 col-sm-6">
                    <div class="form-group">
                      <label for="input_evaluador" style="color: #DE2017; font-weight: bold;"> EVALUADOR </label>
                      <input value="<?php echo $user ?>" type="text" required="" autocomplete="off" maxlength="9" class="form-control" id="input_evaluador" name="input_evaluador" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;font-size: 20px;"> <span class="help-block"></span>
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
            <table id="" class="table table-bordered table-condensed table-hover responsive"
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
                <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="a_1" name="a_1" class="fi amta" maxlength="5"><span class="help-block"></span> </td>
                <td rowspan="13" style="padding-top: 190px; font-weight: bold;" rowspan="13"> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;"  placeholder="25" id="suma_a" name="suma_a" readonly=""> </td>
              </tr>
              <tr>
                <td style="text-align: left; padding-left: 90px;">  Cuenta con 1 grado superior al mínimo requerido </td>
                <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="20" id="a_2" name="a_2" autocomplete="off" class="fi amta"> </td>
              </tr>
              <tr>
                <td style="text-align: left; padding-left: 90px;">  Cuenta con 2 o más grados superiores al mínimo requerido </td>
                <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="25" id="a_3" name="a_3" autocomplete="off" class="fi amta"> </td>
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
                  <table id="" class="table table-bordered table-condensed table-hover responsive"
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
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="b_1" name="b_1" class="fi bmta" maxlength="5"><span class="help-block"></span> </td>
                        <td rowspan="13" style="padding-top: 190px; font-weight: bold;" rowspan="13"> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;"  placeholder="17" id="suma_b" name="suma_b" readonly=""> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;">  Tiene 2 años adicionales al mínimo requerido </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="16" id="b_2" name="b_2" autocomplete="off" class="fi bmta"> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;">  Tiene de 4 a más años adicionales al mínimo requerido </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="17" id="b_3" name="b_3" autocomplete="off" class="fi bmta"> </td>
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
                <table id="" class="table table-bordered table-condensed table-hover responsive"
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
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="c_1" name="c_1" class="fi cmta" maxlength="5"><span class="help-block"></span> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;"> Tiene 2 años adicionales al mínimo requerido </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="16" id="c_2" name="c_2" autocomplete="off" class="fi cmta"> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;"> Tiene de 4 a más años adicionales al mínimo requerido </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="18" id="c_3" name="c_3" autocomplete="off" class="fi cmta"> </td>
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
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" autocomplete="off" id="c_4" name="c_4" class="fi cmta" maxlength="5"><span class="help-block"></span> </td>
                        <td rowspan="13" style="padding-top: 190px; font-weight: bold;" rowspan="13"> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;"  placeholder="18" id="suma_c" name="suma_c" readonly=""> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;"> Tiene 2 años adicionales al mínimo requerido </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="16" id="c_5" name="c_5" autocomplete="off" class="fi cmta"> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;"> Tiene de 4 a más años adicionales al mínimo requerido </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="18" id="c_6" name="c_6" autocomplete="off" class="fi cmta"> </td>
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
                               <select name="uno_selecta" id="uno_selecta" class="form-control selecta uno_select">
                                  <option value="">----SELECCIONE----</option>
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                         <tr>
                            <td style="padding-top: 30px; font-weight: bold;"> cumple con el segundo Cursos y/o Estudios de Especialización </td>
                            <td style="padding-top: 30px; font-weight: bold;">
                               <select name="uno_selectb" id="uno_selectb" class="form-control selecta uno_select">
                                  <option value="">----SELECCIONE----</option>
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                         <tr>
                            <td style="padding-top: 30px; font-weight: bold;"> cumple con el tercer Cursos y/o Estudios de Especialización </td>
                            <td style="padding-top: 30px; font-weight: bold;">
                               <select name="uno_selectc" id="uno_selectc" class="form-control selecta uno_select">
                                  <option value="">----SELECCIONE----</option>
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                         <tr>
                            <td style="padding-top: 30px; font-weight: bold;"> cumple con el cuarto Cursos y/o Estudios de Especialización </td>
                            <td style="padding-top: 30px; font-weight: bold;">
                               <select name="uno_selectd" id="uno_selectd" class="form-control selecta uno_select">
                                  <option value="">----SELECCIONE----</option>
                                  <option value="CUMPLE">CUMPLE</option>
                                  <option value="NO CUMPLE">NO CUMPLE</option>
                               </select>
                            </td>
                         </tr>
                      </tbody>
                   </table>
                </div>
             </div>

          <!-- <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
              <div class="box-header" style="background-color: #373953 !important;">
                <h3 class="box-title" style="font-weight: bold;">
                  <i class="fa fa-check-circle"></i>  Cursos y/o Estudios de Especialización (****)
                </h3>

              </div>
              <div class="box-body">
                <table id="" class="table table-bordered table-condensed table-hover responsive"
                    cellspacing="0" width="100%" style="font-size: 18px;">
                    <thead>
                      <tr>
                        <th colspan="2" > Aspecto a Evalular </th>
                        <th style="width: 120px;"> Puntaje </th>
                        <th style="width: 100px;"> Puntaje Acumulado  </th>
                      </tr>
                    </thead>
                    <tbody>
                      <tr>
                        <td rowspan="13" style="padding-top: 190px; font-weight: bold;"> Cursos y/o Estudios de Especialización </td>
                        <td style="text-align: left; padding-left: 90px;">  </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="20" autocomplete="off" id="d_1" name="d_1" class="fi dmta" maxlength="5"><span class="help-block"></span> </td>
                        <td rowspan="13" style="padding-top: 190px; font-weight: bold;" rowspan="13"> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #DD4B39; border-radius: 5px; border: 1px solid #DD4B39;"  placeholder="50" id="suma_d" name="suma_d" readonly=""> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;">  </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="20" id="d_2" name="d_2" autocomplete="off" class="fi dmta"> </td>
                      </tr>
                      <tr>
                        <td style="text-align: left; padding-left: 90px;">  </td>
                        <td> <input type="text" size="7" style="font-weight: bold; text-align: center; color: #3879D9;"  placeholder="15" id="d_3" name="d_3" autocomplete="off" class="fi dmta"> </td>
                      </tr>
                    </tbody>
                  </table>
           </div>

                
                
         </div> -->

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
            <h3 class="box-title"> Condición Obtenida </h3>
          </div>
          <div class="box-body">
            <div class="form-group" style="margin: 0 20px;">
              <input type="text" class="form-control" id="input_condicion" name="input_condicion" style="font-weight:bold;text-transform: uppercase; font-size: 20px; text-align: center;" readonly="">
            </div>          
          </div>
        </div>
      </div>

      <div class="col-md-12 col-sm-6">
        <div class="form-group">
          <label for="input_email"> Correo electrónico </label>
          <input type="text" required="" autocomplete="off" class="form-control" id="input_email" name="input_email" disabled="" style="font-weight:bold;color: #367FA9; text-transform: uppercase; border: 1px solid #373953 !important;"> <span class="help-block"></span>
        </div>
      </div>

    </div>

  <div class="modal-footer" id="modal_footer">
    <button style="margin-top: 25px;" type="button" id="btnSave" onclick="guardar_evaluacion_curricular()"
    class="btn btn-primary"><i class="fa fa-check"></i>  Registrar Evaluación </button>

    <!-- <input type="button" value="limpiar" class="btn btn-danger click-here" id="resetear"> -->
<!--     <button type="" class="btn btn-danger" data-dismiss="modal">Cancelar</button> -->

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


	</div>

<script
		src="<?php echo base_url(); ?>plugins/jQuery/jQuery-2.1.4.min.js"></script>
	<script src="<?php echo base_url(); ?>bootstrap/js/bootstrap.min.js"></script>

	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.10.2/moment.min.js"></script>

	<script src="<?php echo base_url(); ?>dist/js/app.min.js"></script>

  <script
src="<?php echo base_url(); ?>plugins/jquerynumeric/jquery.numeric.js"></script>

<script src="<?php echo base_url(); ?>dist/js/sweetalert.js"></script>

	<script src="<?php echo base_url(); ?>dist/js/vista.js"></script>

	<script type="text/javascript">

  $( document ).ready(function() {
    $("#input_condicion").val('NO APTO');
    $("#input_condicion").css("color", "#D73925");
  });

  var baseurl = "<?php echo base_url(); ?>";
  var ciCsrfToken = "<?php echo $this->security->get_csrf_hash(); ?>";

//sumar todos los imput del bloque A que tengan la clase amta
  $('.amta').keyup(function() {
    var importe_total_2 = 0
    $(".amta").each(
      function(index, value) {
        if ( $.isNumeric( $(this).val() ) ){
          importe_total_2 = importe_total_2 + eval($(this).val());

        }
      }
      );
    $("#suma_a").val(importe_total_2.toFixed(2));
  });
  
  //sumar todos los imput del bloque B que tengan la clase bmta
  $('.bmta').keyup(function() {
    var importe_total_2 = 0
    $(".bmta").each(
      function(index, value) {
        if ( $.isNumeric( $(this).val() ) ){
          importe_total_2 = importe_total_2 + eval($(this).val());

        }
      }
      );
    $("#suma_b").val(importe_total_2.toFixed(2));
  });
  
  
  //sumar todos los imput del bloque C que tengan la clase cmta
  $('.cmta').keyup(function() {
    var importe_total_2 = 0
    $(".cmta").each(
      function(index, value) {
        if ( $.isNumeric( $(this).val() ) ){
          importe_total_2 = importe_total_2 + eval($(this).val());

        }
      }
      );
    $("#suma_c").val(importe_total_2.toFixed(2));
  });
 


  $('.fi').keyup(function() {
    var importe_total_s = 0
    $(".fi").each(
      function(index, value) {
        if ( $.isNumeric( $(this).val() ) ){
          importe_total_s = importe_total_s + eval($(this).val());
        }
      }
      );
//    $("#input_suma_total").val(importe_total_s.toFixed(2));

    $("#input_suma_final").val(importe_total_s.toFixed(2));

    if ( importe_total_s.toFixed(2) >= 45  ) {
      $("#input_condicion").val('APTO');
      $("#input_condicion").css("color", "#008D4C");
    }
    else {
      $("#input_condicion").val('NO APTO');
      $("#input_condicion").css("color", "#D73925");
    }
    
  });


function limpiar() {
    $("#form_evaluacion_curricular")[0].reset();
    $('#dni_docente').prop('disabled', false);
    $('#btn_docente').prop('disabled', false);

    $('#input_codigo_convocatoria').prop('disabled', false);
    $('#btn_docente_2').prop('disabled', false);
}

function validar_dni() {
    var dni = document.getElementById('dni_docente').value;
    if (dni.length >= 8) {
      $('#input_nombre_completo').val('');
      //$('#input_nombre_completo').prop('disabled', false);
      var tipodoc = 1;
      $.ajax({
        url: '<?php echo base_url(); ?>postulaciones/verificar_dni',
        type: 'post',
        data: {tipodoc: tipodoc, numdoc: dni},
        dataType: 'json',
        success: function (data) {

          // si existe un registro trae los valores y mantiene bloqueado el input
          if (data != null) {
            $('#input_nombre_completo').prop('disabled', true);
            $('#btn_docente').prop('disabled', true);
            $('#input_nombre_completo').val(data[0]['nombre_completo']);
            $('#input_telefono').val(data[0]['celular']);
            $('#input_email').val(data[0]['email']);
            $('#IDpostulante').val(data[0]['IDpostulante']);
            $('#dni_docente').prop('disabled', true);
          } else {
            // si no encuentra nada procede a liberar el input para poder digitar otro dni
            $('#dni_docente').prop('disabled', false);
            $('#btn_docente').prop('disabled', false);
          }
        }
      });
    }
};

function validar_codigo_convocatoria() {
    var codigo_verificacion = document.getElementById('input_codigo_convocatoria').value;
    if (codigo_verificacion.length >= 1) {
      $('#input_num_cas').val('');
      $('#input_descripcion_cas').val('');
      var tipodoc = 1;
      $.ajax({
        url: '<?php echo base_url(); ?>postulaciones/verificar_codigo_postulacion',
        type: 'post',
        data: {tipodoc: tipodoc, codigo_verificacion: codigo_verificacion},
        dataType: 'json',
        success: function (data) {

          // si existe un registro trae los valores y mantiene bloqueado el input
          if (data != null) {
            $('#input_num_cas').prop('disabled', true);
            $('#btn_docente_2').prop('disabled', true);
            $('#IDconvocatoria').val(data[0]['IDconvocatoria']);
            $('#input_num_cas').val(data[0]['numero']);
            $('#input_descripcion_cas').val(data[0]['asuntoContrato']);
            $('#input_codigo_convocatoria').prop('disabled', true);
          } else {
            // si no encuentra nada procede a liberar el input para poder digitar otro dni
            $('#input_codigo_convocatoria').prop('disabled', false);
            $('#btn_docente_2').prop('disabled', false);
          }
        }
      });
    }
};

  $("#dni_docente").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });

  $("#input_codigo_convocatoria").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
 

  $("#a_1").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });

  $("#a_2").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });

  $("#a_3").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });

  $("#b_1").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
  $("#b_2").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
  $("#b_3").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });

  $("#c_1").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
  $("#c_2").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
  $("#c_3").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
  $("#c_4").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
  $("#c_5").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });
  $("#c_6").numeric({decimal: false, negative: false},
    function () {
        this.value = '';
        this.focus();
    });

  function guardar_evaluacion_curricular(){
    $('#btnSave').text('Guardando...');
    $('#btnSave').attr('disabled', true);

    var dni_docente = $("#dni_docente").val();
    var nombrecompleto = $('#input_nombre_completo').val();
    var num_cas = $('#input_num_cas').val();

    var puntaje_maximo = $("#input_suma_final").val();

    var uno_selectaaa = $("#uno_selecta").val();
    var uno_selectabb = $("#uno_selectb").val();
    var uno_selectacc = $("#uno_selectc").val();
    var uno_selectadd = $("#uno_selectd").val();

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

      
      if ( puntaje_maximo >= 61 ) {
        swal("Revise los puntajes",
        "EL resultado final no puede ser mayor a 60",
        "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
      }

      else if ( nombrecompleto == null || nombrecompleto == '' ) {
        swal("Revise datos del postulante",
        "Recuerde validar el dni ingresado del postulante",
        "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
      }

      else if ( num_cas == null || num_cas == '' ) {
        swal("Revise datos del CAS",
        "Recuerde validar código de verificación del CAS",
        "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
      }

      else if ( uno_selectaaa == null || uno_selectaaa == '' ) {
        swal("Revise si cumple los requisitos",
        "Recuerde revisar los curso y/o estudios de Especialización",
        "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
      }

      else if ( uno_selectabb == null || uno_selectabb == '' ) {
        swal("Revise si cumple los requisitos",
        "Recuerde revisar los curso y/o estudios de Especialización",
        "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
      }

      else if ( uno_selectacc == null || uno_selectacc == '' ) {
        swal("Revise si cumple los requisitos",
        "Recuerde revisar los curso y/o estudios de Especialización",
        "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
      }

      else if ( uno_selectadd == null || uno_selectadd == '' ) {
        swal("Revise si cumple los requisitos",
        "Recuerde revisar los curso y/o estudios de Especialización",
        "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
      }



      else {
        var url;
        //url = baseurl + 'postulaciones/agregar_evaluacion_curricular';
        url = baseurl + 'curricular/verificar_si_existe_registro';
        $.ajax({
        url: url,
        type: "GET",
        data: { 
        dni_docente: dni_docente,
        input_codigo_convocatoria : $("#input_codigo_convocatoria").val(),
        IDpostulante : $("#IDpostulante").val()
        },
        dataType: "JSON",
        success: function (data)
        {
            if ( data != null ) {
                swal("Este postulante ya cuenta con una evaluación en esta convocatoria seleccionada", "", "error");
                $('#btnSave').text('Registrar Evaluación');
                $('#btnSave').attr('disabled', false);
                return false;
            }
            
            // si no existe una evaluacion registrada
            else if ( data == null ){
              var url2;
              url2 = baseurl + 'postulaciones/agregar_evaluacion_curricular';
              $.ajax({
              url: url2,
              type: "POST",
              data: { 
              dni_docente: dni_docente,
              a_1: $('#a_1').val(),
              a_2: $('#a_2').val(),
              a_3: $('#a_3').val(),
              suma_a: $('#suma_a').val(),

              b_1: $('#b_1').val(),
              b_2: $('#b_2').val(),
              b_3: $('#b_3').val(),
              suma_b: $('#suma_b').val(),

              c_1: $('#c_1').val(),
              c_2: $('#c_2').val(),
              c_3: $('#c_3').val(),
              c_4: $('#c_4').val(),
              c_5: $('#c_5').val(),
              c_6: $('#c_6').val(),
              suma_c: $('#suma_c').val(),

              input_suma_final: $('#input_suma_final').val(),

              obs: $('#input_obse').val(),

              valor_condicion : $("#input_condicion").val(),
              input_codigo_convocatoria : $("#input_codigo_convocatoria").val(),
              input_num_cas : $("#input_num_cas").val(),
              input_descripcion_cas : $("#input_descripcion_cas").val(),
              IDpostulante : $("#IDpostulante").val(),

              uno_selecta: $('#uno_selecta').val(),
              uno_selectb: $('#uno_selectb').val(),
              uno_selectc: $('#uno_selectc').val(),
              uno_selectd: $('#uno_selectd').val(),

              },
              dataType: "JSON",
              success: function (data)
              {
                  if (data.status) {
                      swal("Correcto", "Evaluación curricular registrada correctamente", "success");
                      $('#btnSave').text('Registrar Evaluación');
                      $('#btnSave').attr('disabled', false);
                      $('.form-group').removeClass('has-error'); // clear error class
                      $('.form-group').removeClass('has-error'); // clear error class
                      $('.help-block').empty(); // clear error string
                      limpiar();
                  } else {
                      for (var i = 0; i < data.inputerror.length; i++) {
                          $('[name="' + data.inputerror[i] + '"]').parent().parent().addClass('has-error');
                          $('[name="' + data.inputerror[i] + '"]').next().text(data.error_string[i]);
                      }

                      /**/
                      swal("Revise sus datos ingresados de la evaluación", "", "error");
                      $('#btnSave').text('Registrar Evaluación');
                      $('#btnSave').attr('disabled', false);
                      return false;
                  }
                  
                 
              },
              error: function (jqXHR, textStatus, errorThrown)
                  {
                      alert('Error adding / update data');
                      $('#btnSave').text('Registrar Evaluación');
                      $('#btnSave').attr('disabled', false);
                  }
              });

            }
        },
        error: function (jqXHR, textStatus, errorThrown)
            {
                alert('Error adding / update data');
                $('#btnSave').text('Registrar Evaluación');
                $('#btnSave').attr('disabled', false);
            }
        });
      }
    } else {
        //swal("Cancelled", "Your imaginary file is safe :)", "error");
        $('#btnSave').text('Registrar Evaluación');
        $('#btnSave').attr('disabled', false);
        return false;
    }
    });
    }
 

</script>

</body>
</html>