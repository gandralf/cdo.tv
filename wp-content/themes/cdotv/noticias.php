<?php
/*
* Template Name: Noticias
*
*/
?>

<?php get_header();?>

<ul class="highlight-list-home">

	<?php
	$args = array('post_type' => 'noticias',
		'post_status' => 'publish',
		'orderby' => 'DESC'
		);
	$wp_query = new WP_Query($args);
	$count = 0;
	
	if(have_posts()): while(have_posts()): the_post();
		if (($count%2)==0) {
			echo '<li class="highlight-list-item-off-home">';
		}else{
			echo '<li class="highlight-list-item-on-home">';
		}
		echo '<a class="new_content" title="'.the_title_attribute('echo=0').'" href="'.get_permalink().'">';		
		
		if (class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('noticias', 'second-featured-image')) {
			MultiPostThumbnails::the_post_thumbnail('noticias', 'second-featured-image', NULL, 'second-featured-image-thumbnail'); 
		}
		
		echo		'<h3>'.splitText(get_the_title(), 25).'</h3>';
		echo		'<p>'.splitText(get_the_excerpt(), 150).'</p>';
		echo	'</a>';
		echo '</li>';
		$count++;
	endwhile; endif;
	#wp_pagenavi(array('query' => $wp_query));
	wp_reset_query();
	?>
</ul>

<?php get_footer();?>