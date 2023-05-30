<!--MAIN BODY-->
<section class="head-pages">
    <a href="<?php bloginfo('url'); ?>">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
    </a>
</section>

<div class="container-fluid no-padd  margin-lg-120b margin-sm-80b margin-xs-50b">
    <div class="row-fluid no-padd">
        <div class="col-sm-12 no-padd">
            <div class="banner-slider-wrap andra ">
                <div class="swiper-container swiper" data-autoplay="1" data-loop="1" data-speed="3000"
                   data-space-between="30">
                    <div class="swiper-wrapper">
                        <?php if(have_rows('lista_carrossel')) : while(have_rows('lista_carrossel')) : the_row(); ?>
                        <?php
                        $attachment_id = get_sub_field('imagem');
                        $imagem = wp_get_attachment_image_src( $attachment_id, 'carrossel-padrao' );
                        ?>
                        <div class="swiper-slide">
                            <img src="<?php echo $imagem[0]; ?>" alt="<?php the_title(); ?>">
                        </div>
                        <?php endwhile; endif; ?>
                    </div>
                    <!-- <div class="pag-wrapper">
                        <div class="swiper-pagination"></div>
                    </div> -->
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
                    <img class="s-img-switch" src="<?php echo $imagem[0]; ?>" alt="banner image">
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
    <?php if(is_page('lunch-time')) : ?>
    <div class="portfolio-slider-wrap full_showcase_slider showcase_slider ">
        <div class="swiper-container" data-mouse="0" data-space="0" data-pagination-type="bullets"
            data-mode="horizontal" data-autoplay="5000" data-loop="1" data-speed="1500" data-center="0"
            data-responsive="responsive" data-slides-per-view="4" data-xs-slides="1,0"
            data-sm-slides="2,0" data-md-slides="3,0" data-lg-slides="4,0">
            <div class="swiper-wrapper">
                <?php
                $cat_id = $cat;
                $args = array(
                    'cat' => 5,
                    'posts_per_page' => -1,
                );
                $query = new WP_Query( $args );
                ?>
                <?php if ( $query->have_posts() ) : ?>
                <?php while ( $query->have_posts() ) : $query->the_post(); ?>
                <div class="swiper-slide">
                    <div class="slide-image">
                        <span class="images-slider-wrapper">
                            <?php
                            $attachment_id = get_field('imagem');
                            $imagem = wp_get_attachment_image_src( $attachment_id, 'carrossel-viagens' );
                            ?>
                            <img src="<?php echo $imagem[0]; ?>" class="s-img-switch">
                        </span>
                    </div>
                    <div class="content-showcase-wrapper ">
                        <div class="slide-title"><a href="<?php the_permalink(); ?>" target="_self"><?php the_title(); ?></a></div>
                        <div class="slide-category"><a href="<?php the_permalink(); ?>" rel="tag"><?php the_field('descricao'); ?></a></div>
                    </div>
                </div>
                <?php endwhile; wp_reset_postdata(); endif; ?>
            </div>
            <div class="swiper-button-prev swiper-buttons"></div>
            <div class="swiper-button-next swiper-buttons"></div>
        </div>
    </div>
    <?php elseif(is_page('nothing-basic')) : ?>
        <div class="row-fluid">
            <div class="col-sm-12 no-padd">
                <div class=" no-padd-xs">
                    <div class="project-detail-block-outer invert">
                        <?php
                        $args = array(
                            'post_type' => 'product',
                            'posts_per_page' => -1,
                        );
                        $query = new WP_Query( $args );
                        ?>
                        <?php if ( $query->have_posts() ) : ?>
                        <?php while ( $query->have_posts() ) : $query->the_post(); ?>
                        <div class="project-detail-block-wrapper">
                            <a href="<?php the_permalink(); ?>">
                            <div class="project-detail-block-item">
                            <div class="project-detail-block-title">
                                        <?php the_title(); ?> </div>
                                        <div class="project-detail-block-descr">
                                            <p>
                                                <?php echo get_the_date('d M'); ?> de <?php echo get_the_date('Y'); ?>
                                            </p>
                                        </div>
                                    </div>
                                </a>
                                </div>
                        <?php endwhile; wp_reset_postdata(); endif; ?>
                    </div>
                </div>
            </div>
        </div>
    <?php else :  ?>
    <div class="row-fluid">
        <div class="col-sm-12 no-padd">
            <div class=" no-padd-xs">
                <div class="project-detail-block-outer invert">
                    <?php if(is_page('travel-time')) {
                        $cat = 2;
                    }
                    elseif(is_page('hey-nutri')) {
                        $cat = 4;
                    }
                    ?>
                    <?php
                    $cat_id = $cat;
                    $args = array(
                        'cat' => $cat_id,
                        'posts_per_page' => -1,
                    );
                    $query = new WP_Query( $args );
                    ?>
                    <?php if ( $query->have_posts() ) : ?>
                    <?php while ( $query->have_posts() ) : $query->the_post(); ?>
                    <div class="project-detail-block-wrapper">
                        <a href="<?php the_permalink(); ?>">
                        <div class="project-detail-block-item">
                        <div class="project-detail-block-title">
                                    <?php the_title(); ?> </div>
                                    <div class="project-detail-block-descr">
                                        <p>
                                            <?php echo get_the_date('d M'); ?> de <?php echo get_the_date('Y'); ?>
                                        </p>
                                    </div>
                                </div>
                            </a>
                            </div>
                    <?php endwhile; wp_reset_postdata(); endif; ?>
                </div>
            </div>
        </div>
    </div>
    <?php endif; ?>
