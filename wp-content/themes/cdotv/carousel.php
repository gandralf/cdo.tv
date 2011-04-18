<div id="carrocel"> 
        <div align="center">
                <div id="carousel_here"></div>
                <script>
                var dataCarousel = [<?php
                $args = array('post_type' => 'contenido',
                    'post_status' => 'publish',
                    'orderby' => 'DESC',
                    'posts_per_page' => 4,
                    'categoty_name' => 'headline');
                $wp_query = new WP_Query($args);
                $countC = 0;
                if(have_posts()): while(have_posts()): the_post();
                    if(class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('contenido', 'headline-image')):
                        $img[$countC] = MultiPostThumbnails::get_the_post_thumbnail('contenido', 'headline-image', null, 'headline-image-thumbnail');
                    endif;
                    if(class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('contenido', 'thumbnail-headline-image')):
                        $thumb[$countC] = MultiPostThumbnails::get_the_post_thumbnail('contenido', 'thumbnail-headline-image', null, 'thumbnail-headline-thumbnail');
                    endif;
                    $img[$countC] = isset($img[$countC]) && strlen($img[$countC]) > 5 ? 'img:\''.$img[$countC].'\',' : null;
                    $thumb[$countC] = isset($thumb[$countC]) && strlen($thumb[$countC]) > 5 ? 'thumb:\''.$thumb[$countC].'\',' : null;
                    $dataC[$countC] = '[{id:\''.$post->ID.'\',';
                    $dataC[$countC] .= 'title:\''.splitText(get_the_title(), 35).'\',';
                    $dataC[$countC] .= 'description:\''.wordwrap(splitText(get_the_excerpt(), 300), 60, '<br/>').'\',';
                    $dataC[$countC] .= $img[$countC];
                    $dataC[$countC] .= $thumb[$countC];
                    $dataC[$countC] .= 'url:\''.get_permalink().'\'}]';
                    $countC++;
                endwhile;
                echo $dataC = isset($dataC) ? implode(",\n", $dataC) : null;
                endif;
                wp_reset_query();
                ?>];
                </script>
	</div>
</div>
