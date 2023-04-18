<!DOCTYPE html>
<html <?php language_attributes(); ?>>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <meta name="format-detection" content="telephone=no" />
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
    <link rel="stylesheet" href="<?php bloginfo('template_url'); ?>/css/style.css?v=9">
    <?php wp_head(); ?>
</head>

<body>

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