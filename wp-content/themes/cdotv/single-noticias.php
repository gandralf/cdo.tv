<?php get_header();?>
<div id="content-noticia">
    <?php
    if(have_posts()): while(have_posts()): the_post();
    ?>
    <h2><?php the_title(); ?></h2>
    <h6 class="subtitle"><?php echo get_the_excerpt();?></h6>
    <p class="published">
        <span class="date-published"><?php the_time('d'); ?> de <?php echo myDate(get_the_time('F'));?> <?php the_time('Y, H:i'); ?> hrs</span>
        <br/><span class="author">Por <?php the_author();?></span>
    </p>
    <?php the_content(); ?>
    <?php endwhile;endif;?>
   
</div>
<?php get_footer();?>