</div>
<?php if(is_page('hey-nutri')) : ?>
<div class="container no-padd">
    <div class=" row-fluid   margin-sm-0t">
        <div class="col-md-12 js-load-more margin-sm-50t margin-lg-70b margin-sm-30b" data-unique-key="blog-posts" data-start-page="1" data-max-page="2" data-next-link="blog-page-2.html">
            <div class="row-fluid">
                    <div class="column column_container col-sm-12 margin-lg-20b">
                            <div class="column-inner ">
                                    <div class="wrapper">
                                            <div class="heading  Center dark">
                                                    <div class="subtitle ">LATEST  CONTENTS</div>
                                            </div>
                                    </div>
                            </div>
                    </div>
            </div>
            <div class="row prague-blog-grif-outer js-load-more-block">
                <?php
                $cat_id = $cat;
                $args = array(
                    'cat' => 7,
                    'posts_per_page' => 3,
                );
                $query = new WP_Query( $args );
                ?>
                <?php if ( $query->have_posts() ) : ?>
                <?php while ( $query->have_posts() ) : $query->the_post(); ?>
                <div class="post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern blog-post col-sm-4 col-xs-12 js-filter-simple-block">
                    <div class="prague-blog-grid-wrapper">
                        <div class="blog-grid-img">
                            <?php
                            $attachment_id = get_field('imagem');
                            $imagem = wp_get_attachment_image_src( $attachment_id, 'list-to-travel-1' );
                            ?>
                            <img src="<?php echo $imagem[0]; ?>" class="s-img-switch" alt="blog image" />
                        </div>
                        <div class="blog-grid-content">
                            <div class="blog-grid-post-date">
                            <?php echo get_the_date('d M'); ?> de <?php echo get_the_date('Y'); ?>
                            </div>
                            <h3 class="blog-grid-post-title"><a href="#"><?php the_title(); ?></a></h3>
                            <div class="blog-grid-post-excerpt">
                                <p><?php the_field('descricao'); ?></p>
                            </div>
                            <a href="<?php the_permalink(); ?>" class="blog-grid-link a-btn-arrow-2">
                                <span class="arrow-right"></span>
                                READ MORE
                            </a>
                        </div>
                    </div>
                </div>
                <?php endwhile; wp_reset_postdata(); endif; ?>
            </div>
        </div>
    </div>
</div>
<?php endif; ?>