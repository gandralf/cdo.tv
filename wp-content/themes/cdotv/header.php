<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title><?php
global $page, $paged;
wp_title('|', true, 'right');
bloginfo('name');
$site_description = get_bloginfo('description', 'display');
if($site_description && (is_home() || is_front_page()))
    echo " | $site_description";
if($paged >= 2 || $page >= 2)
    echo ' | ' . sprintf( 'Page %s', max( $paged, $page ));
?></title>
<link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
</head>
<body>
<div id="tudo">
	<div id="top">
		<img src="<?php echo bloginfo('template_url');?>/images/logo.png"/>
		<div id="banner">
<?php
$args = array('post_type' => 'banner',
    'post_status' => 'publish',
    'orderby' => 'rand',
    'posts_per_page' => 1);
$wp_query = new WP_Query($args);
if(have_posts()): while(have_posts()): the_post();
    if(class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('banner', 'banner-image')):
        echo '<a href="'.validateUrl(get_the_title()).'" target="_blank">';
        MultiPostThumbnails::the_post_thumbnail('banner', 'banner-image', null, 'banner-image-thumbnail');
        echo '</a>';
    endif;
endwhile;endif;wp_reset_query();
?>
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
