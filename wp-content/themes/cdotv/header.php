<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?php wp_title(); ?></title>
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
</head>

<body>





<div id="tudo">
	<div id="top">
		<img src="<?php echo bloginfo('template_url');?>/images/logo.png"/>
		<div id="banner">
			<img src="<?php echo bloginfo('template_url');?>/images/banner.gif" />
		</div>
	</div>
 
	<div id="conteudo">
		<center>
			<div id="menu">
				<div class="menu-border-left"></div>
				<div class="menu-center">
					<?php wp_nav_menu( array('menu' => 'Menu header'));?>
				</div>
				<div class="menu-border-right"></div>
			</div>
		</center>
	</div>