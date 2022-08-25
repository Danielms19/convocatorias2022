<!DOCTYPE html>
<html>
   <head>
      <meta charset="utf-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge">
      <title> 
      Examen Técnico </title>
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
  href="<?php echo base_url(); ?>dist/css/sweetalert.css">
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
                                    FICHA DE EXAMEN TÉCNICO 
                                 </h1>
                              </section>
                              <form action="#" id="form_evaluacion_entrevista_tecnica" method="POST">
                                 <div class="col-md-12">
                                    <div class="box box-solid box-primary" style="border: 1px solid #373953 !important;">
                                       <div class="box-header with-border" style="background-color: #373953 !important;">
                                          <h3 class="box-title" style="padding-top: 5px; font-weight: bold;"> Datos Personales </h3>
                                          <input type="hidden" id="IDpostulante" name="IDpostulante" style="color: black">
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
                                                   <label for="input_codigo_convocatoria"> Código de convocatoria <span style="font-size: 18px ; font-weight: bold;color: red">*
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
                                                   <input type="text" class="form-control fi" id="input_suma_final" name="input_suma_final" maxlength="3" style="font-weight:bold;color: #367FA9; text-transform: uppercase; font-size: 20px; text-align: center;" value="">
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
                                    <button type="button" id="btnSave" onclick="guardar_evaluacion_tecnico()"
                                       class="btn btn-primary"><i class="fa fa-check"></i>  Registrar Evaluación </button>
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
      src="<?php echo base_url(); ?>plugins/jquerynumeric/jquery.numeric.js"></script>

      <script src="<?php echo base_url(); ?>dist/js/sweetalert.js"></script>

      <script src="<?php echo base_url(); ?>dist/js/app.min.js"></script>
      <script src="<?php echo base_url(); ?>dist/js/vista.js"></script>
      <script type="text/javascript"> 

        $( document ).ready(function() {
        $("#input_condicion").val('DESAPROBADO');
        $("#input_condicion").css("color", "#D73925");
      });

      var baseurl = "<?php echo base_url(); ?>";
      var ciCsrfToken = "<?php echo $this->security->get_csrf_hash(); ?>";

      $('.fi').keyup(function() {
      var importe_total_s = 0

       importe_total_s = $("#input_suma_final").val();

       if ( importe_total_s >= 11  ) {
         $("#input_condicion").val('APROBADO');
         $("#input_condicion").css("color", "#008D4C");
       }
       else {
         $("#input_condicion").val('DESAPROBADO');
         $("#input_condicion").css("color", "#D73925");
       }
       
     });

         
         
         function limpiar() {
            $("#form_evaluacion_entrevista_tecnica")[0].reset();
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

      $("#input_suma_final").numeric({decimal: false, negative: false},
        function () {
            this.value = '';
            this.focus();
        });

      $("#input_codigo_convocatoria").numeric({decimal: false, negative: false},
        function () {
            this.value = '';
            this.focus();
        });

  function guardar_evaluacion_tecnico(){
    $('#btnSave').text('Guardando...');
    $('#btnSave').attr('disabled', true);

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

      if ( puntaje_maximo == '' || puntaje_maximo >= 21) {
        swal("Revise los puntajes",
        "EL resultado final no puede estar vacio o ser mayor a 20",
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

      else {
        var url;
        url = baseurl + 'tecnico/verificar_si_existe_registro';
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
              url2 = baseurl + 'tecnico/agregar_evaluacion_tecnico';
              $.ajax({
              url: url2,
              type: "POST",
              data: { 
              dni_docente: dni_docente,

              input_suma_final: $('#input_suma_final').val(),

              obs: $('#input_obse').val(),

              valor_condicion : $("#input_condicion").val(),
              input_codigo_convocatoria : $("#input_codigo_convocatoria").val(),
              input_num_cas : $("#input_num_cas").val(),
              input_descripcion_cas : $("#input_descripcion_cas").val(),
              IDpostulante : $("#IDpostulante").val()
              },
              dataType: "JSON",
              success: function (data)
              {
                  if (data.status) {
                      swal("Correcto", "Evaluación de examen técnico registrado correctamente", "success");
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