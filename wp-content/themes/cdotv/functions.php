<?php
/**
 * CDOTV functions and definitions
 *
 * @package WordPress
 * @subpackage CDO.TV
 * @since CDO.TV 1.0
 */

function cdotv_widgets_init() {
	register_sidebar( array(
		'name' => __( 'Primary Widget Area', 'cdotv' ),
		'id' => 'primary-widget-area',
		'description' => __( 'The primary widget area', 'cdotv' ),
		'before_widget' => '<li id="%1$s" class="widget-container %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'Secondary Widget Area', 'cdotv' ),
		'id' => 'secondary-widget-area',
		'description' => __( 'The secondary widget area', 'cdotv' ),
		'before_widget' => '<li id="%1$s" class="widget-container %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'First Footer Widget Area', 'cdotv' ),
		'id' => 'first-footer-widget-area',
		'description' => __( 'The first footer widget area', 'cdotv' ),
		'before_widget' => '<div id="%1$s" class="fNav %2$s">',
		'after_widget' => '</div>',
		'before_title' => '<h5>',
		'after_title' => '</h5>',
	) );

	register_sidebar( array(
		'name' => __( 'Second Footer Widget Area', 'cdotv' ),
		'id' => 'second-footer-widget-area',
		'description' => __( 'The second footer widget area', 'cdotv' ),
		'before_widget' => '<li id="%1$s" class="widget-container %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'Third Footer Widget Area', 'cdotv' ),
		'id' => 'third-footer-widget-area',
		'description' => __( 'The third footer widget area', 'cdotv' ),
		'before_widget' => '<li id="%1$s" class="widget-container %2$s">',
		'after_widget' => '</li>',
		'before_title' => '<h3 class="widget-title">',
		'after_title' => '</h3>',
	) );

	register_sidebar( array(
		'name' => __( 'Fourth Footer Widget Area', 'cdotv' ),
		'id' => 'fourth-footer-widget-area',
		'description' => __( 'The fourth footer widget area', 'cdotv' ),
		'before_widget' => '<div id="%1$s" class="cdo %2$s">',
		'after_widget' => '</div>',
		'before_title' => '',
		'after_title' => '',
	) );
}
add_action( 'widgets_init', 'cdotv_widgets_init' );

function create_post_type_noticias(){
        register_post_type('noticias', array(
                'label' => 'Noticias',
                'singular_label' =>'noticia',
                'public' => true,
                'show_ui' => true,
                '_builtin' => false,
                'capability_type' => 'post',
                'hierarchical' => false,
                'supports' => array('title', 'author', 'excerpt', 'editor', 'thumbnail'),
                'taxonomies' => array('category'),
        ));
}
add_action('init', 'create_post_type_noticias');

function create_post_type_contenido(){
        register_post_type('contenido', array(
                'label' => 'Contenidos',
                'singular_label' =>'Contenido',
                'public' => true,
                'show_ui' => true,
                '_builtin' => false,
                'capability_type' => 'post',
                'hierarchical' => false,
                'supports' => array('title', 'author', 'excerpt', 'editor', 'thumbnail', 'custom-fields'),
                'taxonomies' => array('category'),
        ));
}
add_action('init', 'create_post_type_contenido');

function create_post_type_federaciones(){
        register_post_type('federaciones', array(
                'label' => 'Federaciones',
                'singular_label' =>'Federaciones',
                'public' => true,
                'show_ui' => true,
                '_builtin' => false,
                'capability_type' => 'post',
                'hierarchical' => false,
                'supports' => array('title', 'editor', 'custom-fields'),
                'taxonomies' => array('category'),
        ));
}
add_action('init', 'create_post_type_federaciones');

function create_post_type_banner(){
        register_post_type('banner', array(
                'label' => 'Banners',
                'singular_label' =>'Banner',
                'public' => true,
                'show_ui' => true,
                '_builtin' => false,
                'permalink' => false,
                'capability_type' => 'post',
                'hierarchical' => false,
                'supports' => array('title', 'thumbnail'),
        ));
}
add_action('init', 'create_post_type_banner');


if(function_exists('add_theme_support')){ 
        add_theme_support('post-thumbnails'); 
        set_post_thumbnail_size(100,120);
        if (class_exists('MultiPostThumbnails')) {
                new MultiPostThumbnails(array(
                        'label' => 'Second Featured Image (290x180)',
                        'id' => 'second-featured-image',
                        'post_type' => 'contenido'
                ));
                new MultiPostThumbnails(array(
                        'label' => 'Headline Image (930x400)',
                        'id' => 'headline-image',
                        'post_type' => 'contenido'
                ));
                new MultiPostThumbnails(array(
                        'label' => 'Thumbnail Headline Image (200x90)',
                        'id' => 'thumbnail-headline-image',
                        'post_type' => 'contenido'
                ));
                new MultiPostThumbnails(array(
                        'label' => 'Thumbnail Federaciones (100x75)',
                        'id' => 'thumbnail-federaciones-image',
                        'post_type' => 'federaciones'
                ));
                new MultiPostThumbnails(array(
                        'label' => 'Banner Image (615x115)',
                        'id' => 'banner-image',
                        'post_type' => 'banner'
                ));
                add_image_size('post-banner-image-thumbnail', 690, 180);
                add_image_size('post-second-featured-image-thumbnail', 290, 180);
                add_image_size('post-headline-image-thumbnail', 930, 400);
                add_image_size('post-thumbnail-headlihe-image-thumbnail', 200, 90);
                add_image_size('post-thumbnail-federaciones-image', 75, 100);
        }
}

function splitText($text, $limit) {
	$count = strlen($text);
	if ($count >= $limit) {
		$text = trim(substr($text, 0, $limit));
		$text = $text . '...';
	}
	return $text;
}

function validateUrl($url = ''){
    if(!preg_match('/(http)/i', $url)){
        return 'http://'.$url;
    }
    return $url;
}

function banner(){
    $args = array('post_type' => 'banner',
        'post_status' => 'publish',
        'orderby' => 'rand',
        'posts_per_page' => 1);
    $wp_query = new WP_Query($args);
    if($wp_query->have_posts()){
        while($wp_query->have_posts()){
            $wp_query->the_post();
            if(class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('banner', 'banner-image')){
                echo '<a href="'.validateUrl(get_the_title()).'" target="_blank">';
                MultiPostThumbnails::the_post_thumbnail('banner', 'banner-image', null, 'banner-image-thumbnail');
                echo '</a>';
            }
        }
    }
    wp_reset_query();
}

function myDate($month) {
    $mes = empty($month) ? date("F") : $month;
    switch($mes){
        case "January" : $mes = "Enero";
        break;
        case "February" : $mes = "Febrero";
        break;
        case "March" : $mes = "Marzo";
        break;
        case "April" : $mes = "Abril";
        break;
        case "May" : $mes = "Mayo";
        break;
        case "June" : $mes = "Junio";
        break;
        case "July" : $mes = "Julio";
        break;
        case "August" : $mes = "Agosto";
        break;
        case "September" : $mes = "Septiembre";
        break;
        case "October" : $mes = "Octubre";
        break;
        case "November" : $mes = "Noviembre";
        break;
        case "December" : $mes = "Diciembre";
        break;
    }
    return $mes;
}
