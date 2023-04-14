<!--MAIN BODY-->
<section class="head-pages">
    <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
</section>

<div class="container-fluid no-padd  margin-lg-120b margin-sm-80b margin-xs-50b">
    <div class="row-fluid no-padd">
        <div class="col-sm-12 no-padd">
            <div class="banner-slider-wrap andra ">
                <div class="swiper-container swiper  " data-mouse="0" data-autoplay="1" data-loop="1" data-speed="3000"
                    data-center="1" data-space-between="30" data-pagination-type="fraction" data-mode="horizontal">
                    <div class="swiper-wrapper">
                        <?php if(have_rows('lista_carrossel')) : while(have_rows('lista_carrossel')) : the_row(); ?>
                        <?php
                        $attachment_id = get_sub_field('imagem');
                        $imagem = wp_get_attachment_image_src( $attachment_id, 'carrossel-padrao' );
                        ?>
                        <div class="swiper-slide swiper-no-swiping full-height-window-hard">
                            <img src="<?php echo $imagem[0]; ?>" class="s-img-switch" alt="<?php the_title(); ?>">
                        </div>
                        <?php endwhile; endif; ?>
                    </div>
                    <div class="pag-wrapper">
                        <div class="swiper-pagination"></div>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<div class="container no-padd  margin-lg-100t margin margin-lg-55b margin-sm-50b margin-xs-20b">
    <div class="row-fluid no-padd ">
        <div class="col-sm-12 no-padd padd-only-small padd-only-md no-padd-lg">
            <div class="about-section-modern padd-only-small padd-only-md no-padd-lg">
                <div class="about-section__img">
                    <?php
                    $attachment_id = get_field('imagem_tema');
                    $imagem = wp_get_attachment_image_src( $attachment_id, 'capa-padrao' );
                    ?>
                    <img src="<?php bloginfo('template_url'); ?>/img/time-to-travel2.jpg" class="s-img-switch" alt="banner image">
                    <span class="grad-word"><?php the_field('letra_imagem_tema'); ?></span>
                </div>
                <div class="content text-right">
                    <div class="subtitle"><?php the_field('subtitulo_tema'); ?></div>
                    <h2 class="title"><?php the_field('titulo_tema'); ?></h2>
                    <div class="subtitle text-uppercase"><?php the_field('chamada_tema'); ?> </div>
                    <?php the_field('texto_tema'); ?>
                </div>
            </div>
        </div>
    </div>
</div>

<div class="container no-padd margin-lg-100t margin grid-post-page">
    <div class="row-fluid ">
        <div class="col-sm-12 col-lg-offset-2 col-lg-8 margin-xs-0b padding-lg-55b">
            <div class="no-padd simple dark">
                <div class="content no-marg-bottom text-center">
                    <div class="subtitle"><?php the_field('subtitulo_sobre'); ?></div>
                    <h2 class="title"><?php the_field('titulo_sobre'); ?></h2>
                </div>
            </div>
        </div>
    </div>
    <?php if(is_page('brunch-time')) : ?>
    <div class="portfolio-slider-wrap full_showcase_slider showcase_slider ">
        <div class="swiper-container" data-mouse="0" data-space="0" data-pagination-type="bullets"
            data-mode="horizontal" data-autoplay="5000" data-loop="1" data-speed="1500" data-center="0"
            data-responsive="responsive" data-slides-per-view="4" data-xs-slides="1,0"
            data-sm-slides="2,0" data-md-slides="3,0" data-lg-slides="4,0">
            <div class="swiper-wrapper">
                <div class="swiper-slide">
                    <div class="slide-image">
                        <span class="images-slider-wrapper">
                            <img src="<?php bloginfo('template_url'); ?>/img/restaurante1.jpg" alt="seascape-villa image" class="s-img-switch">
                        </span>
                    </div>
                    <div class="content-showcase-wrapper ">
                        <div class="slide-title"><a href="#" target="_self">Nome do Restaurante</a></div>
                        <div class="slide-category"><a href="#" rel="tag">Buenos Aires, Argentina</a></div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="slide-image">
                        <span class="images-slider-wrapper">
                            <img src="<?php bloginfo('template_url'); ?>/img/restaurante2.jpg" alt="seascape-villa image" class="s-img-switch">
                        </span>
                    </div>
                    <div class="content-showcase-wrapper ">
                        <div class="slide-title"><a href="#" target="_self">Nome do Restaurante</a></div>
                        <div class="slide-category"><a href="#" rel="tag">Buenos Aires, Argentina</a></div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="slide-image">
                        <span class="images-slider-wrapper">
                            <img src="<?php bloginfo('template_url'); ?>/img/restaurante3.jpg" alt="seascape-villa image" class="s-img-switch">
                        </span>
                    </div>
                    <div class="content-showcase-wrapper ">
                        <div class="slide-title"><a href="#" target="_self">Nome do Restaurante</a></div>
                        <div class="slide-category"><a href="#" rel="tag">Buenos Aires, Argentina</a></div>
                    </div>
                </div>
                <div class="swiper-slide">
                    <div class="slide-image">
                        <span class="images-slider-wrapper">
                            <img src="<?php bloginfo('template_url'); ?>/img/restaurante4.jpg" alt="seascape-villa image" class="s-img-switch">
                        </span>
                    </div>
                    <div class="content-showcase-wrapper ">
                        <div class="slide-title"><a href="#" target="_self">Nome do Restaurante</a></div>
                        <div class="slide-category"><a href="#" rel="tag">Buenos Aires, Argentina</a></div>
                    </div>
                </div>
            </div>
            <div class="swiper-button-prev swiper-buttons"></div>
            <div class="swiper-button-next swiper-buttons"></div>
        </div>
    </div>
    <?php else :  ?>
    <div class="row-fluid">
        <div class="col-sm-12 no-padd">
            <div class=" no-padd-xs">
                <div class="project-detail-block-outer invert">
                    <div class="project-detail-block-wrapper">
                        <div class="project-detail-block-item">
                            <div class="project-detail-block-title">
                                PATAGÔNIA </div>
                            <div class="project-detail-block-descr">
                                <p>
                                    Novembro, 2022.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="project-detail-block-wrapper">
                        <div class="project-detail-block-item">
                            <div class="project-detail-block-title">
                                ITÁLIA </div>
                            <div class="project-detail-block-descr">
                                <p>
                                    Novembro, 2022.
                                </p>
                            </div>
                        </div>
                    </div>
                    <div class="project-detail-block-wrapper">
                        <div class="project-detail-block-item">
                            <div class="project-detail-block-title">
                                HAVAÍ </div>
                            <div class="project-detail-block-descr">
                                <p>
                                    Novembro, 2022.
                                </p>
                            </div>
                        </div>
                    </div>

                </div>

            </div>
        </div>
    </div>
    <?php endif; ?>
</div>