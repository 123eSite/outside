<?php get_header(); ?>
<!--MAIN BODY-->
<div class="row-fluid no-padd">
    <div class="col-sm-12 no-padd">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
            <img src="<?php bloginfo('template_url'); ?>/img/slogan.png" width="180" class="image_slogan" alt="logo" />
            <!-- Wrapper for slides -->
            <div class="carousel-inner">
            <div class="item slider-img overlay element2 active">
                <?php
                $attachment_id = get_field('imagem_banner');
                $imagem = wp_get_attachment_image_src( $attachment_id, 'carrossel' );
                ?>
                <img src="<?php echo $imagem[0]; ?>" alt="slider image"  class="s-img-switch ">
            </div>
        </div>
    </div>
</div>

<div class="container no-padd">
    <div class=" row-fluid  margin-lg-75t margin-sm-40t">
        <div class="column column_container col-sm-12 ">
            <div class="column-inner ">
                <div class="heading  Center dark">
                    <div class="subtitle "><?php the_field('subtitulo_sobre'); ?></div>
                    <h2 class="title uppercase"><?php the_field('titulo_1_sobre'); ?> 
                    <img width="165" src="<?php the_field('logo_sobre'); ?>" alt="">  <?php the_field('titulo_2_sobre'); ?></h2>
                    <div class="content">
                        <?php the_field('texto_sobre'); ?>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-12 js-load-more margin-lg-30t margin-sm-50t margin-lg-30b margin-sm-30b" data-unique-key="blog-posts" data-start-page="1" data-max-page="2" data-next-link="blog-page-2.html">
            <div class="row-fluid">
                <div class="column column_container col-sm-12 margin-lg-20b">
                    <div class="column-inner ">
                        <div class="wrapper">
                            <div class="heading  Center dark">
                                <div class="subtitle "><?php the_field('titulo_noticias'); ?></div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row prague-blog-grif-outer js-load-more-block">
                <?php if(have_rows('lista_noticias')) : while(have_rows('lista_noticias')) : the_row(); ?>
                <div class="post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern blog-post col-sm-4 col-xs-12 js-filter-simple-block">
                    <div class="prague-blog-grid-wrapper">
                        <div class="blog-grid-img">
                            <?php
                            $attachment_id = get_sub_field('imagem');
                            $imagem = wp_get_attachment_image_src( $attachment_id, 'capa-ultm-conteudos' );
                            ?>
                            <img src="<?php echo $imagem[0]; ?>" class="s-img-switch" alt="<?php the_sub_field('titulo'); ?>">
                        </div>
                        <div class="blog-grid-content">
                            <div class="blog-grid-post-date">
                                <?php the_sub_field('data'); ?>
                            </div>
                            <h3 class="blog-grid-post-title"><a href="<?php the_sub_field('link'); ?>"><?php the_sub_field('titulo'); ?></a></h3>
                            <div class="blog-grid-post-excerpt">
                                <p><?php the_sub_field('resumo'); ?></p>
                            </div>
                            <a href="<?php the_sub_field('link'); ?>" class="blog-grid-link a-btn-arrow-2">
                                <span class="arrow-right"></span>
                                READ MORE
                            </a>
                        </div>
                    </div>
                </div>
                <?php endwhile; endif; ?>
            </div>
        </div>
    </div>
</div>
<?php $count=2; if(have_rows('lista_destaques')) : while(have_rows('lista_destaques')) : the_row(); ?>
<?php if($count%2 == 0) : ?>
<div class="container no-padd margin margin-xs-20b">
    <div class="row-fluid no-padd ">
        <div class="heading dark smaller">
            <h2 class="title"><?php the_sub_field('titulo_chamada'); ?></h2>
            <div class="content">
                <p><?php the_sub_field('texto_chamada'); ?></p>
            </div>
        </div>
        <div class="col-sm-12 no-padd padd-only-small padd-only-md no-padd-lg">
            <div class="about-section-classic padd-only-small padd-only-md no-padd-lg">
                <div class="about-section__img">
                    <?php
                    $attachment_id = get_sub_field('imagem');
                    $imagem = wp_get_attachment_image_src( $attachment_id, 'capa-viaje' );
                    ?>
                    <img src="<?php echo $imagem[0]; ?>" class="s-img-switch" alt="<?php the_sub_field('titulo'); ?>">
                    <span class="grad-word"><?php the_sub_field('letra_imagem'); ?></span>
                </div>
                <div class="content">
                    <div class="subtitle"><?php the_sub_field('data'); ?></div>
                    <h2 class="title"><?php the_sub_field('titulo'); ?></h2>
                    <p><?php the_sub_field('resumo'); ?></p>
                    <div class="but-wrap">
                        <a href="<?php the_sub_field('link_botao'); ?>" class="a-btn-arrow-2  creative anima" target="blank">
                            <?php the_sub_field('titulo_botao'); ?> <span class="arrow-right"></span>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php else : ?>
<div class="container right no-padd margin margin-sm-50b margin-xs-20b">
    <div class="row-fluid no-padd ">
        <div class="heading dark smaller">
            <h2 class="title"><?php the_sub_field('titulo_chamada'); ?></h2>
            <div class="content">
                <p><?php the_sub_field('texto_chamada'); ?></p>
            </div>
        </div>
        <div class="col-sm-12 no-padd padd-only-small padd-only-md no-padd-lg">
            <div class="about-section-classic padd-only-small padd-only-md no-padd-lg">
                <div class="content">
                    <div class="subtitle"><?php the_sub_field('data'); ?></div>
                    <h2 class="title"><?php the_sub_field('titulo'); ?></h2>
                    <p><?php the_sub_field('resumo'); ?></p>
                    <div class="but-wrap">
                        <a href="<?php the_sub_field('link_botao'); ?>" class="a-btn-arrow-2  creative anima" target="blank">
                            <?php the_sub_field('titulo_botao'); ?> <span class="arrow-right"></span>
                        </a>
                    </div>
                </div>
                <div class="about-section__img">
                    <?php
                    $attachment_id = get_sub_field('imagem');
                    $imagem = wp_get_attachment_image_src( $attachment_id, 'capa-viaje' );
                    ?>
                    <img src="<?php echo $imagem[0]; ?>" class="s-img-switch" alt="<?php the_sub_field('titulo'); ?>">
                    <span class="grad-word"><?php the_sub_field('letra_imagem'); ?></span>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="container right no-padd margin margin-lg-55b margin-sm-50b margin-xs-20b"></div>
<?php endif; ?>
<?php $count++; endwhile; endif; ?>
<?php get_footer(); ?>