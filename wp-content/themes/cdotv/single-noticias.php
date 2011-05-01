<?php get_header();?>
<div id="videos_content">
    <div class="internal">
        <?php
        if(have_posts()): while(have_posts()): the_post();
        ?>
        <h2 class="title"><?php the_title(); ?></h2>
        <h6 class="excerpt"><?php echo get_the_excerpt();?></h6>
        <p class="published">
            <span class="date"><?php the_time('d'); ?> de <?php echo myDate(get_the_time('F'));?> <?php the_time('Y, H:i'); ?> hrs</span>
            <span class="author">Por <?php the_author();?></span>
        </p>
        <?php the_content(); ?>
        <?php endwhile;endif;?>
        <div class="clearBoth"></div>
    </div>
</div>
<?php get_footer();?>
