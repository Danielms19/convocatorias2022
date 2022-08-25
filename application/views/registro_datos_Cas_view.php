<!DOCTYPE html>
<html style="max-width: 98%" class="no-js css-menubar" lang="en">

<meta http-equiv="content-type" content="text/html;charset=utf-8" />
<!-- /Added by HTTrack -->

<head>
    <meta charset="utf-8">

    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
    <meta name="description" content="bootstrap material admin template">
    <meta name="author" content="">

    <title>CAS NP | UGEL 04</title>

    <link rel="icon" type="image/png" href="<?php echo base_url(); ?>dist/img/favicon.ico" />
    <!-- Stylesheets -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>dist/login/css/bootstrap.min3f0d.css?v2.2.0">
    <link rel="stylesheet" href="<?php echo base_url(); ?>dist/login/css/bootstrap-extend.min3f0d.css?v2.2.0">
    <link rel="stylesheet" href="<?php echo base_url(); ?>dist/login/css/site.min3f0d.css?v2.2.0">
    <!-- Page -->
    <link rel="stylesheet" href="<?php echo base_url(); ?>dist/login/css/login.min3f0d.css?v2.2.0">

    <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker-bs3.css">
    <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/datepicker/datepicker3.css">

    <link rel='stylesheet' href='http://fonts.googleapis.com/css?family=Roboto:400,400italic,700'>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap-glyphicons.css" rel="stylesheet">

    <!--<<link href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/4.1.2/css/bootstrap.min.css" rel="stylesheet">-->

    <style type="text/css">
        .page:before {
            background-image: url('<?php echo base_url(); ?>dist/login/images/login.jpg')
        }

        .swal2-popup {
            transform: scale(1.2);
        }

        table {
            border-collapse: collapse;
        }

        table,
        td,
        th {
            border: 2px solid;
            padding: 20px;
        }

        button_fila {
            color: white;
            font-weight: bold;
            background-color: orange;
            width: 100px;
            height: 25px;
            font-size: 15px;
        }
    </style>
    <!-- Scripts -->
    <script src="<?php echo base_url(); ?>dist/login/js/modernizr.min.js"></script>
    <script src="<?php echo base_url(); ?>dist/login/js/breakpoints.min.js"></script>
    <script>
        Breakpoints();
    </script>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@9"></script>
    <script src="https://cdn.jsdelivr.net/npm/promise-polyfill@7.1.0/dist/promise.min.js"></script>


    <link rel="stylesheet" href="<?php echo base_url(); ?>dist/css/register_sico.css">






</head>



