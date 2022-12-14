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
		<div class="container">
			<!-- Content Header (Page header) -->
			<section class="content-header">
				<h1>
					Convocatorias 
				</h1>
			</section>

			<!-- Main content -->
			<section class="content">
			
				<!---------- tabla miembros del comite ---------->
							
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-solid">
						<div class="box-header">
								<h3 class="box-title">
									<i class="fa fa-search"></i> B??squeda de convocatorias 
								</h3>
								
							</div>
							<div class="box-body">
							<div class="box-tools pull-right">
									<div class="btn-toolbar">
										<button class="btn btn-sm btn-default" style="background: #222D32; color: white;" 
											onclick="registrar_convocatoria()">
											<i class="fa fa-plus-circle"></i> AGREGAR CONVOCATORIA
										</button>
									</div>
								</div>
								<br><br>
										<div class="form-horizontal">
										
										<div class="row">
							
								<div class="col-md-4">
								<div class="form-group">
									<label class="control-label col-md-4">Tipo</label>
									<div class="col-md-8">
									<select data-column="4" class="search-input-select form-control select2" style="width: 100%" >
										<?php foreach($tipos as $tipo ){?>
										<option value="<?php echo $tipo['IDtipo']; ?>"><?php echo $tipo['descripcionLarga']?></option>
										<?php } ?>
										</select>
									</div>
								</div>
								</div>
								<div class="col-md-3">
								<div class="form-group">
									<label class="control-label col-md-4">Estado</label>
									<div class="col-md-8">
									<select data-column="1" class="search-input-select form-control select2" style="width: 100%">
													<option value="0">TODOS</option>
													<option value="1">ACTIVO</option>
													<option value="2">EN PROCESO</option> 
													<option value="3">CONCLUIDO</option> 
											</select>
									</div>
								</div>
								</div>
								<div class="col-md-3">
								<div class="form-group">
									<label class="control-label col-md-4">N??mero</label>
									<div class="col-md-8">
										<input type="text" data-column="2"
												
												class="search-input-text form-control" style="width: 100%">
									</div>
								</div>
								</div>
								
								</div>
								
								<div class="row">
								
								<div class="col-md-8">
								<div class="form-group">
									<label class="control-label col-md-2">Puesto</label>
									<div class="col-md-10">
									<input type="text" data-column="3" class="search-input-text form-control" style="width: 100%">
									</div>
								</div>
								</div>
								
								
								</div>

							</div>
						</div>
					</div>
				</div>
				</div>
				
				
				<div class="row">
					<div class="col-xs-12">
						<div class="box box-solid">
							<div class="box-header">
								<h3 class="box-title">
									<i class="fa fa-check-circle"></i> Convocatorias 
								</h3>
								
							</div>
							<!-- /.box-header -->
							<div class="box-body">
								<table id="table" class="table table-condensed table-hover responsive"
										cellspacing="0" width="100%">
										<thead style="background: #222D32;color: white;">
											<tr>
												<th class="text-center" style="width: 10%" >N??</th>
												<th class="text-center" style="width: 10%" >Fecha de Publicaci??n</th>
												<th style="width: 10%">Contrataci??n Administrativa de Servicio - CAS</th>
												<th class="text-center" >Cantidad</th>
												<th class="text-center" style="width: 10%">Bases</th>
												<th class="text-center" style="width: 10%">Evaluaci??n Hoja de vida</th>
												<th class="text-center" style="width: 10%">Ex??men t??cnico</th>
												<th class="text-center" style="width: 10%">Comunicado</th>
												<th class="text-center" style="width: 10%">Resultado final</th>
												<th class="text-center" style="width: 10%">Estado</th>
												<th class="text-center" style="width: 10%">ACCION</th>
											</tr>
										</thead>
										<tbody>
										</tbody>
									</table>
							</div>
						</div>
					</div>
				</div>

				
		
			</section>
			</div>
		</div>




