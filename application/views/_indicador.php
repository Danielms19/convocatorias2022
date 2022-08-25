<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>Convocatorias</title>
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
<link rel="stylesheet" href="<?php echo base_url(); ?>plugins/morris/morris.css">
           <!-- jvectormap -->
           <link rel="stylesheet" href="<?php echo base_url(); ?>plugins/jvectormap/jquery-jvectormap-1.2.2.css">


<noscript><link rel="stylesheet" href="<?php echo base_url(); ?>upload/css/jquery.fileupload-noscript.css"></noscript>
<noscript><link rel="stylesheet" href="<?php echo base_url(); ?>upload/css/jquery.fileupload-ui-noscript.css"></noscript>


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
			<section class="content">

                <!-- Main row -->
                <div class="row">
                    <!-- <div class="col-md-12">
                        <div class="box-body border-radius-none" style="margin-left: 50px;">
                        <div>
                            <div class="text-center col-sm-4 col-xs-4">
                                <div class="description-block border-right">
                                    <h5 class="description-header" ><span class="label label-success" id="total_publicadas"><?php echo $publicadas; ?></span></h5>
                                    <span class="description-text">TOTAL PLAZAS</span>
                                </div>
                            </div>

                            <div class="text-center col-sm-4 col-xs-4">
                                <div class="description-block border-right">
                                    <h5 class="description-header" ><span class="label label-primary" id="total_adjudicadas"><?php echo $adjudicadas; ?></span></h5>
                                    <span class="description-text">PLAZAS ADJUDICAS</span>
                                </div>
                            </div>

                            <div class="text-center col-sm-4 col-xs-4">
                                <div class="description-block border-right">
                                    <h5 class="description-header" ><span class="label label-danger" id="total_liberadas"><?php echo $liberadas; ?><span></h5>
                                        <span class="description-text">PLAZAS LIBERADAS</span>
                                    </div>
                                </div>
                            </div>

                        </div>
                    </div> -->

                        <section class="col-lg-12">
                            <div class="box box-danger">
                                <div class="box-header with-border">
                                  <h3 class="box-title">NIVEL DE EFICACIA </h3>
                                  <div class="box-tools pull-right">
                                     
                                     <a class="btn btn-sm btn-primary" href="<?php echo site_url('Postulaciones/excel_datos_evaluados_por_fecha') ?>"><i class="fa fa-file-text"></i> Reportes Fechas - EXCEL</a>
                                    </div>
                              </div>
                              <div class="box-body chart-responsive">
                                  <div class="chart" id="listar_todo" style="height: 300px; position: relative;"></div>
                              </div>

                          </div>


                      </section> 

                         <section class="col-lg-12">
                            <div class="box box-danger">
                                <div class="box-header with-border">
                                  <h3 class="box-title">TOTAL DE TRAMITES ATENDIDOS</h3>
                                  <div class="box-tools pull-right">
                                     
                                     <a class="btn btn-sm btn-primary" href="<?php echo site_url('Postulaciones/excel_datos_evaluados_por_fecha') ?>"><i class="fa fa-file-text"></i> Reportes Fechas - EXCEL</a>
                                    </div>
                              </div>
                              <div class="box-body chart-responsive">
                                  <div class="chart" id="listar_todo2" style="height: 300px; position: relative;"></div>
                              </div>

                          </div>


                      </section> 
                 
                 <!-- <section class="col-lg-12">
                        <div class="box box-danger">
                            <div class="box-header with-border">
                              <h3 class="box-title"> Indicadores Renuncia Personal [IRP]</h3>
                              <div class="box-tools pull-right">
                                     
                                     <a class="btn btn-sm btn-primary" href="<?php echo site_url('reporte/excel_datos_irp_evaluados_por_fecha') ?>"><i class="fa fa-file-text"></i> Reportes Fechas - EXCEL</a>
                                    </div>
                          </div>
                          <div class="box-body chart-responsive">
                              <div class="chart" id="listar_datos_renuncia_personal" style="height: 300px; position: relative;"></div>
                          </div>

                      </div>


                  </section> -->

            </div><!-- /.row (main row) -->

        </section><!-- /.content -->

		</div>

    
    
    
    
