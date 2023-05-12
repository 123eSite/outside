<?php
/*
* Template Name: Modelo Post Marcas
* description: Esse é o template padrão para Post Marcas
* Template Post Type: post
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
    <!--MAIN BODY-->
    <section class="head-pages" style="background: #3D3D3D;">
    <a href="<?php bloginfo('url'); ?>">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" style="filter: brightness(0)invert(1);">
</a>
    </section>

    <div class="container margin-lg-50t margin-lg-90b margin-sm-50b padd-only-xs">
        <div class="row justify-content-center">
            <div class="col-sm-12 col-lg-9">
                <div class="no-padd simple dark">
                    <div class="content no-marg-bottom text-center">
                        <div class="subtitle"><?php the_field('subtitulo_austral'); ?></div>
                        <h2 class="title"><?php the_field('titulo_austral'); ?></h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div id="gallery-1" class="gallery col-md-10 margin-lg-50t galleryid-1104 gallery-columns-3 gallery-size-full flex-img">
                <?php if(have_rows('lista_austral')) : while(have_rows('lista_austral')) : the_row(); ?>
                <?php
                $attachment_id = get_sub_field('imagem');
                $imagem = wp_get_attachment_image_src( $attachment_id, 'imagem-astral' );
                ?>
                <figure class="gallery-item">
                    <div class="gallery-icon portrait">
                        <a href="post-1.html"><img src="<?php echo $imagem[0]; ?>" data-lazy-src="<?php echo $imagem[0]; ?>" class="attachment-full size-full" alt="<?php the_title(); ?>"></a>
                    </div>
                </figure>
                <?php endwhile; endif; ?>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-9">
                <!-- Post content -->
                <div class="post-detailed post-1104 post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern">
                    <div class="prague-post-content-outer">
                        <div class="prague-post-content">
                           <?php the_field('texto_austral'); ?>
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
    <?php if(get_field('banner_patrocinio')) : ?>
    <div class="banner margin-lg-100t ">
        <a <?php if(get_field('link_banner_patrocinio')) : ?> target="_blank" href="<?php the_field('link_banner_patrocinio'); ?>" <?php endif; ?>>
            <?php
            $attachment_id = get_field('banner_patrocinio');
            $imagem = wp_get_attachment_image_src( $attachment_id, 'banner-to-travel' );
            ?>
            <img src="<?php echo $imagem[0]; ?>" alt="<?php the_title(); ?>">
        </a>
    </div>
    <?php endif; ?>
    <div class="container margin-lg-90b margin-sm-50b padd-only-xs">
        <div class="row justify-content-center margin-lg-100t">
            <div class="col-sm-7 no-padd">
                <div class="padd-only-xs ">
                    <div class="text-center dark">
                        <div class="subtitle "><?php the_field('subtitulo_patrocinio'); ?></div>
                        <h2 class="title"><?php the_field('titulo_patrocinio'); ?></h2>
                        <div class="content ">
                            <div class="text-center"><?php the_field('texto_patrocinio'); ?></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row-fluid no-padd margin-lg-30t margin-lg-110b margin-sm-20t margin-sm-70b">
            <div class="col-sm-12 col-lg-offset-2 col-lg-8 col-md-offset-1 col-md-10 col-sm-offset-0 col-xs-12 no-padd">
                <div class="padd-only-xs ">
                    <div class="prague-formidable  vc_formidable">
                        <div class="frm_forms  with_frm_style frm_style_formidable-style-2-2" id="frm_form_4_container">
                            <div class="frm_form_fields ">
                                <fieldset>
                                    <?php echo do_shortcode('[contact-form-7 id="378" title="Contato"]'); ?>
                                </fieldset>
                            </div>
                        </div>
                    </div>
                    <div class="test 4"></div>
                </div>
            </div>
        </div>
    </div>
<?php endwhile; endif; ?>
<?php get_footer(); ?>