<div class="modal fade" id="modal_confirmar" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title" >Confirmar</h3>
					</div>
				<div class="modal-body text-center" >
				<input type="hidden" value="" id="IDconvocatoria_e" > 
				<strong><p >??Desea eliminar esta convocatoria?</p></strong>
				</div>
					<div class="modal-footer" >
					<button type="button" id="btnEliminar" onclick="confirmar()"
							class="btn btn-danger">Eliminar</button>
						<button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
					
					</div>
			</div>
		</div>
</div>


<div class="modal fade" id="modal_respuesta" role="dialog">
			<div class="modal-dialog">
				<div class="modal-content">
				<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title" >Respuesta</h3>
					</div>
				<div class="modal-body text-center" >
				<strong><p id="p_respuesta_modal"></p></strong>
				</div>
					<div class="modal-footer" >
						<button type="button" class="btn btn-danger" onclick="cerrar_respuesta()">Aceptar</button>
					</div>
			</div>
		</div>
</div>

<div class="modal fade" id="modal_convocatoria" role="dialog">
			<div class="modal-dialog modal-lg">
				<div class="modal-content">
				<div class="modal-header" style="background: #222D32; color:white;text-align: center;">
						<button type="button" class="close" data-dismiss="modal"
							aria-label="Close">
							<span aria-hidden="true">&times;</span>
						</button>
						<h3 class="modal-title" id="titulo_convocatoria" style="font-family: 'Fjalla One', sans-serif;"></h3>
					</div>

<div class="modal-body" >
   
   <form id="form_convocatoria" class="form-horizontal">
					<input type="hidden" value="" id="IDconvocatoria" name="IDconvocatoria"> 
								<div class="form-group">
									<label class="control-label col-md-3">Tipo</label>
									<div class="col-md-5">
										<select name="tipo" class="form-control select2" style="width: 100%" >
										<?php foreach($tipos as $tipo ){?>
										<option value="<?php echo $tipo['IDtipo']; ?>"><?php echo $tipo['descripcionLarga']?></option>
										<?php } ?>
										</select>
										<span class="help-block"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Numero</label>
									<div class="col-md-2">
										<input name="numero" value="" class="form-control"
												type="text">
										<span class="help-block"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Fecha</label>
									<div class="col-md-3">
										<input name="fecha" value="" class="form-control datepicker"
												type="text">
										<span class="help-block"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Cantidad</label>
									<div class="col-md-2">
										<input name="cantidad" value="" class="form-control"
												type="text">
										<span class="help-block"></span>
									</div>
								</div>
								<div class="form-group">
									<label class="control-label col-md-3">Contrato</label>
									<div class="col-md-7">
										<textarea name="asunto" 
											class="form-control"
											></textarea>
										<span class="help-block"></span>
									</div>
								</div>
								<div class="form-group" id="form_estado" >
									<label class="control-label col-md-3">Estado</label>
									<div class="col-md-4">
										<select class="form-control" id="estado"
											name="estado" style="width: 100%" >
											<option value="1">ACTIVO</option>
											<option value="2">EN PROCESO</option>
											<option value="3">CULMINADO</option>
										</select> <span class="help-block"></span>
									</div>
								</div>	
								<div class="box-tools pull-right">
									<div class="btn-toolbar">
										<button type="button" id="btnGuardar" onclick="guardar_convocatoria()"
							class="btn btn-primary ">Guardar</button>
								</form>
									</div>
								</div>
								
   <br><br>
     <div class="nav-tabs-custom" id="carga_archivos">
                <ul class="nav nav-tabs">
                  <li id="principal" onclick="cambio(1)"><a  data-toggle="tab">Bases</a></li>
                  <li onclick="cambio(2)" ><a  data-toggle="tab">Evaluaci??n CV</a></li>
                  <li onclick="cambio(3)"><a  data-toggle="tab">Resultado Entrevista</a></li>
                  <li onclick="cambio(4)"><a  data-toggle="tab">Comunicado</a></li>
                  <li onclick="cambio(5)"><a  data-toggle="tab">Resultado final</a></li>
                </ul>
                
    <br>
    <!-- The file upload form used as target for the file upload widget -->
    <form id="fileupload" action="" method="POST" enctype="multipart/form-data">
        <!-- Redirect browsers with JavaScript disabled to the origin page -->
        <noscript><input type="hidden" name="redirect" value="https://blueimp.github.io/jQuery-File-upload/"></noscript>
        <!-- The fileupload-buttonbar contains buttons to add/delete files and start/cancel the upload -->
        <div class="row fileupload-buttonbar">
            <div class="col-lg-7">
                <!-- The fileinput-button span is used to style the file input field as button -->
                <span class="btn btn-success fileinput-button">
                    <i class="glyphicon glyphicon-plus"></i>
                    <span>Agregar...</span>
                    <input type="file" name="files[]" multiple>
                </span>
                <button type="submit" class="btn btn-primary start">
                    <i class="glyphicon glyphicon-upload"></i>
                    <span>Cargar</span>
                </button>
                <button type="reset" class="btn btn-warning cancel">
                    <i class="glyphicon glyphicon-ban-circle"></i>
                    <span>Cancelar</span>
                </button>
                <button type="button" class="btn btn-danger delete">
                    <i class="glyphicon glyphicon-trash"></i>
                    <span>Eliminar</span>
                </button>
                <input type="checkbox" class="toggle">
                <!-- The global file processing state -->
                <span class="fileupload-process"></span>
            </div>
            <!-- The global progress state -->
            <div class="col-lg-5 fileupload-progress fade">
                <!-- The global progress bar -->
                <div class="progress progress-striped active" role="progressbar" aria-valuemin="0" aria-valuemax="100">
                    <div class="progress-bar progress-bar-success" style="width:0%;"></div>
                </div>
                <!-- The extended global progress state -->
                <div class="progress-extended">&nbsp;</div>
            </div>
        </div>
        <!-- The table listing the files available for <?php echo base_url(); ?>upload/download -->
        <table id="tabla_archivos" role="presentation" class="table table-striped"><tbody class="files"></tbody></table>
    </form>
    
    
    
    