<body style="padding-top: 10px !important" class="fondo_body">



    <div class="container register">

        <div class="container register">
            <div class="row">

                <div style="text-align: center" class="col-md-12  col-lg-12 ">

                    <h3 style="font-size: 30px; color: white; background-color: rgb(219, 58, 33);">CONVOCATORIA</h3>

                    <h3 style="font-size: 24px; color: black">REGISTRO DE DATOS PARA CONVOCATORIA ADMINISTRATIVA DE
                        SERVICIO CAS - NO - PRESENCIAL - 2020</h3>
                </div>
            </div>

            <br><br><br>

            <div class="row">
                <div class=" col-md-12 col-lg-12 ">
                    <div class="row panel panel-primary">
                        <ul class="nav  nav-pills " id="myTab" role="tablist">
                            <li class="nav-item active">
                                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Datos Personales</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Datos Personales</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="anexo-tab" data-toggle="tab" href="#anexo" role="tab" aria-controls="anexo" aria-selected="false">Anexos</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="academico-tab" data-toggle="tab" href="#academico" role="tab" aria-controls="academico" aria-selected="false">Form. Academica</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="capacitaciones-tab" data-toggle="tab" href="#capacitaciones" role="tab" aria-controls="capacitaciones" aria-selected="false">Capacitaciones</a>
                            </li>

                            <li class="nav-item">
                                <a class="nav-link" id="laboral-tab" data-toggle="tab" href="#laboral" role="tab" aria-controls="laboral" aria-selected="false">Exp. Laboral</a>
                            </li>
                        </ul>



                    </div>

                    <form enctype="multipart/form-data" method="post" id="form_pos_cas" data-toggle="validator" role="form">

                        <div class="tab-content">


                            <div class="tab-pane fade in active" id="home" role="tabpanel" aria-labelledby="home-tab">

                                <div class="panel panel-primary">
                                    <div class="panel-heading">

                                        <h3 style="color: white" class="register-heading">SECCIÓN I</h3>
                                    </div>
                                    <div class="panel-body">

                                        <div class="register-form">

                                            <div class="row">


                                                <div class="col-md-12 col-lg-6 form-group">

                                                    <label for="dni_docente"> Código de Convocatoria <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                        </span></label>

                                                    <div class="input-group">

                                                        <input onkeyup="activar_btn_buscar(this.value);" maxlength="5" data-minlength="1" name="dni_docente" id="dni_docente" type="text" class="form-control" placeholder="Ingrese su código de convocatoria" value="">
                                                        <span class="input-group-btn">
                                                            <button id="btn_docente" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> BUSCAR</button>
                                                        </span>
                                                    </div>
                                                    <div style="font-size: 12px" class="help-block with-errors"></div>


                                                </div>


                                                <div class=" col-md-12 col-lg-6 form-group">
                                                    <label for="numero_orden">N° de CAS </label>
                                                    <input disabled="true" id="numero_orden" name="numero_orden" type="text" class="form-control" placeholder="Ingrese su número de orden..." value="" />
                                                </div>


                                            </div>


                                            <div class="row">

                                                <div class="col-md-12 col-lg-12 form-group">

                                                    <label for="dato_cas">Descripción de Contratación Administrativa de
                                                        Servicio - CAS <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                    <input disabled="true" name="dato_cas" id="dato_cas" type="text" class="form-control" placeholder="Ingrese la Descripción de Contratación Administrativa de Servicio - CAS...." value="" />
                                                    <div style="font-size: 12px" class="help-block with-errors"></div>

                                                </div>
                                            </div>


                                            <div class="row">

                                                <div class="col-md-12 col-lg-6 form-group">

                                                    <label for="dni_cas">DNI / C.E <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                    <div class="input-group">

                                                        <input onkeyup="activar_btn_validar(this.value);" maxlength="9" data-minlength="8" name="dni_cas" id="dni_cas" type="text" class="form-control" placeholder="Ingrese su DNI/C.E...." value="" />
                                                        <span class="input-group-btn">
                                                            <button id="btn_validar" type="button" class="btn btn-primary dropdown-toggle" data-toggle="dropdown"> VALIDAR</button>
                                                        </span>
                                                    </div>
                                                    <div style="font-size: 12px" class="help-block with-errors"></div>

                                                </div>

                                                <div class="col-md-12 col-lg-6 form-group">

                                                    <label for="codigo_verificacion">Código de verificación del DNI
                                                        <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                    <a href="" data-toggle="modal" data-target="#mostrar_info_dni"> <i style="color: rgb(255,152,0) !important" class="fa fa-info-circle-o fa-2x"></i> </a>

                                                    <input disabled="true" maxlength="1" id="codigo_verificacion" name="codigo_verificacion" type="text" class="form-control" placeholder="Ingrese su código de verificación..." value="" />
                                                    <div style="font-size: 12px" class="help-block with-errors"></div>

                                                </div>

                                            </div>




                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">
                                                    <label for="fecha_nacimiento">Fecha de nacimiento <span style="font-size: 18px ; font-weight: bold;color: red">*</span>
                                                    </label>

                                                    <input name="fecha_nacimiento_2" id="fecha_nacimiento_2" type="date" class="form-control" />

                                                    <div style="font-size: 12px" class="help-block with-errors"></div>

                                                </div>
                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label for="direccion">Dirección domiciliaria <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <input disabled="true" maxlength="100" name="direccion" id="direccion" type="text" class="form-control" placeholder="Ingrese su Dirección...." value="" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>


                                                </div>
                                            </div>

                                            <div class="row">

                                                <div class="col-md-12 col-lg-6">
                                                    <div class="form-group">
                                                        <label for="app_paterno">Apellido Paterno</label>
                                                        <!--                                              <select disabled="true"  name="modalidad_auxiliar" id="modalidad_auxiliar" class="form-control">
                                                  <option>EBR</option>
                                                  <option>EBE</option>
                                              </select>-->
                                                        <input disabled="true" maxlength="12" id="app_paterno" name="app_paterno" type="text" class="form-control" placeholder="Ingrese su apellido paterno..." value="" />

                                                    </div>
                                                </div>

                                                <div class="col-md-12 col-lg-6">
                                                    <div class="form-group">
                                                        <label for="app_materno">Apellido Materno</label>
                                                        <input disabled="true" maxlength="12" id="app_materno" name="app_materno" type="text" class="form-control" placeholder="Ingrese su apellido materno..." value="" />

                                                    </div>
                                                </div>



                                            </div>

                                            <div class="row">

                                                <div class="col-md-12 col-lg-6">
                                                    <div class="form-group">
                                                        <div class="form-group">
                                                            <label>Nombres </label>
                                                            <input disabled="true" maxlength="80" id="nombres" name="nombres" type="text" class="form-control" placeholder="Ingrese sus Nombres..." value="" />

                                                        </div>
                                                    </div>
                                                </div>

                                                <div class="col-md-12 col-lg-6">
                                                    <div class="form-group">
                                                        <label for="sexo">Sexo</label>
                                                        <!--                        <input disabled="true" name="puntaje_auxiliar" id="puntaje_auxiliar" type="text" class="form-control" placeholder="Ingrese su sexo..." value="" />-->
                                                        <select disabled="true" name="sexo" id="sexo" class="form-control">
                                                            <option>Seleccione su Sexo</option>
                                                            <option>MASCULINO</option>
                                                            <option>FEMENINO</option>
                                                        </select>

                                                    </div>
                                                </div>



                                            </div>


                                            <div class="row">


                                                <div class="col-md-12 col-lg-12">

                                                    <div class="col-md-offset-10 col-md-2 col-lg-offset-10 col-lg-2">

                                                        <a id="btnHome-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="profile" type="button" class="btnRegister btn btn-lg btn-primary">Continuar</a>
                                                    </div>



                                                </div>
                                            </div>



                                        </div>

                                    </div>
                                </div>


                            </div>


                            <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">

                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 style="color: white" class="register-heading">SECCIÓN II</h3>

                                    </div>
                                    <div class="panel-body">





                                        <div class="register-form">

                                            <div class="row">
                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label>Teléfono Fijo <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <input disabled="true" data-minlength="7" maxlength="9" id="telefono_auxiliar" name="telefono_auxiliar" type="text" class="form-control" placeholder="Ingrese su número de teléfono..." value="" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label>Número de celular <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" data-minlength="9" maxlength="9" id="numero_celular_auxiliar" name="numero_celular_auxiliar" type="text" class="form-control" placeholder="Ingrese su número de celular..." value="" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label>Correo electrónico <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" maxlength="80" type="email" id="email_auxiliar" name="email_auxiliar" class="form-control" placeholder="Ingrese su correo electrónico..." value="" onkeydown="if(event.ctrlKey && event.keyCode==86){return false;}" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="col-md-12 col-lg-6">
                                                    <div class="form-group">
                                                        <label>Ingrese nuevamente su correo electrónico <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" maxlength="80" type="email" id="email_auxiliar_verificar" name="email_auxiliar_verificar" class="form-control" placeholder="Ingrese su correo electrónico..." data-match-error="El correo ingresado no coincide" value="" data-match="#email_auxiliar" onkeydown="if(event.ctrlKey && event.keyCode==86){return false;}" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>




                                            </div>


                                            <div class="row">

                                                <div class="col-md-12 col-lg-12">

                                                </div>


                                            </div>

                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">
                                                    <div class="form-group">



                                                        <label style="font-size: 14px">¿Cuenta con los medios
                                                            tecnológicos y de conectividad para el desempeño de sus
                                                            labores le permitan realizar el trabajo remoto? <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <div class="funkyradio">
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio2" id="radio3" value="SI" />
                                                                <label style="font-size: 11px" for="radio3">Sí</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio2" id="radio4" value="NO" />
                                                                <label style="font-size: 11px" for="radio4">No (Me
                                                                    comprometo en proporcionarme los recursos)</label>
                                                            </div>

                                                        </div>
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>


                                                    </div>


                                                </div>

                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">

                                                        <label style="font-size: 14px">¿Cuenta con los medios
                                                            tecnológicos para participar en la Convocatoria
                                                            Administrativa de Servicio no presencial? <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <div class="funkyradio ">

                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio1" id="radio1" value="SI" />
                                                                <label style="font-size: 11px" for="radio1">Sí</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio1" id="radio2" value="NO" />
                                                                <label style="font-size: 11px" for="radio2">No</label>
                                                            </div>

                                                        </div>

                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>
                                                </div>



                                            </div>


                                            <div class="row">

                                                <div class="col-md-12 col-lg-6">


                                                    <div class="form-group">




                                                        <label>Ingrese sus archivos <span style="font-size: 18px;font-weight: bold;color: red">*</span><span style="font-size: 13px; font-weight: bold;color: red">
                                                                (Subir en formato PDF Capacidad máxima
                                                                5MB)</span></label>
                                                        <!--accept="zip,application/octet-stream,application/zip,application/x-zip,application/x-zip-compressed"-->
                                                        <div class="form-group">
                                                            <input disabled="true" accept=".pdf" required="true" id="file" name="file" type="file" class="form-control" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>

                                                        </div>




                                                    </div>
                                                </div>



                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">

                                                        <label>Declaración Jurada <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <div class="funkyradio">

                                                            <div class="funkyradio-success">
                                                                <input value="SI" type="checkbox" name="chkDeclaracionjurada" id="chkDeclaracionjurada" />
                                                                <label style="font-size: 10.0px" for="chkDeclaracionjurada">Declaro válido los
                                                                    documentos enviados para este PROCESO</label>
                                                            </div>

                                                        </div>
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>
                                                </div>



                                            </div>

                                            <div class="row">

                                                <div class="col-md-12 col-lg-12">

                                                    <div class="form-group">

                                                        <label>En caso de ser contratado, acepto que se me notifique por
                                                            el siguiente medio: <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <span id="error_notificacion_aviso" style="color:red; display: none">Selecciona al menos una de
                                                            estas opciones</span>
                                                        <div class="funkyradio">

                                                            <div class="funkyradio-success">
                                                                <input value="SI" class="checkboxNoti" type="checkbox" name="not_correo" id="chkNotificacionCorreo" />
                                                                <label style="font-size: 10.5px" for="chkNotificacionCorreo">Correo
                                                                    electrónico</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input value="SI" class="checkboxNoti" type="checkbox" name="not_celular" id="chkNotificacionCelular" />
                                                                <label style="font-size: 10.5px" for="chkNotificacionCelular">Celular</label>
                                                            </div>


                                                        </div>


                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>
                                                </div>





                                            </div>

                                            <div class="row">



                                                <div class=" col-md-2 col-lg-2">




                                                    <a id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="home" type="button" class="btnRegister btn btn-lg btn-primary" class="btnRegister btn btn-lg btn-primary"> Regresar</a>

                                                </div>


                                                <div class="col-md-offset-8 col-md-2 col-lg-offset-8 col-lg-2">




                                                    <a id="anexo-tab" data-toggle="tab" href="#anexo" role="tab" aria-controls="anexo" aria-selected="anexo" type="button" class="btnRegister btn btn-lg btn-primary">Continuar</a>

                                                </div>



                                            </div>






                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="tab-pane fade" id="anexo" role="tabpanel" aria-labelledby="anexo-tab">



                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 style="color: white" class="register-heading">ANEXOS</h3>

                                    </div>
                                    <div class="panel-body">





                                        <div class="register-form">



                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">



                                                        <label style="font-size: 14px">¿Me encuentro afiliado a algún
                                                            régimen de pensiones? <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <div class="funkyradio">
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a1" id="radio_a1_1" value="SI" />
                                                                <label style="font-size: 11px" for="radio_a1_1">Sí</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a1" id="radio_a1_2" value="NO" />
                                                                <label style="font-size: 11px" for="radio_a1_2">No</label>
                                                            </div>

                                                        </div>
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>


                                                    </div>



                                                </div>


                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">

                                                        <label style="font-size: 14px">¿Elijo el siguiente régimen de
                                                            pensiones:? <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <div class="funkyradio ">

                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a2" id="radio_a2_1" value="INTEGRA" />
                                                                <label style="font-size: 11px" for="radio_a2_1">INTEGRA</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a2" id="radio_a2_2" value="PRIMA" />
                                                                <label style="font-size: 11px" for="radio_a2_2">PRIMA</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a2" id="radio_a2_3" value="PROFUTURO" />
                                                                <label style="font-size: 11px" for="radio_a2_3">PROFUTURO</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a2" id="radio_a2_4" value="HABITAT" />
                                                                <label style="font-size: 11px" for="radio_a2_4">HABITAT</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a2" id="radio_a2_5" value="DL 19990" />
                                                                <label style="font-size: 11px" for="radio_a2_5">DL 19990</label>
                                                            </div>
                                                        </div>

                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>


                                                </div>



                                            </div>




                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">

                                                        <label style="font-size: 14px">POSEO ANTECEDENTES POLICIALES
                                                            <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <div class="funkyradio ">

                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a3" id="radio_a3_1" value="SI" />
                                                                <label style="font-size: 11px" for="radio_a3_1">Sí</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a3" id="radio_a3_2" value="NO" />
                                                                <label style="font-size: 11px" for="radio_a3_2">No</label>
                                                            </div>

                                                        </div>

                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>
                                                </div>


                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">

                                                        <label style="font-size: 14px">POSEO ANTECEDENTES JUDICIALES
                                                            <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <div class="funkyradio ">

                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a4" id="radio_a4_1" value="SI" />
                                                                <label style="font-size: 11px" for="radio_a4_1">Sí</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a4" id="radio_a4_2" value="NO" />
                                                                <label style="font-size: 11px" for="radio_a4_2">No</label>
                                                            </div>

                                                        </div>

                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>
                                                </div>



                                            </div>


                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">


                                                    <div class="form-group">

                                                        <label style="font-size: 14px">POSEO ANTECEDENTES PENALES <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <div class="funkyradio ">

                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a5" id="radio_a5_1" value="SI" />
                                                                <label style="font-size: 11px" for="radio_a5_1">Sí</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input type="radio" name="radio_a5" id="radio_a5_2" value="NO" />
                                                                <label style="font-size: 11px" for="radio_a5_2">No</label>
                                                            </div>

                                                        </div>

                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>

                                                </div>

                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">

                                                        <label>DECLARACIÓN JURADA DE AUSENCIA DE NEPOTISMO<span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <span id="error_notificacion_aviso" style="color:red; display: none">Selecciona al menos una de
                                                            estas opciones</span>
                                                        <div class="funkyradio">

                                                            <div class="funkyradio-success">
                                                                <input value="SI" type="radio" name="radio_a6" id="radio_a6_1" />
                                                                <label style="font-size: 10.5px" for="radio_a6_1">Si,
                                                                    (Rellene los campos de parentezco)</label>
                                                            </div>
                                                            <div class="funkyradio-success">
                                                                <input value="SI" type="radio" name="radio_a6" id="radio_a6_2" />
                                                                <label style="font-size: 10.5px" for="radio_a6_2">No</label>
                                                            </div>


                                                        </div>


                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>


                                                </div>
                                            </div>


                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">


                                                    <div class="form-group">
                                                        <label>Relación <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <input disabled="true" id="rel_parent" name="rel_parent" maxlength="80" type="text" class="form-control" placeholder="Ingrese su relación..." value=" " />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label>Apellidos <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" id="rel_apellido" name="rel_apellido" maxlength="80" type="text" class="form-control" placeholder="Ingrese su apellido..." value=" " />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="row">
                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label>Nombres <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" maxlength="80" type="text" id="rel_nombre" name="rel_nombre" class="form-control" placeholder="Ingrese su nombre..." value=" " />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="col-md-12 col-lg-6">
                                                    <div class="form-group">
                                                        <label>Área de trabajo <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" maxlength="80" type="text" id="rel_trabajo" name="rel_trabajo" class="form-control" placeholder="Ingrese su área de trabajo..." value=" " />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>




                                            </div>



                                            <div class="row">



                                                <div class=" col-md-2 col-lg-2">




                                                    <a id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="profile" type="button" class="btnRegister btn btn-lg btn-primary" class="btnRegister btn btn-lg btn-primary"> Regresar</a>

                                                </div>


                                                <div class="col-md-offset-8 col-md-2 col-lg-offset-8 col-lg-2">




                                                    <a id="anexo-tab" data-toggle="tab" href="#academico" role="tab" aria-controls="academico" aria-selected="academico" type="button" class="btnRegister btn btn-lg btn-primary">Continuar</a>

                                                </div>



                                            </div>




                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="tab-pane fade" id="academico" role="tabpanel" aria-labelledby="academico-tab">



                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 style="color: white" class="register-heading">FORM ACADEMICA</h3>

                                    </div>
                                    <div class="panel-body">

                                        <div class="register-form">

                                            <div class="register-form">


                                                <div class="row">


                                                    <div class="col-md-12 col-lg-6">


                                                        <div class="form-group">
                                                            <label>Nivel educativo <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                            <input disabled="true" id="niv_edu" name="niv_edu" maxlength="80" type="text" class="form-control" placeholder="Ingrese su nivel educativo..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-12 col-lg-6">

                                                        <div class="form-group">
                                                            <label>Grado académico obtenido <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                            <input disabled="true" id="grad_aca" name="grad_aca" maxlength="80" type="text" class="form-control" placeholder="Ingrese su grado académico obtenido..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="row">


                                                    <div class="col-md-12 col-lg-6">


                                                        <div class="form-group">
                                                            <label>Nombre de la Carrera <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                            <input disabled="true" id="nom_carrera" name="nom_carrera" maxlength="80" type="text" class="form-control" placeholder="Ingrese su nombre de la Carrera..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-12 col-lg-6">

                                                        <div class="form-group">
                                                            <label>Centro de estudios <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                            <input disabled="true" id="cent_estu" name="cent_estu" maxlength="80" type="text" class="form-control" placeholder="Ingrese su centro de estudios..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="row">


                                                    <div class="col-md-12 col-lg-6">
                                                        <label for="fecha_1">Desde <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                                (SOLO AÑO)</span> </label>



                                                        <input disabled="true" min="1940-01-01" max="2002-12-12" name="fecha_1" id="fecha_1" type="text" class="form-control" placeholder="Ingrese su año..." value="" />

                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>

                                                    <div class="col-md-12 col-lg-6">
                                                        <label for="fecha_2">Hasta <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                                (SOLO AÑO)</span> </label>

                                                        <input disabled="true" id="fecha_2" name="fecha_2" maxlength="80" type="text" class="form-control" placeholder="Ingrese su año..." value="" />



                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">

                                                    <div class="col-md-6 col-lg-6">


                                                        <a id="form_aca_save" type="button" class="btn_guardar btn btn-lg btn-primary"> AGREGAR</a>

                                                        <!--                                                        <a id="btn_eliminar_OBTENER" type="button" class="btn_eliminar btn btn-lg btn-danger" class="btn_eliminar btn btn-lg btn-danger"> QUITAR</a>-->

                                                    </div>


                                                </div>

                                                <br><br>

                                                <table id="table_form_aca">
                                                    <thead>
                                                        <tr>
                                                            <th>Eliminar</th>
                                                            <th>Nivel educativo</th>
                                                            <th>Grado académico obtenido</th>
                                                            <th>Nombre de la Carrera, Maestría/Doctorado</th>
                                                            <th>Centro de estudios</th>
                                                            <th>Desde</th>
                                                            <th>Hasta</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody id="tablita">

                                                    </tbody>
                                                </table>


                                            </div>

                                            <div class="row">



                                                <div class=" col-md-2 col-lg-2">




                                                    <a id="profile-tab" data-toggle="tab" href="#anexo" role="tab" aria-controls="anexo" aria-selected="anexo" type="button" class="btnRegister btn btn-lg btn-primary" class="btnRegister btn btn-lg btn-primary"> Regresar</a>

                                                </div>


                                                <div class="col-md-offset-8 col-md-2 col-lg-offset-8 col-lg-2">




                                                    <a id="anexo-tab" data-toggle="tab" href="#capacitaciones" role="tab" aria-controls="capacitaciones" aria-selected="capacitaciones" type="button" class="btnRegister btn btn-lg btn-primary">Continuar</a>

                                                </div>



                                            </div>

                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="tab-pane fade" id="capacitaciones" role="tabpanel" aria-labelledby="capacitaciones-tab">



                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 style="color: white" class="register-heading">CAPACITACIONES</h3>

                                    </div>
                                    <div class="panel-body">

                                        <div class="register-form">

                                            <div class="register-form">


                                                <div class="row">


                                                    <div class="col-md-12 col-lg-6">


                                                        <div class="form-group">
                                                            <label>Nombre del curso <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                            <input disabled="true" id="nom_curso" name="nom_curso" maxlength="80" type="text" class="form-control" placeholder="Ingrese su nombre del curso..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-12 col-lg-6">

                                                        <div class="form-group">
                                                            <label>Tipo de Curso <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                            <input disabled="true" id="tip_curso" name="tip_curso" maxlength="80" type="text" class="form-control" placeholder="Ingrese su tipo de curso..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="row">


                                                    <div class="col-md-12 col-lg-6">


                                                        <div class="form-group">
                                                            <label>Institución <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                            <input disabled="true" id="instit" name="instit" maxlength="80" type="text" class="form-control" placeholder="Ingrese su institución..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="col-md-12 col-lg-6">

                                                        <div class="form-group">
                                                            <label>Total de Horas <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                            <input disabled="true" id="total_horas" name="total_horas" maxlength="80" type="text" class="form-control" placeholder="Ingrese su total de toras..." value="" />
                                                            <div style="font-size: 12px" class="help-block with-errors">
                                                            </div>
                                                        </div>


                                                    </div>
                                                </div>

                                                <div class="row">


                                                    <div class="col-md-12 col-lg-6">
                                                        <label for="fechaini_cap">Fec. Inicio <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                                (SOLO AÑO)</span> </label>

                                                        <input disabled="true" id="fechaini_cap" name="fechaini_cap" maxlength="80" type="text" class="form-control" placeholder="Ingrese su fec. inicio..." value="" />




                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>

                                                    <div class="col-md-12 col-lg-6">
                                                        <label for="fechafin_cap">Fec. Fin <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                                (SOLO AÑO)</span> </label>

                                                        <input disabled="true" id="fechafin_cap" name="fechafin_cap" maxlength="80" type="text" class="form-control" placeholder="Ingrese su fec. fin..." value="" />


                                                        <!--                                        <input disabled="true"  min="1940-01-01" max="2002-12-12" name="fecha_2" id="fecha_2"  type="text" class="form-control" value="" />-->

                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>

                                                    </div>
                                                </div>
                                                <br>
                                                <div class="row">

                                                    <div class="col-md-6 col-lg-6">


                                                        <a id="form_ca_save" type="button" class="btn_guardar btn btn-lg btn-primary" class="btn_guardar btn btn-lg btn-primary"> AGREGAR</a>

                                                        <!--                                                        <a id="btn_eliminar_OBTENER_Ca" type="button" class="btn_eliminar btn btn-lg btn-danger" class="btn_eliminar btn btn-lg btn-danger"> QUITAR</a>-->

                                                    </div>


                                                </div>

                                                <br><br>

                                                <table id="table_form_ca">
                                                    <thead>
                                                        <tr>
                                                            <th>Eliminar</th>
                                                            <th>Nombre del curso</th>
                                                            <th>Tipo de Curso</th>
                                                            <th>Institución</th>
                                                            <th>Total de Horas</th>
                                                            <th>Fec. Inicio</th>
                                                            <th>Fec. Fin</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>

                                                    </tbody>
                                                </table>


                                            </div>
                                            <div class="row">



                                                <div class=" col-md-2 col-lg-2">




                                                    <a id="profile-tab" data-toggle="tab" href="#academico" role="tab" aria-controls="academico" aria-selected="academico" type="button" class="btnRegister btn btn-lg btn-primary" class="btnRegister btn btn-lg btn-primary"> Regresar</a>

                                                </div>



                                                <div class="col-md-offset-8 col-md-2 col-lg-offset-8 col-lg-2">



                                                    <a id="anexo-tab" data-toggle="tab" href="#laboral" role="tab" aria-controls="laboral" aria-selected="laboral" type="button" class="btnRegister btn btn-lg btn-primary">Continuar</a>


                                                </div>



                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>


                            <div class="tab-pane fade" id="laboral" role="tabpanel" aria-labelledby="laboralo-tab">



                                <div class="panel panel-primary">
                                    <div class="panel-heading">
                                        <h3 style="color: white" class="register-heading">EXP LABORAL</h3>

                                    </div>
                                    <div class="panel-body">

                                        <div class="register-form">


                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">


                                                    <div class="form-group">
                                                        <label>Empresa / Institución <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <input disabled="true" id="empre" name="empre" maxlength="200" type="text" class="form-control" placeholder="Ingrese su empresa / institución..." value="" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label>Puesto/Cargo <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" id="puesto" name="puesto" maxlength="80" type="text" class="form-control" placeholder="Ingrese su puesto/cargo..." value="" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">


                                                    <div class="form-group">
                                                        <label>Sector <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>
                                                        <input disabled="true" id="sector" name="sector" maxlength="80" type="text" class="form-control" placeholder="Ingrese su sector..." value="" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>

                                                </div>

                                                <div class="col-md-12 col-lg-6">

                                                    <div class="form-group">
                                                        <label>Tiempo laboral en Años <span style="font-size: 18px ; font-weight: bold;color: red">*</span></label>

                                                        <input disabled="true" id="tlan" name="tlan" maxlength="80" type="text" class="form-control" placeholder="Ingrese su tiempo laboral en años..." value="" />
                                                        <div style="font-size: 12px" class="help-block with-errors">
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>

                                            <div class="row">


                                                <div class="col-md-12 col-lg-6">
                                                    <label for="tlmes">Tiempo laboral en Meses <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                        </span> </label>

                                                    <input disabled="true" id="tlmeses" name="tlmes" maxlength="80" type="text" class="form-control" placeholder="Ingrese su tiempo laboral en meses..." value="" />




                                                    <div style="font-size: 12px" class="help-block with-errors"></div>

                                                </div>

                                                <div class="col-md-12 col-lg-6">
                                                    <label for="tldia">Tiempo laboral en Días <span style="font-size: 18px ; font-weight: bold;color: red">*
                                                        </span> </label>

                                                    <input disabled="true" id="tldias" name="tldia" maxlength="80" type="text" class="form-control" placeholder="Ingrese su tiempo laboral en días..." value="" />


                                                    <div style="font-size: 12px" class="help-block with-errors"></div>

                                                </div>
                                            </div>
                                            <br>
                                            <div class="row">

                                                <div class="col-md-6 col-lg-6">


                                                    <a id="form_expe_save" type="button" class="btn_guardar_laboral btn btn-lg btn-primary" class="btn_guardar_laboral btn btn-lg btn-primary"> AGREGAR</a>

                                                    <!--                                                    <a id="btn_eliminar_laboral" type="button" class="btn_eliminar_laboral btn btn-lg btn-danger" class="btn_eliminar_laboral btn btn-lg btn-danger"> QUITAR</a>-->

                                                </div>


                                            </div>

                                            <br><br>

                                            <table id="table_form_exp">
                                                <thead>
                                                    <tr>
                                                        <th>Eliminar</th>
                                                        <th>Empresa / Institución</th>
                                                        <th>Puesto/Cargo</th>
                                                        <th>Sector</th>
                                                        <th>Año</th>
                                                        <th>Mes</th>
                                                        <th>Día</th>
                                                    </tr>
                                                </thead>
                                                <tbody id="tablitalaboral">

                                                </tbody>
                                            </table>


                                        </div>

                                        <div class="row">
                                            <br>

                                            <div class="alert alert-success">
                                                <strong>La información registrada tiene caracter de Declaración Jurada,
                                                    siendo el POSTULANTE responsable tomar conocimiento de las bases,
                                                    requisitos del perfil y manual de usuario. Una vez que confirme su postulación, no podrá realizar cambios, debido que
                                                    su expediente ya forma parte del proceso.</strong>
                                            </div>

                                            <div class=" col-md-2 col-lg-2">




                                                <a id="profile-tab" data-toggle="tab" href="#capacitaciones" role="tab" aria-controls="capacitaciones" aria-selected="capacitaciones" type="button" class="btnRegister btn btn-lg btn-primary" class="btnRegister btn btn-lg btn-primary"> Regresar</a>

                                            </div>



                                            <div class="col-md-offset-8 col-md-2 col-lg-offset-8 col-lg-2">



                                                <button id="btnregistrar" type="submit" class="btnRegister btn btn-lg btn-primary">ENVIAR</button>


                                            </div>



                                        </div>

                                    </div>
                                </div>
                            </div>


                        </div>

                    </form>
                </div>


            </div>
        </div>

        <div class="row justify-content-center">
            <div style="text-align: center" class=" col-md-4 col-md-offset-4">
                <label style="color:white">Desarrollado por el Equipo de Tecnologías de la Información - UGEL 04</label>
            </div>

        </div>


        <!-- Modal -->
        <div class="modal fade" style="position: fixed;top:15%" id="mostrar_info_dni" role="dialog">
            <div class="modal-dialog modal-sm">
                <div style="text-align: center" class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                        <h4 class="modal-title">Código de verificación del DNI</h4>
                    </div>
                    <div class="modal-body">
                        <img style="width: 100%" src='<?php echo base_url(); ?>dist/img/digito_verificador.jpg' />
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-warning" data-dismiss="modal">Cerrar</button>
                    </div>
                </div>
            </div>
        </div>



    </div>


