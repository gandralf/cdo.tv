<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>CDO - Canal Deporte Olimpico</title>
<link href="css.css" rel="stylesheet" type="text/css" />
</head>
<body>

<div id="tudo">
  <div id="top">
    <a href="index.html"><img src="images/logo.png"/></a>
	<div id="banner">
		<img src="images/banner.gif" />
	</div>
  </div>
  <div id="conteudo">
    <div id="menu"><div align="center"><img src="images/menu.png" width="926" height="35" border="0" usemap="#Map" />
      <map name="Map" id="Map">
        <area shape="rect" coords="520,4,693,25" href="contenido.html" target="_self" />
        <area shape="rect" coords="19,6,192,27" href="index.html" target="_self" />
        <area shape="rect" coords="734,4,907,25" href="multimedia.html" target="_self" />
        <area shape="rect" coords="244,10,417,31" href="programacion.html" target="_self" />
      </map>
    </div>
	</div>
	<div id="contacto">
		<div class="menu">
	    <img src="images/menucontacto.png" width="231" height="210" border="0" usemap="#Map2" />
<map name="Map2" id="Map2">
  <area shape="rect" coords="13,135,218,173" href="contacto.html" target="_self" />
  <area shape="rect" coords="13,98,218,136" href="equipo.html" target="_self" />
  <area shape="rect" coords="9,61,214,99" href="mision.html" target="_self" />
  <area shape="rect" coords="7,23,212,61" href="quienessomos.html" target="_self" />
</map>
	  </div>
<div class="form">
		
		  <img src="images/imgContacto.gif" width="221" height="120">		  
<?php


$to = 'aleatorio.fulminante@gmail.com'; // Para
$named = 'CDO'; // Nome destinatário

$name = $_REQUEST['nombre']; // Nome remetente
$email = $_REQUEST['email']; // E-mail remetente
$cod = $_REQUEST['cod']; // cod. area
$telefono = $_REQUEST['telefono']; // telefone
$content = $_REQUEST['mesaje'] ; // Conteúdo da mensagem

$subject = "Assunto"; //Assumto

$message = "
	$name 
	<br><br>
	$cod $telefono
	<br><br>
	$content
	<br><br>
	";

$from = $email;
$headers = "From: $from\nContent-Type: text/html; charset=utf-8";

ini_set("SMTP","localhost" );
ini_set("smtp_port","25" );
ini_set('sendmail_from', 'user@example.com'); 

try
  {
  mail($to,$subject,$message,$headers);
  echo "<br><br><p>Obrigado pelo contato.</p>";
  }

//catch exception
catch(Exception $e)
  {
  echo 'Erro: ' .$e->getMessage();
  }


echo $message;
?>
</div>
	</div>
  </div>
</div>
<!--			footer -->
<div id="footer">
	<div class="content">
		<div class="fNav">
			<h5>Entretención</h5>
			<ul>
						<li><a href="programacion.html" target='_self'>Programación</a></li>
				<li><a href="contenido.html" target='_self'>Contenido</a></li>
				<li><a href="multimedia.html" target='_self'>Multimedia</a></li>
			</ul>
		</div>
		<div class="fNav">
			<h5>CDO por dentro</h5>
			<ul>
					<li><a href="quienessomos.html" target='_self'>¿Quienes somos?</a></li>
				<li><a href="mision.html" target='_self'>Misión</a></li>
				<li><a href="equipo.html"target='_self'>Equipo</a></li>
			  <li><a href="contacto.html" target='_self'>Contacto</a></li>
			</ul>
	  </div>
		<div class="cdo">
			<img src="images/logoFooter.gif" /><br>
			<p>600.600.1000<br>
			Av. Vicuña Maquena, 1000<br>
			Santiago - Chile</p>
			<p class="powered">Powered by <br><a href="http://www.gonow.com.br"><img src="images/logoGonow.gif" /></a></p>
			
		</div>
		<p class="copyright">c 2010 CDO Todos los derechos reservados</p>
	</div>
</div>

<!-- 			footer -->


</body>
</html>