</div>

</div>


</div>



</div>




</div>
	

<?php $this->load->view('layout/_footer'); ?>
		

	</div>


	<div class="modal fade" id="modal_form_configurar" tabindex="-1" role="dialog">
   <div class="modal-dialog" role="document">
      <div class="modal-content">
         <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">&times;</span>
            </button>
            <h3 class="modal-title" id="modal-title-configurar"></h3>
         </div>
         <div class="modal-body form">
            <form action="#" id="form_miembro" class="form-horizontal">
            	<input type="hidden" id="id_oculto" name="id_oculto">
            	<div class="panel panel-success">
			      <div class="panel-heading"> Configuraciones Evaluaci??n curricular </div>
			      <div class="panel-body">
			      	<div class="form-body">
	                  <div class="form-group">
	                     <label class="control-label col-md-3"> FECHA </label>
	                     <div class="col-md-9">
	                        <input type="text" class="form-control datepicker" id="input_fecha_uno" name="input_fecha_uno" value="" style="font-weight: bold;color:#C5312C; border: 1px solid #999 !important;font-size: 16px;" autocomplete="off" placeholder="Seleccione una fecha" maxlength="10">
	                        <span class="help-block"></span>
	                     </div>
	                  </div>
	                  <div class="form-group">
	                     <label class="control-label col-md-3"> HORA </label>
	                     <div class="col-md-9">
	                        <input name="input_hora_uno" name="input_hora_uno" 
	                           class="form-control" type="text"
	                           style="text-transform: uppercase; border: 1px solid #999 !important;"
	                           required autocomplete="off"> <span class="help-block"></span>
	                     </div>
	                  </div>
	                  <div class="form-group">
	                     <label class="control-label col-md-3"> LUGAR </label>
	                     <div class="col-md-9">
	                        <textarea id="input_lugar_uno" name="input_lugar_uno" style="resize: none; width: 100%; height: 100px;"></textarea><span class="help-block"></span>
	                     </div>
	                  </div>
	              	</div>
			      </div>
			    </div>

			    <div class="panel panel-primary">
			      <div class="panel-heading"> Configuraciones Entrevista Personal </div>
			      <div class="panel-body">
			      	<div class="form-body">
	                  <div class="form-group">
	                     <label class="control-label col-md-3"> FECHA </label>
	                     <div class="col-md-9">
	                        <input type="text" class="form-control datepicker" id="input_fecha_dos" name="input_fecha_dos" value="" style="font-weight: bold;color:#C5312C; border: 1px solid #999 !important;font-size: 16px;" autocomplete="off" placeholder="Seleccione una fecha" maxlength="10">
	                        <span class="help-block"></span>
	                     </div>
	                  </div>
	                  <div class="form-group">
	                     <label class="control-label col-md-3"> HORA </label>
	                     <div class="col-md-9">
	                        <input name="input_hora_dos" name="input_hora_dos" 
	                           class="form-control" type="text"
	                           style="text-transform: uppercase; border: 1px solid #999 !important;"
	                           required autocomplete="off"> <span class="help-block"></span>
	                     </div>
	                  </div>
	                  <div class="form-group">
	                     <label class="control-label col-md-3"> LUGAR </label>
	                     <div class="col-md-9">
	                        <textarea id="input_lugar_dos" name="input_lugar_dos" style="resize: none; width: 100%; height: 100px;"></textarea><span class="help-block"></span>
	                     </div>
	                  </div>
	              	</div>
			      </div>
			    </div>
            </form>
         </div>
         <div class="modal-footer" id="modal_footer">
            <button type="button" id="btnSave10" onclick="guardar_configuracion()" class="btn btn-primary">Guardar</button>
            <button type="button" class="btn btn-danger" data-dismiss="modal">Cancelar</button>
         </div>
      </div>
   </div>
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

