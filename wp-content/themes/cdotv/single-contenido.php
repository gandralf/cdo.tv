<?php get_header();?>
<div id="videos_content">
    <div class="internal">
        <?php
        if(have_posts()): while(have_posts()): the_post();
        ?>
        <h2 class="title"><?php the_title(); ?></h2>
        <h6 class="excerpt"><?php the_excerpt();?></h6>
        <p class="published">
            <span class="date">Publicado em: <?php the_time("d/m/Y"); ?></span>
            <span class="author">Por <?php the_author();?></span>
        </p>
        <?php if(class_exists('MultiPostThumbnails') && MultiPostThumbnails::has_post_thumbnail('contenido', 'second-featured-image')):
            MultiPostThumbnails::the_post_thumbnail('contenido', 'second-featured-image', null, 'second-featured-image-thumbnail', array('align' => 'left', 'width' => 290, 'height' => 180));
        endif;
        ?>
        <?php the_content(); ?>
        <?php endwhile;endif;?>
        <div style="clear:both;"></div>
    </div>
</div>
<?php get_footer();?>