</body>


<script type="text/javascript" src="<?php echo base_url(); ?>dist/login/js/jquery.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/bootstrap.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/animsition.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>dist/login/js/jquery-asScroll.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>dist/login/js/jquery.mousewheel.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>dist/login/js/jquery.asScrollable.all.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>dist/login/js/jquery-asHoverScroll.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>dist/login/js/jquery.placeholder.min.js"></script>
<script type="text/javascript" src="<?php echo base_url(); ?>plugins/numeric/jquery.numeric.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/core.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/site.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/menubar.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/gridmenu.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/sidebar.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/config-colors.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/config-tour.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/asscrollable.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/animsition.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/slidepanel.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/switchery.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/tabs.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/jquery-placeholder.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/material.min.js"></script>
<script src="<?php echo base_url(); ?>dist/login/js/validator.js"></script>
<script src="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url(); ?>plugins/datepicker/bootstrap-datepicker.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.0/js/all.min.js"></script>

<script type="text/javascript">
    /*Desabilita el boton cuando el input es vacio */
    var dni_docente_buscar = document.getElementById("dni_docente");
    
    function activar_btn_buscar(valor) {

        if (dni_docente_buscar.value.length >= 1) {
            btn_docente.disabled = false;
            btn_docente.classList.remove("disabled");
        } else {
            btn_docente.disabled = true;

        }
    }

    var dni_cas_buscar = document.getElementById("dni_cas");
    function activar_btn_validar(valor) {

        if (dni_cas_buscar.value.length > 7) {
            btn_validar.disabled = false;
            btn_validar.classList.remove("disabled");
        } else {
            btn_validar.disabled = true;

        }
    }


    //tabulaciones
    $('div.tab-content a[data-toggle]').on('click', function() {
        var that = $(this),
            link = that.attr('href');

        $('a[href="' + link + '"]').not(that).trigger('click');
    });


    //VALIDAR ARCHIVO
    var uploadField = document.getElementById("file");

    uploadField.onchange = function() {

        var filePath = uploadField.value;
        var allowedExtensions = /(.pdf)$/i;






        if (this.files[0].size > 7340032) {

            Swal.fire({
                title: 'SU ARCHIVO SUPERA EL LIMITE DE CARGA',
                html: "<b>Por favor, reduzca el tamaño de su archivo rar/zip. <br> El tamaño máximo es de <span style='color:red'>5MB</span></b>",
                icon: 'error',
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'ACEPTAR',
                allowOutsideClick: false

            }).then(function(result) {
                if (result.value) {}
            })


            this.value = "";
        };

        if (!allowedExtensions.exec(filePath)) {
            Swal.fire({
                title: 'EL ARCHIVO NO ESTÁ EN FORMATO PDF',
                html: "<h4>Por favor, intente subir su archivo en los formatos solicitados.</h4>",
                icon: 'error',
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'ACEPTAR',
                allowOutsideClick: false

            }).then(function(result) {
                if (result.value) {}
            })

            this.value = "";

        }
    };


    //

    <?php if ($this->uri->segment(3) == "reg_ok") : ?>

        history.pushState(null, "", "OK");

        //  Swal.fire({
        //                                            title: 'REGISTRO EXITOSO',
        //                                            html: "<h4> Usted se acaba registrar para el Proceso de Contratación de Auxiliares de Educación - No Presencial (CUADRO DE MÉRITO) UGEL N° 04. </h4>",
        //                                            icon: 'success',
        //                                             confirmButtonColor: '#3085d6',
        //                                            cancelButtonColor: '#d33',
        //                                            confirmButtonText: 'ACEPTAR',
        //                                            allowOutsideClick: false
        //
        //                                            }).then(function(result) {
        //                                                if (result.value) {
        //}}
        //);


    <?php endif; ?>

    /* ERROR
    <?php if (!empty(validation_errors())) : ?>
       
         Swal.fire({
                                                title: 'ERROR AL REGISTRAR',
                                              html: <?php echo validation_errors()  ?> ,
                                                icon: 'error',
                                                 confirmButtonColor: '#3085d6',
                                                cancelButtonColor: '#d33',
                                                confirmButtonText: 'ACEPTAR',
                                                allowOutsideClick: false
                                                }).then(function(result) {
                                                    if (result.value) {
    }}
    )

    <?php endif; ?>


    */

    <?php if ($this->uri->segment(3) == "reg_error") : ?>

        history.pushState(null, "", "ERROR");
        Swal.fire({
            title: 'ERROR AL REGISTRAR',
            text: "Hubo un error al registrar su información, intente nuevamente, o utilice otro navegador (Chrome o Firefox)",
            icon: 'error',
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'ACEPTAR',
            allowOutsideClick: false
        }).then(function(result) {
            if (result.value) {}
        })


    <?php endif; ?>


    <?php if ($this->uri->segment(3) == "log_error") : ?>

        history.pushState(null, "", "ERROR");
        Swal.fire({
            title: 'ERROR AL REGISTRAR',
            text: "Su archivo excede la capacidad máxima de 5MB, por favor intente subir nuevamente o intente con otro navegador",
            icon: 'error',
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'ACEPTAR',
            allowOutsideClick: false
        }).then(function(result) {
            if (result.value) {}
        });




    <?php endif; ?>





    /*buscamos el codigo de convocatoria */

    $('#btn_docente').on('click', function(e) {

        //var dni = document.getElementById('dni_docente').value;
        $('#btnregistrar').attr('enable', 'true');

        $.ajax({
            url: '<?php echo base_url(); ?>Cas_NP/verificar_dni_docente',
            type: 'post',
            data: {
                NUMEXPE: document.getElementById('dni_docente').value
            },
            dataType: 'json',
            beforeSend: function() {

                $('#btn_docente').attr('disabled', 'false');

            },
            success: function(data) {


                if (data == 0) {

                    Swal.fire({
                        title: 'IMPORTANTE',
                        html: "<h4>Usted ingreso el Código de Convocatoria incorrecto. </h4>",
                        icon: 'error',
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'ACEPTAR',
                        allowOutsideClick: false

                    }).then(function(result) {
                        if (result.value) {}
                    })

                    $('#btn_docente').removeAttr('disabled');

                }

                if (data[0] != null) {

                    Swal.fire({
                        title: 'IMPORTANTE',
                        html: "<h5>El Código de Convocatoria fue encontrado. </h5>",
                        icon: 'info',
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'CLICK AQUÍ PARA CONTINUAR!',
                        allowOutsideClick: false

                    }).then(function(result) {


                        if (result.value) {
                            $('#numero_orden').val(data[0]['CAS']);
                            $('#dato_cas').val(data[0]['asuntoContrato']);

                            $("#dni_docente, #numero_orden, #dato_cas, #btn_docente").attr(
                                "disabled", 'true').removeAttr('placeholder');

                        }
                    })
                }


            }
        })


    });

    $('#btn_validar').on('click', function(e) {

        //var dni = document.getElementById('dni_docente').value;
        $('#btnregistrar').attr('enable', 'true');

        $.ajax({
            url: '<?php echo base_url(); ?>Cas_NP/verificar_dni_validar',
            type: 'post',
            data: {
                COD_CONV: document.getElementById('dni_docente').value,
                DNI: document.getElementById('dni_cas').value
            },
            dataType: 'json',
            beforeSend: function() {

                $('#btn_validar').attr('disabled', 'false');

            },
            success: function(data) {


                if (data == 1) {

                    Swal.fire({
                        title: 'IMPORTANTE',
                        html: "<h4>Usted ya se encuentra  registrado en esa convocatoria.  </h4>",
                        icon: 'error',
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'ACEPTAR',
                        allowOutsideClick: false

                    }).then(function(result) {
                        if (result.value) {}
                    })

                    $('#btn_validar').removeAttr('disabled');

                }

                if (data == 0) {

                    Swal.fire({
                        title: 'IMPORTANTE',
                        html: "<h5>Usted se está registrando <br> en la convocatoria CAS DE UGEL N° 04. <br> <br> Para participar en la CONVOCATORIA ADMINISTRATIVA DE SERVICIO CAS  - No Presencial tiene que registrar los datos solicitados.</h5>",
                        icon: 'info',
                        confirmButtonColor: '#3085d6',
                        cancelButtonColor: '#d33',
                        confirmButtonText: 'CLICK AQUÍ PARA CONTINUAR!',
                        allowOutsideClick: false

                    }).then(function(result) {


                        if (result.value) {
                             $("#form_pos_cas :input").removeAttr("disabled");
                            $("#dni_docente, #numero_orden, #dato_cas, #btn_docente").prop(
                                "disabled", 'true');

                        }
                    })
                }


            }
        })


    });


    /*Registramos ------------------------- */



    $('#form_pos_cas').on("submit", (e) => {
        e.preventDefault();
        if($('#btnregistrar').hasClass('disabled') === false){
            Swal.fire({
            title: '¿Está seguro(a) de registrar su datos?',
            text: "Verifique que todos sus datos sean correctos.",
            icon: 'warning',
            showCancelButton: true,
            confirmButtonColor: '#3085d6',
            cancelButtonColor: '#d33',
            confirmButtonText: 'Si , enviar',
            cancelButtonText: 'Cancelar'
        }).then((result) => {
            if (result.isConfirmed) {
                enviar(e);
                Swal.fire({
                            title: 'REGISTRO EXITOSO',
                            html: "<h4> Usted se acaba registrar para el Proceso de Contratación de Administrativa de Servicio - No Presencial UGEL N° 04. </h4>",
                            icon: 'success',
                            confirmButtonColor: '#3085d6',
                            cancelButtonColor: '#d33',
                            confirmButtonText: 'ACEPTAR',
                            allowOutsideClick: false

                        }).then(function(result) {
                            if (result.value) {}
                        });
                        window.location = "cas_np";
                // muestra una alerta al usuario
                if ($('.checkboxNoti[type=checkbox]:checked').length === 0) {
                    e.preventDefault();
                    $('#error_notificacion_aviso').css('display', 'block');
                } else {
                    if ($('#btnregistrar').hasClass('disabled') == false) {
                        //TEXTO CARGANDO
                        $('#btnregistrar').text('Enviando...');
                        //   Swal.fire({
                        //                                            title: 'Cargando...',
                        //                                            html: "<div class='save_loading'><img  width='230px' src='<?php echo base_url(); ?>dist/img/loading.gif'/></div><div><h4>Se está subiendo sus archivos al sistema, por favor no cierre la página hasta que termine de cargar</h4>",
                        //                                            timerProgressBar: true,
                        //                                             showConfirmButton:false,
                        //                                            padding: '3em',
                        //                                            backdrop: 'rgba(0,0,123,0.4) left top no-repeat',
                        //                                            allowOutsideClick: false
                        //
                        //                                            })



                        //    //DESHABILITAMOS EL BOTON PARA QUE NO SE HAGA VARIAS PETICIONES
                        //    $('#btnregistrar').attr('disabled','true');

                        //HABILITAMOS LOS INPUTS PARA QUE LLEGUEN AL CONTROLLER CON EL FORMDATA
                        // $(':disabled:not(:button)').each(function(e) {
                        //         $(this).removeAttr('disabled'); 
                        //     })    
                    }

                }

            }
        })
        }
        







    });


    const enviar = (e) => {
        {
            //1------------------------------------------------------------
            var elementos = document.getElementsByName("radio_a1");
            var radio_a1 = null;

            for (var i = 0; i < elementos.length; i++) {
                if (elementos[i].checked) {
                    radio_a1 = elementos[i].value;
                }
            }
            //2------------------------------------------------------------
            var elementos1 = document.getElementsByName("radio_a2");
            var radio_a2 = null;

            for (var i = 0; i < elementos1.length; i++) {
                if (elementos1[i].checked) {
                    radio_a2 = elementos1[i].value;
                }
            }
            //3------------------------------------------------------------
            var elementos2 = document.getElementsByName("radio_a3");
            var radio_a3 = null;

            for (var i = 0; i < elementos2.length; i++) {
                if (elementos2[i].checked) {
                    radio_a3 = elementos2[i].value;
                }
            }
            //4------------------------------------------------------------
            var elementos3 = document.getElementsByName("radio_a4");
            var radio_a4 = null;

            for (var i = 0; i < elementos3.length; i++) {
                if (elementos3[i].checked) {
                    radio_a4 = elementos3[i].value;
                }
            }
            //5------------------------------------------------------------
            var elementos4 = document.getElementsByName("radio_a5");
            var radio_a5 = null;

            for (var i = 0; i < elementos4.length; i++) {
                if (elementos4[i].checked) {
                    radio_a5 = elementos4[i].value;
                }
            }
            //6------------------------------------------------------------
            var elementos5 = document.getElementsByName("radio_a6");
            var radio_a6 = null;

            for (var i = 0; i < elementos5.length; i++) {
                if (elementos5[i].checked) {
                    radio_a6 = elementos5[i].value;
                }
            }


            let formdata = new FormData();
            formdata.set("array_form_academica", JSON.stringify(obtenerDatos()));
            formdata.set("array_capacitaciones", JSON.stringify(obtenerDatosCapa()));
            formdata.set("array_expe_labo", JSON.stringify(obtenerDatosExpe()));
            formdata.set("dni_docente", document.getElementById('dni_docente').value);
            formdata.set("numero_orden", document.getElementById('numero_orden').value);
            formdata.set("dato_cas", document.getElementById('dato_cas').value);
            formdata.set("dni_cas", document.getElementById('dni_cas').value);
            formdata.set("codigo_verificacion", document.getElementById('codigo_verificacion').value);
            formdata.set("fecha_nacimiento", document.getElementById('fecha_nacimiento_2').value);
            formdata.set("direccion", document.getElementById('direccion').value);
            formdata.set("app_paterno", document.getElementById('app_paterno').value);
            formdata.set("app_materno", document.getElementById('app_materno').value);
            formdata.set("nombres", document.getElementById('nombres').value);
            formdata.set("sexo", document.getElementById('sexo').value);
            formdata.set("telefono_auxiliar", document.getElementById('telefono_auxiliar').value);
            formdata.set("numero_celular_auxiliar", document.getElementById('numero_celular_auxiliar').value);
            formdata.set("email_auxiliar", document.getElementById('email_auxiliar').value);
            formdata.set("chkDeclaracionjurada", document.getElementById('chkDeclaracionjurada').value);
            formdata.set("not_correo", document.getElementById('chkNotificacionCorreo').value);
            formdata.set("not_celular", document.getElementById('chkNotificacionCelular').value);
            formdata.set("file", document.getElementById('file').files[0]);
            formdata.set("radio_a1", radio_a1);
            formdata.set("radio_a2", radio_a2);
            formdata.set("radio_a3", radio_a3);
            formdata.set("radio_a4", radio_a4);
            formdata.set("radio_a5", radio_a5);
            formdata.set("radio_a6", radio_a6);
            formdata.set("rel_parent", document.getElementById('rel_parent').value);
            formdata.set("rel_apellido", document.getElementById('rel_apellido').value);
            formdata.set("rel_nombre", document.getElementById('rel_nombre').value);
            formdata.set("rel_trabajo", document.getElementById('rel_trabajo').value);

            $.ajax({


                url: '<?php echo base_url(); ?>cas_np/register_docente_pun',
                type: 'post',


                // dataType:"json",

                data: formdata,
                contentType: false,
                processData: false,
                cache: false,
                //dataType: 'json',

                success: function(data) {

                    console.log(JSON.parse(data));

                }
            });


        };
    };

    function habilitar(){
        niv_edu = document.getElementById("niv_edu").value;
        val=0;

        if (niv_edu =="") {
            val++;
        } 
        else {

        }

    }




    ///Inicio Tabla formacion academica -----------------------------------------------------------------------------
    $("#form_aca_save").on('click', function(e) {

        //Variables
        var niv_edu = document.getElementById("niv_edu").value;
        var grad_aca = document.getElementById("grad_aca").value;
        var nom_carrera = document.getElementById("nom_carrera").value;
        var cent_estu = document.getElementById("cent_estu").value;
        var fecha_1 = document.getElementById("fecha_1").value;
        var fecha_2 = document.getElementById("fecha_2").value;

        var name_table = document.getElementById("table_form_aca");

        var row = name_table.insertRow(0 + 1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        var cell6 = row.insertCell(5);
        var cell7 = row.insertCell(6);

        cell1.innerHTML = '<button type="button" id="delete_for_aca" class="btn btn-danger">X</button>';
        cell2.innerHTML = '<p>' + niv_edu + '</p>';
        cell3.innerHTML = '<p>' + grad_aca + '</p>';
        cell4.innerHTML = '<p>' + nom_carrera + '</p>';
        cell5.innerHTML = '<p>' + cent_estu + '</p>';
        cell6.innerHTML = '<p>' + fecha_1 + '</p>';
        cell7.innerHTML = '<p>' + fecha_2 + '</p>';

        document.getElementById("niv_edu").value = "";
        document.getElementById("grad_aca").value = "";
        document.getElementById("nom_carrera").value = "";
        document.getElementById("cent_estu").value = "";
        document.getElementById("fecha_1").value = "";
        document.getElementById("fecha_2").value = "";

    });

    //Elminar elementos de la tabla formacion academica
    $(function() {
        $(document).on('click', '#delete_for_aca', function(event) {
            event.preventDefault();
            $(this).closest('tr').remove();
        });
    });


    ///Obtener datos de la tabla formacion academica
    function obtenerDatos() {

        ///Array
        var arrayCol1 = new Array();


        //Numero de filas
        var numero = $("#table_form_aca tr").length;

        for (let index = 1; index < numero; index++) {

            var niv_edu = document.getElementById("table_form_aca").rows[index].cells[1].innerText;
            var grad_aca = document.getElementById("table_form_aca").rows[index].cells[2].innerText;
            var nom_carrera = document.getElementById("table_form_aca").rows[index].cells[3].innerText;
            var cent_estu = document.getElementById("table_form_aca").rows[index].cells[4].innerText;
            var fecha_1 = document.getElementById("table_form_aca").rows[index].cells[5].innerText;
            var fecha_2 = document.getElementById("table_form_aca").rows[index].cells[6].innerText;

            arrayCol1.push({
                'niv_edu': niv_edu,
                'grad_aca': grad_aca,
                'nom_carrera': nom_carrera,
                'cent_estu': cent_estu,
                'fecha_1': fecha_1,
                'fecha_2': fecha_2
            });

        }

        //var rowCount = $('#table_form_aca >tbody >tr').length;



        return arrayCol1;
    }

    $("#btn_eliminar_OBTENER").on('click', function(e) {

        console.log(obtenerDatos());

    }, );

    ///FIN Tabla formacion academica -----------------------------------------------------------------------------


    ///Inicio Tabla Capacitaciones -----------------------------------------------------------------------------

    $("#form_ca_save").on('click', function(e) {

        //Variables
        var nom_curso = document.getElementById("nom_curso").value;
        var tip_curso = document.getElementById("tip_curso").value;
        var instit = document.getElementById("instit").value;
        var total_horas = document.getElementById("total_horas").value;
        var fechaini_cap = document.getElementById("fechaini_cap").value;
        var fechafin_cap = document.getElementById("fechafin_cap").value;

        var name_table = document.getElementById("table_form_ca");

        var row = name_table.insertRow(0 + 1);

        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        var cell6 = row.insertCell(5);
        var cell7 = row.insertCell(6);

        cell1.innerHTML = '<button type="button" id="delete_for_ca" class="btn btn-danger">X</button>';
        cell2.innerHTML = '<p>' + nom_curso + '</p>';
        cell3.innerHTML = '<p>' + tip_curso + '</p>';
        cell4.innerHTML = '<p>' + instit + '</p>';
        cell5.innerHTML = '<p>' + total_horas + '</p>';
        cell6.innerHTML = '<p>' + fechaini_cap + '</p>';
        cell7.innerHTML = '<p>' + fechafin_cap + '</p>';

        document.getElementById("nom_curso").value = "";
        document.getElementById("tip_curso").value = "";
        document.getElementById("instit").value = "";
        document.getElementById("total_horas").value = "";
        document.getElementById("fechaini_cap").value = "";
        document.getElementById("fechafin_cap").value = "";

    });

    //Elminar elementos de la tabla  capacitaciones
    $(function() {
        $(document).on('click', '#delete_for_ca', function(event) {
            event.preventDefault();
            $(this).closest('tr').remove();
        });
    });

    function obtenerDatosCapa() {

        ///Array
        var arrayCol1 = new Array();


        //Numero de filas
        var numero = $("#table_form_ca tr").length;

        for (let index = 1; index < numero; index++) {

            var nom_curso = document.getElementById("table_form_ca").rows[index].cells[1].innerText;
            var tip_curso = document.getElementById("table_form_ca").rows[index].cells[2].innerText;
            var instit = document.getElementById("table_form_ca").rows[index].cells[3].innerText;
            var total_horas = document.getElementById("table_form_ca").rows[index].cells[4].innerText;
            var fechaini_cap = document.getElementById("table_form_ca").rows[index].cells[5].innerText;
            var fechafin_cap = document.getElementById("table_form_ca").rows[index].cells[6].innerText;

            arrayCol1.push({
                'nom_curso': nom_curso,
                'tip_curso': tip_curso,
                'instit': instit,
                'total_horas': total_horas,
                'fechaini_cap': fechaini_cap,
                'fechafin_cap': fechafin_cap
            });

        }

        return arrayCol1;
    }

    $("#btn_eliminar_OBTENER_Ca").on('click', function(e) {

        console.log(obtenerDatosCapa());

    }, );


    ///FIN  Tabla Capacitaciones -----------------------------------------------------------------------------

    ///Inicio Tabla Experiencia -----------------------------------------------------------------------------

    function fileChanged(event) {
        var target = event.target || event.srcElement;
        console.log(target.files);
        console.log(document.getElementById('file').files);
    }


    $("#form_expe_save").on('click', function(e) {

        //Variables
        var empre = document.getElementById("empre").value;
        var puesto = document.getElementById("puesto").value;
        var sector = document.getElementById("sector").value;
        var tlan = document.getElementById("tlan").value;
        var tlmeses = document.getElementById("tlmeses").value;
        var tldias = document.getElementById("tldias").value;

        var name_table = document.getElementById("table_form_exp");

        var row = name_table.insertRow(0 + 1);

        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        var cell3 = row.insertCell(2);
        var cell4 = row.insertCell(3);
        var cell5 = row.insertCell(4);
        var cell6 = row.insertCell(5);
        var cell7 = row.insertCell(6);

        cell1.innerHTML = '<button type="button" id="delete_for_expe" class="btn btn-danger">X</button>';
        cell2.innerHTML = '<p>' + empre + '</p>';
        cell3.innerHTML = '<p>' + puesto + '</p>';
        cell4.innerHTML = '<p>' + sector + '</p>';
        cell5.innerHTML = '<p>' + tlan + '</p>';
        cell6.innerHTML = '<p>' + tlmeses + '</p>';
        cell7.innerHTML = '<p>' + tldias + '</p>';

        document.getElementById("empre").value = "";
        document.getElementById("puesto").value = "";
        document.getElementById("sector").value = "";
        document.getElementById("tlan").value = "";
        document.getElementById("tlmeses").value = "";
        document.getElementById("tldias").value = "";

    });



    //Elminar elementos de la tabla  experiencia
    $(function() {
        $(document).on('click', '#delete_for_expe', function(event) {
            event.preventDefault();
            $(this).closest('tr').remove();
        });
    });


    ///Obtener datos table
    function obtenerDatosExpe() {

        ///Array
        var arrayCol1 = new Array();


        //Numero de filas
        var numero = $("#table_form_exp tr").length;

        for (let index = 1; index < numero; index++) {

            var empre = document.getElementById("table_form_exp").rows[index].cells[1].innerText;
            var puesto = document.getElementById("table_form_exp").rows[index].cells[2].innerText;
            var sector = document.getElementById("table_form_exp").rows[index].cells[3].innerText;
            var tlan = document.getElementById("table_form_exp").rows[index].cells[4].innerText;
            var tlmeses = document.getElementById("table_form_exp").rows[index].cells[5].innerText;
            var tldias = document.getElementById("table_form_exp").rows[index].cells[6].innerText;

            arrayCol1.push({
                'empre': empre,
                'puesto': puesto,
                'sector': sector,
                'tlan': tlan,
                'tlmeses': tlmeses,
                'tldias': tldias
            });

        }

        return arrayCol1;
    }

    $("#btn_eliminar_laboral").on('click', function(e) {

        console.log(obtenerDatosExpe());

    }, );
</script>

</html>