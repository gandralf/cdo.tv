<div id="videos">
	<div align="center">
		<br/>
		<br/>
		<!-- <img src="<?php echo bloginfo("template_url");?>/images/videos.png" /> -->
		
		 <?php
	        $args = array('post_type' => 'contenido',
	            'post_status' => 'publish',
	            'orderby' => 'DESC',
	        	'posts_per_page' => 2,
	        	'category_name' => 'Featuared'
				
	        );
	        
	        
	        $wp_query = new WP_Query($args);
	        
	        
	        
	        if(have_posts()): while(have_posts()): the_post();
	            echo '<a href="'.get_permalink().'" title="'.the_title_attribute('echo=0').'" class="new_content">';
	            if (class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('contenido', 'second-featured-image')) {
					MultiPostThumbnails::the_post_thumbnail('contenido', 'second-featured-image', NULL, 'post-second-featured-image-thumbnail'); 
																			
	        	}
	            the_title('<h3>','</h3>');
	            echo '<h6>'.get_the_excerpt().'</h6></a>';
	        endwhile; endif;
	        
	        wp_reset_query();
        ?>
		
		
		
	</div>
	<div id="federaciones">
		<div align="center">
			<img src="<?php echo bloginfo("template_url");?>/images/federaciones.png" />
		</div>
	</div>
</div>