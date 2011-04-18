<div id="federaciones">
	<h3 class="label-federaciones"><img src="<?php echo bloginfo('template_url');?>/images/img-label-federaciones.png" /></h3>
	<div align="center">
		 <?php
	        $args = array('post_type' => 'federaciones',
	            'post_status' => 'publish',
	            'orderby' => 'ASC',
	        	'posts_per_page' => 12
	        );
	        
	        $wp_query = new WP_Query($args);
	        
			if(have_posts()){
				echo '<ul class="panel-thumbnail-federaciones">';
				$count = 0;
				while(have_posts()){
					the_post();
					echo '<li>';
					echo '<a href="'.get_permalink().'" title="'.the_title_attribute('echo=0').'" class="new_content">';
					
					if (class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('federaciones', 'thumbnail-federaciones-image')) {
						MultiPostThumbnails::the_post_thumbnail('federaciones', 'thumbnail-federaciones-image', NULL, 'thumbnail-federaciones-image'); 
					}
				}
				echo '</ul>';
			}

			wp_reset_query();
        ?>
	</div>
</div>