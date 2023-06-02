    <div class="menu-footer">
        <div class="container-fluid">
            <div class="wpb_column vc_column_container col-sm-12 no-padd  margin-lg-35t margin-sm-20t margin-lg-50b">
                <div class="vc_column-inner ">
                    <?php if(!wp_is_mobile()) : ?>
                    <div class="row prague_masonry prague_count_col5 prague_gap_col10 no-footer-content prague-load-wrapper menu-footer-desktop"
                        data-columns="prague_count_col4" data-gap="prague_gap_col15">
                        <?php if(have_rows('lista_menu_footer','options')) : while(have_rows('lista_menu_footer','options')) : the_row(); ?>
                        <div class="portfolio-item-wrapp">
                            <div class="portfolio-item">
                                <div class="project-masonry-wrapper">
                                    <a class="project-masonry-item-img-link" href="<?php the_sub_field('link'); ?>" target="_self">
                                        <?php
                                        $attachment_id = get_sub_field('imagem');
                                        $imagem = wp_get_attachment_image_src( $attachment_id, 'menu-footer' );
                                        ?>
                                        <img src="<?php echo $imagem[0]; ?>"  class="s-img-switch wp-post-image" alt="<?php the_sub_field('titulo'); ?>" data-s-hidden="true" data-s-sibling="true" />
                                        <div class="project-masonry-item-img"></div>
                                        <div class="project-masonry-item-content">
                                            <h4 class="project-masonry-item-title"><?php the_sub_field('titulo'); ?></h4>
                                        </div>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <?php endwhile; endif; ?>
                    </div>
                    <?php else : ?>
                    <div class="menu-footer-carrossel">
                        <div class="swiper-container swiper" data-autoplay="1" data-loop="1" data-speed="3000"
                        data-space-between="30">
                            <div class="swiper-wrapper">
                                <?php if(have_rows('lista_menu_footer','options')) : while(have_rows('lista_menu_footer','options')) : the_row(); ?>
                                    <div class="swiper-slide">
                                        <a href="<?php the_sub_field('link'); ?>" target="_self">
                                            <?php
                                            $attachment_id = get_sub_field('imagem');
                                            $imagem = wp_get_attachment_image_src( $attachment_id, 'menu-footer' );
                                            ?>
                                            <img src="<?php echo $imagem[0]; ?>" alt="<?php the_sub_field('titulo'); ?>" data-s-hidden="true" data-s-sibling="true" />

                                            <div class="project-item-content">
                                                <h4 class="project-item-title"><?php the_sub_field('titulo'); ?></h4>
                                            </div>
                                        </a>
                                    </div>
                                <?php endwhile; endif; ?>
                            </div>
                        </div>
                    </div>
                    <?php endif; ?>
                </div>
            </div>
        </div>
    </div>
    <!--/MAIN BODY-->

    <!-- START FOOTER -->
    <footer class="prague-footer default">
        <img src="#" class="s-img-switch" alt="footer banner" />
        <div class="footer-content-outer">
            <div class="footer-top-content">
                <div class="prague-footer-main-block">
                    <div class="prague-logo">
                        <a href="@">
                            <img src="#" width="250" data-lazy-src="<?php bloginfo('template_url'); ?>/img/hey-outside.co.png" class="attachment-full size-full"  alt="logo" />
                        </a>
                    </div>
                    <div class="footer-main-content">
                        <p>CNPJ -  48.240.025/0001-99<br>OUTSIDE.CO (C) 2022 ALL RIGHTS RESERVED</p>
                    </div>
                </div>
                <div class="prague-footer-info-block">
                    <img src="<?php bloginfo('url'); ?>" width="180" data-lazy-src="<?php bloginfo('template_url'); ?>/img/slogan.png" class="attachment-full size-full"
                                alt="logo" />

                    <div class="footer-info-block-content">
                        <p><a href="tel:<?php the_field('telefone','options'); ?>"><?php the_field('telefone','options'); ?> </a>
                        <a href="mailto:<?php the_field('email','options'); ?>"><?php the_field('email','options'); ?></a>
                        <?php the_field('endereco','options'); ?></p>
                    </div>
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
            </div>
        </div>
    </footer>
    <!--/END FOOTER-->

    <script src="<?php bloginfo('template_url'); ?>/js/isotope.pkgd.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/tweenMax.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/swiper.min.js"></script>
	<script src="<?php bloginfo('template_url'); ?>/js/jquery-ui.js"></script>
	<script src="<?php bloginfo('template_url'); ?>/js/bootstrap.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/hammer.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/foxlazy.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/all.js?v=8"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/split-slider.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/kenburn.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/jquery.multiscroll.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/countTo.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/skills.js"></script>
	<script src="<?php bloginfo('template_url'); ?>/js/banner_slider.js"></script>
	<script src="<?php bloginfo('template_url'); ?>/js/revolution-slider.js"></script>
	<script src="<?php bloginfo('template_url'); ?>/js/jquery.magnific-popup.min.js"></script>
    <script src="<?php bloginfo('template_url'); ?>/js/fullscreen-projets-masonry.js"></script>
    <?php wp_footer(); ?>
</body>

</html>