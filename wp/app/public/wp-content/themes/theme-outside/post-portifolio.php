<?php
/*
* Template Name: Modelo Portfólio
* description: Esse é o template padrão para Portfólio
* Template Post Type: post
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
<!--MAIN BODY-->
<section class="head-pages">
    <a href="<?php bloginfo('url'); ?>">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
    </a>
</section>

    <div class="container-fluid no-padd margin-lg-0t margin-xs-0b ">
        <div class="row-fluid">
            <div class="col-sm-12 no-padd padd-only-small ">
                <div class="masonry">
                    <div class="grid-sizer"></div>
                    <?php if(have_rows('lista_portfolio')) : while(have_rows('lista_portfolio')) : the_row(); ?>
                    <div class="grid-item">
                        <div class="img-wrapp">
                            <?php
                            if (get_sub_field('tipo') == 'menor') :
                            $attachment_id = get_sub_field('imagem_menor');
                            $imagem = wp_get_attachment_image_src( $attachment_id, 'portfolio-p' );
                            elseif (get_sub_field('tipo') == 'maior') :
                            $attachment_id = get_sub_field('imagem_maior');
                            $imagem = wp_get_attachment_image_src( $attachment_id, 'portfolio-m' );
                            endif;
                            ?>
                            <img src="<?php echo $imagem[0]; ?>" alt="seascape-villa image">
                            <?php if(get_sub_field('titulo') || get_sub_field('texto') || get_sub_field('link')) : ?>
                            <div class="tg-item-media-content ">
                                <div class="tg-center-holder">
                                    <div class="tg-center-inner">
                                        <?php if(get_sub_field('titulo')) : ?>
                                        <h3 class="tg-item-title tg-element-1 title"><a target="_self" <?php if(get_sub_field('link')) : ?> href="<?php the_sub_field('link'); ?>" <?php endif; ?>><?php the_sub_field('titulo'); ?></a></h3>
                                        <?php endif; ?>
                                        
                                        <?php if(get_sub_field('texto')) : ?>
                                        <span class="tg-cats-holder tg-element-2 category">
                                            <a class="projects-category" <?php if(get_sub_field('link')) : ?> href="<?php the_sub_field('link'); ?>" <?php endif; ?> rel="category">
                                                <span class="tg-item-term"><?php the_sub_field('texto'); ?></span>
                                            </a>
                                        </span>
                                        <div class="tg-item-clear"></div>
                                        <?php endif; ?>
                                    </div>
                                </div>
                            </div>
                            <?php endif; ?>
                        </div>
                    </div>
                    <?php endwhile; endif; ?>
                </div>
            </div>
        </div>
    </div>
    <?php endwhile; endif; ?>
<?php get_footer(); ?>

