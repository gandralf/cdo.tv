<div id="videos">
	<div align="center">
		 <?php
	        $args = array('post_type' => 'contenido',
	            'post_status' => 'publish',
	            'orderby' => 'DESC',
	        	'posts_per_page' => 3,
	        	'category_name' => 'Featuared'
	        );
	        $wp_query = new WP_Query($args);
			if(have_posts()){
				echo '<ul class="highlight-list-home">';
				$count = 0;
				while(have_posts()){
					the_post();
					
					if (($count%2)==0) {
						echo '<li class="highlight-list-item-off-home">';
					} else {
						echo '<li class="highlight-list-item-on-home">';
					}
					echo '<a href="'.get_permalink().'" title="'.the_title_attribute('echo=0').'" class="new_content">';
					if (class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('contenido', 'second-featured-image')) {
						MultiPostThumbnails::the_post_thumbnail('contenido', 'second-featured-image', NULL, 'second-featured-image-thumbnail'); 
					}
					
					$video = get_post_meta($post->ID, 'video', true);
					if ($video != '') {
						echo '<img class="icone-video" src="'. get_bloginfo('template_url') . '/images/icon-video.png" />';
					}
					
					echo '<h3>';
					$title = get_the_title();
					echo nl2br(splitText(wordwrap($title, 30, "\n"), 35));
					echo '</h3>';
					echo '<p>'. splitText(get_the_excerpt(), 80) .'</p>';
					echo '</a>';
					echo '</li>';
					$count++;
				}
				echo '</ul>';
			}

			wp_reset_query();
        ?>
		
	</div>
	
	<?php include (TEMPLATEPATH . '/federaciones.php') ; ?>
	
</div>
