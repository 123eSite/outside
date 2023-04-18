<?php
/*
* Template Name: Modelo Post Brunch Time Viagens
* description: Esse é o template padrão para Post Brunch Time Viagens
* Template Post Type: post
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>

    <!--MAIN BODY-->
    <section class="head-pages">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
    </section>

    <div class="banner">
        <?php
        $attachment_id = get_field('imagem_banner_topo');
        $imagem = wp_get_attachment_image_src( $attachment_id, 'banner-to-travel' );
        ?>
        <img src="<?php echo $imagem[0]; ?>" alt="<?php the_title(); ?>">
    </div>

    <div class="container margin-lg-50t margin-lg-50b margin-sm-50b padd-only-xs">
        <div class="row justify-content-center">
            <div class="col-sm-12 col-lg-9">
                <div class="no-padd simple dark">
                    <div class="content no-marg-bottom text-center">
                        <div class="subtitle"><?php the_field('subtitulo_viagens'); ?></div>
                        <h2 class="title"><?php the_field('titulo_viagens'); ?></h2>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container margin-lg-50t margin-lg-90b margin-sm-50b padd-only-xs">
        <div class="row justify-content-center">
            <div class="col-md-9">
                <!-- Post content -->
                <div class="post-detailed post-1104 post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern">

                    <div class="prague-post-content-outer">

                        <div class="prague-post-content">
                            <?php the_field('texto_viagens'); ?>
                        </div>
                        <div class="prague-post-info">
                            <div class="prague-share-icons">
                                <div class="prague-share-label"> COMPARTILHE </div>
                                <?php echo addSharePost(get_permalink(), get_the_title()) ?>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- End post content -->
            </div>
        </div>
    </div>
    <div class="container no-padd margin-top margin-lg-90b">
        <div class="row-fluid no-padd">
            <div class="col-sm-12 no-padd ">
                        <div class="portfolio-slider-wrap full_showcase_slider showcase_slider ">
                            <div class="swiper-container" data-mouse="0" data-space="0" data-pagination-type="bullets"
                                data-mode="horizontal" data-autoplay="5000" data-loop="1" data-speed="1500" data-center="0"
                                data-responsive="responsive" data-slides-per-view="4" data-xs-slides="1,0"
                                data-sm-slides="2,0" data-md-slides="3,0" data-lg-slides="4,0">
                                <div class="swiper-wrapper">
                                    <?php if(have_rows('lista_viagens')) : while(have_rows('lista_viagens')) : the_row(); ?>
                                    <div class="swiper-slide">
                                        <div class="slide-image">
                                            <span class="images-slider-wrapper">
                                                <?php
                                                $attachment_id = get_sub_field('imagem');
                                                $imagem = wp_get_attachment_image_src( $attachment_id, 'carrossel-viagens' );
                                                ?>
                                                <img src="<?php echo $imagem[0]; ?>" alt="<?php the_sub_field('titulo'); ?>" class="s-img-switch">
                                            </span>
                                        </div>
                                        <div class="content-showcase-wrapper ">
                                            <div class="slide-title"><a href="<?php the_sub_field('link'); ?>" target="_self"><?php the_sub_field('titulo'); ?></a></div>
                                            <div class="slide-category"><a href="<?php the_sub_field('link'); ?>" rel="tag"><?php the_sub_field('descricao'); ?></a></div>
                                        </div>
                                    </div>
                                    <?php endwhile; endif; ?>
                                </div>
                                <div class="swiper-button-prev swiper-buttons"></div>
                                <div class="swiper-button-next swiper-buttons"></div>
                            </div>
                    </div>
            </div>
        </div>
    </div>

<?php endwhile; endif; ?>
<?php get_footer(); ?>


