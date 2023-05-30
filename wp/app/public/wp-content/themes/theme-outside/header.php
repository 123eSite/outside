<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="format-detection" content="telephone=no" />
    <link rel="apple-touch-icon" sizes="57x57" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-57x57.png">
    <link rel="apple-touch-icon" sizes="60x60" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-60x60.png">
    <link rel="apple-touch-icon" sizes="72x72" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-72x72.png">
    <link rel="apple-touch-icon" sizes="76x76" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-76x76.png">
    <link rel="apple-touch-icon" sizes="114x114" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-114x114.png">
    <link rel="apple-touch-icon" sizes="120x120" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-120x120.png">
    <link rel="apple-touch-icon" sizes="144x144" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-144x144.png">
    <link rel="apple-touch-icon" sizes="152x152" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-152x152.png">
    <link rel="apple-touch-icon" sizes="180x180" href="<?php bloginfo('template_url'); ?>/img/fav/apple-icon-180x180.png">
    <link rel="icon" type="image/png" sizes="192x192"  href="<?php bloginfo('template_url'); ?>/img/fav/android-icon-192x192.png">
    <link rel="icon" type="image/png" sizes="32x32" href="<?php bloginfo('template_url'); ?>/img/fav/favicon-32x32.png">
    <link rel="icon" type="image/png" sizes="96x96" href="<?php bloginfo('template_url'); ?>/img/fav/favicon-96x96.png">
    <link rel="icon" type="image/png" sizes="16x16" href="<?php bloginfo('template_url'); ?>/img/fav/favicon-16x16.png">
    <link rel="manifest" href="<?php bloginfo('template_url'); ?>/img/favmanifest.json">
    <meta name="msapplication-TileColor" content="#ffffff">
    <meta name="msapplication-TileImage" content="<?php bloginfo('template_url'); ?>/img/fav/ms-icon-144x144.png">
    <meta name="theme-color" content="#ffffff">
    <title><?php bloginfo( 'name' ); if(!is_page('home')) { echo ' | ';   wp_title(''); } ?></title>
    <link rel="stylesheet" href="https://use.typekit.net/qxq3ulz.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/swiper.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/slick.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/magnific-popup.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/font-awesome/css/font-awesome.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/et-line-font.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/before-after.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/bootstrap.min.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/unit-test.css">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/style.css?v=11">
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/fullscreen-projects.css">
    <?php wp_head(); ?>
    <!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js?id=G-F7PBSC3F3H"></script>
<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());

  gtag('config', 'G-F7PBSC3F3H');
</script>
</head>

<body <?php body_class(); ?>>

    <!--HEADER-->
    <header class="prague-header simple sticky-menu sticky-mobile-menu light ">
        <!--LOGO-->
        <div class="prague-logo">
            <a href="<?php bloginfo('url'); ?>">
                <img src="<?php bloginfo('template_url'); ?>/img/outside.co-offwhite.svg" width="200" class="image_logo" alt="logo">
            </a>
        </div>
        <!--/LOGO-->
        <div class="prague-header-wrapper">
            <!--NAVIGATION-->
            <div class="prague-navigation">
                <div class="pargue-navigation-wrapper">
                    <div class="prague-navigation-inner">
                        <nav>
                            <?php wp_nav_menu(array('menu'=> 2, 'menu_class' => 'main-menu', 'container' => '')); ?>
                        </nav>
                    </div>
                </div>
            </div>
            <!--/NAVIGATION-->

            <!-- mobile icon -->
            <div class="prague-nav-menu-icon">
                <a href="#">
                    <i></i>
                </a>
            </div>
            <!-- /mobile icon -->

            <!--SOCIAL-->
            <div class="prague-social-nav">
                <ul class="social-content">
                    <li>
                        <a target="_blank" href="<?php the_field('instagram','options'); ?>">
                            <i aria-hidden="true" class="fa fa-instagram"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="<?php the_field('facebook','options'); ?>">
                            <i aria-hidden="true" class="fa fa-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="<?php the_field('linkedin','options'); ?>">
                            <i aria-hidden="true" class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="<?php the_field('pinterest','options'); ?>">
                            <i aria-hidden="true" class="fa fa-pinterest-p"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!--/SOCIAL-->
        </div>
    </header>
    <!--END HEADER-->