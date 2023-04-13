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
                            <ul class="main-menu">
                                <li class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="#">Home</a>
                                </li>
                                <li class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="#">TRAVEL TIME</a>
                                </li>
                                <li class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="#">NOTHING BASIC</a>
                                </li>
                                <li class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="#">SOCIAL MIDIA</a>
                                </li>
                                <li class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="#">HEY NUTRI</a>
                                </li>
                                <li class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="#">WORKOUT</a>
                                </li>
                                <li class="menu-item menu-item-type-custom menu-item-object-custom">
                                    <a href="#">BRUNCH TIME</a>
                                </li>
                            </ul>
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
                        <a target="_blank" href="https://www.behance.net/foxthemes">
                            <i aria-hidden="true" class="fa fa-instagram"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://www.facebook.com/foxthemes.page/">
                            <i aria-hidden="true" class="fa fa-facebook"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://twitter.com/foxthemes_offic">
                            <i aria-hidden="true" class="fa fa-linkedin"></i>
                        </a>
                    </li>
                    <li>
                        <a target="_blank" href="https://www.pinterest.com/foxthemes/">
                            <i aria-hidden="true" class="fa fa-pinterest-p"></i>
                        </a>
                    </li>
                </ul>
            </div>
            <!--/SOCIAL-->
        </div>
    </header>
    <!--END HEADER-->