<?php 
/*
 * 
 * Template Name: Programación
 * 
 * */

?>

<?php get_header();?>

<div class="programacion">
    <div class="box_type_programacion">
		<h2 class="dia_actual"><?php echo date("j M"); ?></h2>
		
		<div class="logoProgramacion">
			<div class="logo"><span class="logo_cdo"><a href="#">Canal Deporte Olimpico</a></span></div>
			<div class="logo"><span class="logo_cdo_premium"><a href="#">Canal Deporte Olimpico Premium</a></span></div>
			<div class="logo"><span class="logo_cdo_radio"><a href="#">Canal Deporte Olimpico Radio</a></span></div>
		</div>
		
	</div>
	
	<div class="box_programacion">
		<span class="bt_anterior"><a href="#">Anterior</a></span>
		
		<div class="box_programacion_galery">
			<div class="box_programacion_mask">
			
				<div class="box_grade_programacion">				
					<ul>
						<li>
								<div class="box_hora_esq">
										<h3>17:00 pm</h3>
										<span>17:00 pm</span>
										<span>17:15 pm</span>
										<span>17:30 pm</span>
										<span>17:45 pm</span>
								</div>
								<span class="bottom">&nbsp;</span>
						</li>					
					</ul>
				</div>	
			
				<div class="box_programacion_detalhe">	
					<table id="tblAgenda"></table>
				</div>
			</div>
		</div>
		
		<span class="bt_proxima"><a href="#">Proxima</a></span>
	</div>

</div>

<?php get_footer();?>

<script language="JavaScript" type="text/javascript" src="<?php echo bloginfo('template_url');?>/js/calendar.js"></script>

<?php
	$minDate = date("Y-m-d")."T00:00:00";
	$maxDate = date("Y-m-d")."T23:59:59";
	$url = "http://www.google.com/calendar/feeds/[ID_CALENDAR]/public/full?alt=json-in-script&orderby=starttime&start-min=".$minDate."&start-max=".$maxDate."&callback=listEvents";
	
	//$idDefault = "contenido@cdo.tv"; //calendario Default
	$idDefault = "cdo.tv.teste@gmail.com"; //calendario Default
	$idPremium = "loa1t9pmcddfb2ktbdq5q4c17k@group.calendar.google.com"; //calendario Premium
	//$idPremium = "ou1nimde2qlqaimidulmu1feos@group.calendar.google.com"; //calendario Premium
	$idRadio = "poaaqbb8quj5n28fo7e6q26itk@group.calendar.google.com"; //calendario Radio
	
	$urlDefault = str_replace("[ID_CALENDAR]", $idDefault, $url);
	$urlPremium = str_replace("[ID_CALENDAR]", $idPremium, $url);
	$urlRadio = str_replace("[ID_CALENDAR]", $idRadio, $url);
?>

<script src="<?php echo $urlDefault;?>"></script>
<script src="<?php echo $urlPremium;?>"></script>
<script src="<?php echo $urlRadio;?>"></script>