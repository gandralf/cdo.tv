<?php 
/*
 * Template Name: Contenido
 */
get_header();
?>
<div id="videos">
    <div id="news">
        <?php
        $args = array('post_type' => 'contenido',
            'post_status' => 'publish',
            'orderby' => 'DESC',
            'posts_per_page' => 25,
            'paged' => $paged,
            'caller_get_posts' => 1);
        $wp_query = new WP_Query($args);
        if(have_posts()): while(have_posts()): the_post();
            $thumb = get_the_post_thumbnail(get_bloginfo('id'), 'thumbnail');
            the_title('<a href="'.get_permalink().'" title="'.the_title_attribute('echo=0').'" class="new_content"><span>'.$thumb.'</span><h3>','</h3><h6>description</h6></a>');
        endwhile; endif;
        wp_pagenavi();
        wp_reset_query();
        ?>
        <br/>
    </div>
    <div id="federaciones">
        <div align="center"></div>
    </div>
</div>
<?php get_footer();?>