<script src="<?php echo base_url(); ?>plugins/daterangepicker/daterangepicker.js"></script>
<script src="<?php echo base_url(); ?>plugins/datepicker/bootstrap-datepicker.js"></script>

 <script type="text/javascript">

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

			 
				
		    table = $('#table').DataTable({
		    	"processing": true,
		        "serverSide": true,
		        "order": [],
		        "ajax": {
		            "url": "<?php echo site_url('convocatoria/lista')?>",
		            "type": "POST",
		            "data": {"ci_csrf_token":"<?php echo $this->security->get_csrf_hash(); ?>"}
		        },
		        "columnDefs": [
		        {
		            "targets": [ -1,-2, 1, 0, 2, 3,4,5,6,7,8 ],
		            "orderable": false,
		        },
		        ],     
		        "language": {
		        	"processing":     "Procesando...",
		            "lengthMenu":     "Mostrar _MENU_ registros",
		            "zeroRecords":    "No se encontraron resultados",
		            "emptyTable":     "Ning??n dato disponible en esta tabla",
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
		                "last":     "??ltimo",
		                "next":     "Siguiente",
		                "previous": "Anterior"
		            },
		            "aria": {
		                "sortAscending":  ": Activar para ordenar la columna de manera ascendente",
		                "sortDescending": ": Activar para ordenar la columna de manera descendente"
		            }
		        },
		        "iDisplayLength": 10,
		    });

		    $("input").change(function(){
		        $(this).parent().parent().removeClass('has-error');
		        $(this).next().empty();
		    });
		    $("textarea").change(function(){
		        $(this).parent().parent().removeClass('has-error');
		        $(this).next().empty();
		    });

		    $('#table_filter').css('display','none');
		   
		});

		
		
		 $('.search-input-text').on( 'keyup click', function () {   // for text boxes
		        var i = $(this).attr('data-column');  // getting column index
		        var v = $(this).val();  // getting search input value
		        table.columns(i).search(v).draw();
		    } );

		    $('.search-input-select').on( 'change', function () {   // for select box
		        var i =$(this).attr('data-column');
		        var v =$(this).val();
		        table.columns(i).search(v).draw();
		    } );

		function reload_table()
		{
		    table.ajax.reload(null,false); 
		}

		$( "#modal_convocatoria" ).on('hidden.bs.modal', function(){
			reload_table();
		});

		function cerrar_respuesta(){
			reload_table();
			 $('#modal_respuesta').modal('hide');
		}

		function editar_convocatoria(id){
			$('[name="fecha"]').val('');
				 $.ajax({
				        url : "<?php echo site_url('convocatoria/obtener/')?>/" + id,
				        type: "GET",
				        dataType: "JSON",
				        success: function(data)
				        {
					        console.log(data);
				        	$('#btnGuardar').text('Actualizar');
				        	$('[name="IDconvocatoria"]').val(data.IDconvocatoria);
				        	$('[name="tipo"]').val(data.IDtipo);
				        	$('[name="estado"]').val(data.estado);
				        	$('[name="numero"]').val(data.numero);
				        	$('[name="cantidad"]').val(data.cantidad);
				        	$('[name="fecha"]').val(data.fecha);
				            $('[name="asunto"]').val(data.asuntoContrato);
				            save_method = 'update';
							$('#carga_archivos').show();
							$('#modal_convocatoria').modal('show');
							limpiar_tabs();
							convocatoria = id;
							cambio(1);
							
				        	$('#modal_form_plaza').modal('show');
				        	$('#titulo_convocatoria').text('Formulario para la edici??n de la convocatoria #'+ data.IDconvocatoria);
						},
				        error: function (jqXHR, textStatus, errorThrown)
				        {
				            alert('Error get data from ajax');
				        }
				    });
		}


		function configurar_convocatoria(id){
				 $.ajax({
				        url : "<?php echo site_url('convocatoria/obtener_configuracion/')?>/" + id,
				        type: "GET",
				        dataType: "JSON",
				        success: function(data)
				        {
					        console.log(data);
				        	$('#btnGuardar').text('Actualizar');
				        	$('[name="id_oculto"]').val(data.IDconvocatoria);
				        	$('[name="input_fecha_uno"]').val(data.fecha_manual);
				        	$('[name="input_hora_uno"]').val(data.hora_manual);
				            $('[name="input_lugar_uno"]').val(data.lugar_manual);

				            $('[name="input_fecha_dos"]').val(data.fecha_manual_dos);
				        	$('[name="input_hora_dos"]').val(data.hora_manual_dos);
				            $('[name="input_lugar_dos"]').val(data.lugar_manual_dos);
				            
							$('#modal_form_configurar').modal('show');
				        	$('#modal-title-configurar').text('Formulario para la configuraci??n de la convocatoria #'+ data.IDconvocatoria);
						},
				        error: function (jqXHR, textStatus, errorThrown)
				        {
				            alert('Error get data from ajax');
				        }
				    });
		}


		function guardar_configuracion(){
                $('#btnSave10').text('Guardando...'); //change button text
                $('#btnSave10').attr('disabled', true); //set button disable
               	

                    // ajax adding data to database
                    $.ajax({
                        url : "<?php echo site_url('convocatoria/guardar_configuracion')?>",
                        type: "POST",
                        data: { 
                        	input_id: $('#id_oculto').val(),
                            input_fecha_uno: $('#input_fecha_uno').val(),
                            input_hora_uno: $('[name="input_hora_uno"]').val(),
                            input_lugar_uno: $('#input_lugar_uno').val(),

                            input_fecha_dos: $('#input_fecha_dos').val(),
                            input_hora_dos: $('[name="input_hora_dos"]').val(),
                            input_lugar_dos: $('#input_lugar_dos').val(),
                            dataType: "JSON",
                            success: function (dato)
                            {
                            	$('#modal_form_configurar').modal('hide');
                                 reload_table();
		                        $('#btnSave10').text('Guardar'); //change button text
		                        $('#btnSave10').attr('disabled', false); //set button enable
		                    },
		                    error: function (jqXHR, textStatus, errorThrown)
		                    {
		                        //alert('Datos Duplicados');
		                        $('#btnSave10').text('Guardar'); //change button text
		                        $('#btnSave10').attr('disabled', false); //set button enable
		                    }
                }
                
            }) }

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
			       		$('#p_respuesta_modal').text('El registro se ha eliminado con ??xito.');
			        	
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


</script>

	
</body>
</html>