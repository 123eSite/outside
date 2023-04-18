<?php
/*
* Template Name: Modelo To Travel
* description: Esse é o template padrão para To Travel
* Template Post Type: post
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
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
<div class="container no-padd margin-lg-30t margin-lg-30b">
    <div class="row-fluid">
        <div class="col-sm-12 padd-only-xs margin-lg-30b">
            <div class="heading  Center dark">
                <div class="subtitle "><?php the_field('subtitulo_publicacoes'); ?></div>
                <h2 class="title"><?php the_field('titulo_publicacoes'); ?></h2>
            </div>
        </div>
        <div class="col-sm-12 ">
            <div class="vc_column-inner ">
                    <div data-unique-key="14ad5b356d917aa464e6341724c17a46" class="js-load-more" data-start-page="1"
                        data-max-page="1" data-next-link="">
                        <div class="row prague_masonry prague_count_col3 prague_gap_col15  no-footer-content prague-load-wrapper" data-columns="prague_count_col4" data-gap="prague_gap_col15">
                            <?php $count=1; if(have_rows('lista_publicacoes')) : while(have_rows('lista_publicacoes')) : the_row(); ?>
                            
                            <div class="portfolio-item-wrapp p_f_d7a8462 p_f_ddba60a p_f_aebfe46">
                                <div class="portfolio-item">
                                    <div class="project-masonry-wrapper">
                                        <a class="project-masonry-item-img-link" href="<?php the_sub_field('link'); ?>">
                                        <?php
                                            $attachment_id = get_sub_field('imagem');
                                            if ($count % 3 == 0) {
                                                $imagem = wp_get_attachment_image_src($attachment_id, 'list-to-travel-2');
                                            } else {
                                                $imagem = wp_get_attachment_image_src($attachment_id, 'list-to-travel-1');
                                            }
                                            ?>
                                            <img  src="<?php echo $imagem[0]; ?>" class="s-img-switch" alt="<?php the_title(); ?>" data-s-hidden="true" data-s-sibling="true"/>
                                            <div class="project-masonry-item-img"></div>
                                            <div class="project-masonry-item-content">
                                                <h4 class="project-masonry-item-title"><?php if($count%3 == 0) : ?> aaa<?php endif; ?><?php the_sub_field('titulo'); ?></h4>
                                            </div>
                                        </a>
                                    </div>
                                </div>
                            </div>
                            <?php $count++; endwhile; endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endwhile; endif; ?>
<?php get_footer(); ?>


