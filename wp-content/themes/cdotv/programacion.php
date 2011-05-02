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

<script src="http://www.google.com/calendar/feeds/cdo.tv.teste@gmail.com/public/full?alt=json-in-script&orderby=starttime&callback=listEvents"></script>
<script src="http://www.google.com/calendar/feeds/obajn3657vj6oja3v99116jgp0@group.calendar.google.com/public/full?alt=json-in-script&orderby=starttime&callback=listEvents"></script>
<script src="http://www.google.com/calendar/feeds/p5j8ff9aukqq62udpda5qp4dgg@group.calendar.google.com/public/full?alt=json-in-script&orderby=starttime&callback=listEvents"></script>
