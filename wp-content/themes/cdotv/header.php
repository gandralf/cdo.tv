<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
        <title><?php
        global $page, $paged;
        wp_title('|', true, 'right');
        bloginfo('name');
        $site_description = get_bloginfo('description', 'display');
        if($site_description && (is_home() || is_front_page()))
            echo " | $site_description";
        if($paged >= 2 || $page >= 2)
            echo ' | ' . sprintf( 'Page %s', max( $paged, $page ));
        ?></title>
            <link rel="stylesheet" type="text/css" media="all" href="<?php bloginfo( 'stylesheet_url' ); ?>" />
    </head>
    <body>
        <!-- CONTAINER -->
        <div id="container">
            <!-- HEADER -->
            <div id="header">
                <h1 class="logo">CDO - CANAL DEPORTE OLIMPICO</h1>
                <!-- BANNER -->
                <div class="banner">
                <?php banner(); ?>
                </div>
                <!-- /BANNER -->
                <div id="menu">
                        <div class="menu-border-left"></div>
                        <div class="menu-center">
                                <?php wp_nav_menu( array('menu' => 'Menu header'));?>
                        </div>
                        <div class="menu-border-right"></div>
                </div>
        </div>
        <!-- /HEADER -->
        <!-- CONTENT -->
        <div class="content">
