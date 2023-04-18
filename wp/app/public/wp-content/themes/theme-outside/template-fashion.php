<?php
/*
* Template Name: Modelo Nothing Basic
* description: Esse é o template padrão para Nothing Basic
* Template Post Type: post
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
<!--MAIN BODY-->
<section class="head-pages">
    <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
</section>
<?php
$attachment_id = get_field('imagem_banner_topo');
$imagem = wp_get_attachment_image_src( $attachment_id, 'banner-to-travel' );
?>
<div class="banner">
    <img src="<?php echo $imagem[0]; ?>" alt="">
</div>
<div class="container no-padd margin-lg-50t padding-lg-100b">
    <div class="row">
        <div class="col-sm-12 col-lg-offset-2 col-lg-8 margin-xs-0b padding-lg-55b">
            <div class="no-padd simple dark">
                <div class="content no-marg-bottom text-center">
                    <div class="subtitle"><?php the_field('subtitulo_publicacao'); ?></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center">
        <div class="col-md-9">
            <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="row-fluid">
                <div class=" vc_column_container col-sm-6 padding-lg-30t padding-xs-0t  no-padd">
                    <?php $count=1; if(have_rows('lista_publicacao')) : while(have_rows('lista_publicacao')) : the_row(); ?>
                    <?php
                    $attachment_id = get_sub_field('imagem');
                    $imagem = wp_get_attachment_image_src( $attachment_id, 'fashion-'.$count );
                    ?>
                    <?php if($count==1) : ?>
                    <div class="no-padd-inner ">
                        <div class="project-detail-picture-wrapper ">
                            <img  src="#" data-lazy-src="<?php echo $imagem[0]; ?>" class="attachment-full size-full no-margin-bottom padding-left no-padd-xs"
                                alt="banner image" />
                                <div class="project-detail-picture-descr">
                                    <?php the_field('texto_2_publicacao'); ?>
                                </div>
                                <?php elseif ($count==2) : ?>
                                <img src="<?php echo $imagem[0]; ?>" alt="">
                                <?php if(get_field('titulo_botao_publicacao')) : ?>
                                <a href="<?php the_field('link_botao_publicacao'); ?>" class="blog-grid-link a-btn-arrow-2">
                                    <span class="arrow-right"></span>
                                    <?php the_field('titulo_botao_publicacao'); ?>
                                </a>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <?php elseif ($count==3) : ?>
                    <div class=" vc_column_container col-sm-6 no-padd">
                        <div class="no-padd-inner ">
                            <div class="project-detail-picture-wrapper">
                                <div class="project-detail-picture-descr text-right">
                                    <h2 class="title big"><?php the_field('titulo_publicacao'); ?></h2>
                                    <?php the_field('texto_1_publicacao'); ?>
                                </div>
                                <img  src="#" data-lazy-src="<?php echo $imagem[0]; ?>" class="attachment-full size-full padding-left no-padd-xs" alt="banner image" />
                                <?php else : ?>
                                    <img  src="#" data-lazy-src="<?php echo $imagem[0]; ?>" class="attachment-full size-full padding-left no-padd-xs" alt="banner image" />
                                </div>
                            </div>
                        </div>
                    <?php endif; ?>
                    <?php $count++; endwhile; endif; ?>
                </div>
            </div>
        </div>
    </div>
<?php endwhile; endif; ?>
<?php get_footer(); ?>


