<?php 
/*
 * Template Name: Contenido
 */
get_header();
?>
<div id="videos_content">
    <div id="news">
        <?php
        $args = array('post_type' => 'contenido',
            'post_status' => 'publish',
            'orderby' => 'DESC',
            #'posts_per_page' => 1,
            #'paged' => $paged
            );
        $wp_query = new WP_Query($args);
        if(have_posts()): while(have_posts()): the_post();
            echo '<div class="new_content">';
            #MultiPostThumbnails::the_post_thumbnail('contenido', 'second-featured-image', NULL, 'post-second-featured-image-thumbnail');
            echo '<span>'.get_the_post_thumbnail($post->ID).'</span>';
            echo '<h3>'.splitText(get_the_title(), 25).'</h3>';
            echo '<h6>'.splitText(get_the_excerpt(), 150).'</h6></div>';
        endwhile; endif;
        #wp_pagenavi(array('query' => $wp_query));
        wp_reset_query();
        ?>
    </div>
    <div id="federaciones">
        <div align="center"></div>
    </div>
</div>
<?php get_footer();?>