</div>

</div>


</div>



</div>




</div>
	

<?php $this->load->view('layout/_footer'); ?>


	</div>
	
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.0/raphael-min.js"></script>
<script src="<?php echo base_url(); ?>plugins/morris/morris.js"></script>

<script src="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url(); ?>plugins/datepicker/bootstrap-datepicker.js"></script>


<script>

// function ver_detalle(data) {

//     $('#fecha_adjudicacion').text(data.fecha);
//     $('#total_adjudicadas').text(data.adjudicadas);
//     $('#total_liberadas').text(data.liberadas);
//     $('#p_adjudicadas').text(parseFloat(data.publicadas / data.adjudicadas).toFixed(3) + ' %');
//     if (data.liberadas > 0) {
//         $('#p_liberadas').text(parseFloat(data.publicadas / data.liberadas).toFixed(3) + ' %');
//     } else {
//         $('#p_liberadas').text('0.000 %');
//     }

//     $.ajax({
//         url: "<?php echo site_url('reporte/modalidad_nivel') ?>",
//         type: "POST",
//         dataType: "JSON",
//         data: {fecha: data.fecha},
//         success: function (data)
//         {
//             $("#bar-chart").empty();
//                                                                     //console.log(data)
//                                                                     var bar = Morris.Bar({
//                                                                         element: 'bar-chart',
//                                                                         data: data,
//                                                                         resize: true,
//                                                                         xkey: 'modalidad_nivel',
//                                                                         ykeys: ['total'],
//                                                                         labels: ['Total'],
//                                                                         hideHover: 'auto',
//                                                                     });
//                                                                 }
//                                                             });


//     reporte_distritos(data.fecha);
//     lista_colegios(data.fecha);
//     $('#section_colegios').show();
//     $('#section_distritos').show();

// }

</script>
                                                        <script type="text/javascript">


                                                         $.ajax({
                                                            url: "<?php echo site_url('Convocatoria/listar_todo') ?>",
                                                            type: "POST",
                                                            dataType: "JSON",
                                                            success: function (data)
                                                            {
                                                                    var bar = new Morris.Bar({
                                                                      element: 'listar_todo',
                                                                      resize: true,
                                                                      data: [
                                                                      {y: 0, a: data[0]['total_postulados'], b: data[0]['total_evaluados'], c: data[0]['porct_general']},

                                                                      ],
                                                                      barColors: ['#00a65a', '#4569E7', '#f56954'],
                                                                      xkey: 'y',
                                                                      ykeys: ['a', 'b', 'c'],
                                                                      labels: ['Total Postulados', 'Total Evaluados', 'Atendidos %'],
                                                                      hideHover: 'auto'
                                                                  });

                                                            }
                                                        });    
 

                                                                //Fix for charts under tabs
                                                                $('.box ul.nav a').on('shown.bs.tab', function () {
                                                                    area.redraw();
                                                                    donut.redraw();
                                                                    line.redraw();
                                                                });



 $.ajax({
                                                            url: "<?php echo site_url('Convocatoria/listar_todo2') ?>",
                                                            type: "POST",
                                                            dataType: "JSON",
                                                            success: function (data)
                                                            {
                                                                    var bar = new Morris.Bar({
                                                                      element: 'listar_todo2',
                                                                      resize: true,
                                                                      data: [
                                                                      {y: 0, a: data[0]['total_postulados'], b: data[0]['total_evaluados'], c: data[0]['porct_general']},

                                                                      ],
                                                                      barColors: ['#00a65a', '#4569E7', '#f56954'],
                                                                      xkey: 'y',
                                                                      ykeys: ['a', 'b', 'c'],
                                                                      labels: ['Total Postulados', 'Total Evaluados', 'Atendidos %'],
                                                                      hideHover: 'auto'
                                                                  });

                                                            }
                                                        });    
 

                                                                //Fix for charts under tabs
                                                                $('.box ul.nav a').on('shown.bs.tab', function () {
                                                                    area.redraw();
                                                                    donut.redraw();
                                                                    line.redraw();
                                                                });

                                                            </script>

	
</body>
</html>