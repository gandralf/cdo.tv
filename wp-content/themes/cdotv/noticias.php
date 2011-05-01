<?php 
/*
 * Template Name: Noticias
 */
get_header();
?>
<div id="noticias_content">
    <div style="text-align:center;">
    <ul class="list">
        <?php
        $args = array('post_type' => 'noticias',
            'post_status' => 'publish',
            'orderby' => 'DESC',
            #'posts_per_page' => 1,
            #'paged' => $paged
            );
        $wp_query = new WP_Query($args);
        $count = 0;
        if(have_posts()): while(have_posts()): the_post();
            if (($count%2)==0) {
                    echo '<li class="highlight-list-item-off-home">';
            } else {
                    echo '<li class="highlight-list-item-on-home">';
            }
            #MultiPostThumbnails::the_post_thumbnail('contenido', 'second-featured-image', NULL, 'post-second-featured-image-thumbnail');
            the_post_thumbnail($post->ID);
            echo '<h3>'.splitText(get_the_title(), 35).'</h3>';
            echo '<p>'.splitText(get_the_excerpt(), 80).'</p>';
            echo '<a href="'.get_permalink().'" title="'.the_title_attribute('echo=0').'" class="new_content more">';
            echo 'ver más</a>';
            echo '</li>';
            $count++;
        endwhile; endif;
        #wp_pagenavi(array('query' => $wp_query));
        wp_reset_query();
        ?>
    </ul>
    </div>
</div>
<?php get_footer();?>
