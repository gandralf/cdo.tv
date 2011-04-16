<?php
/**
 * TwentyTen functions and definitions
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
