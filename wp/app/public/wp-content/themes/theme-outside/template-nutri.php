<?php
/*
* Template Name: Modelo Hey Nutrii
* description: Esse é o template padrão para Hey Nutri
* Template Post Type: post
*/

?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
<section class="head-pages">
    <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
</section>
<div class="container no-padd padding-lg-70b">
    <div class=" row-fluid   margin-sm-40t">
        <div class="col-md-12 js-load-more margin-lg-30t margin-sm-50t margin-lg-30b margin-sm-30b" data-unique-key="blog-posts" data-start-page="1" data-max-page="2" data-next-link="blog-page-2.html">
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
                <div class="post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern blog-post col-sm-4 col-xs-12 js-filter-simple-block">
                    <div class="prague-blog-grid-wrapper">
                        <div class="blog-grid-img">
                            <img src="<?php bloginfo('template_url'); ?>/img/nutri6.jpg" class="s-img-switch" alt="blog image" />
                        </div>
                        <div class="blog-grid-content">
                            <div class="blog-grid-post-date">
                                Fevereiro, 2023.
                            </div>
                            <h3 class="blog-grid-post-title"><a href="#">Brunch perfeito</a></h3>
                            <div class="blog-grid-post-excerpt">
                                <p>A Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma). (..).</p>
                            </div>
                            <a href="#" class="blog-grid-link a-btn-arrow-2">
                                <span class="arrow-right"></span>
                                READ MORE
                            </a>
                        </div>
                    </div>
                </div>
                <div class="post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern blog-post col-sm-4 col-xs-12 js-filter-simple-block">
                    <div class="prague-blog-grid-wrapper">
                        <div class="blog-grid-img">
                            <img src="<?php bloginfo('template_url'); ?>/img/nutri7.jpg" class="s-img-switch" alt="blog image" />
                        </div>
                        <div class="blog-grid-content">
                            <div class="blog-grid-post-date">
                                Janeiro, 2023.
                            </div>
                            <h3 class="blog-grid-post-title"><a href="#">smoothie com kicoffee</a></h3>
                            <div class="blog-grid-post-excerpt">
                                <p>O restaurante Mila é um italiano descolado e diferenciado localizado no Itaim, sou suspeita para falar porque italiano é meu top 3, e o Mila ganhou meu coração! (...).</p>
                            </div>
                            <a href="#" class="blog-grid-link a-btn-arrow-2">
                                <span class="arrow-right"></span>
                                READ MORE
                            </a>
                        </div>
                    </div>
                </div>
                <div class="post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern blog-post col-sm-4 col-xs-12 js-filter-simple-block">
                    <div class="prague-blog-grid-wrapper">
                        <div class="blog-grid-img">
                            <img src="<?php bloginfo('template_url'); ?>/img/nutri8.jpg" class="s-img-switch" alt="blog image" />
                        </div>
                        <div class="blog-grid-content">
                            <div class="blog-grid-post-date">
                                Dezembro, 2022.
                            </div>
                            <h3 class="blog-grid-post-title"><a href="#">YOGA TIME</a></h3>
                            <div class="blog-grid-post-excerpt">
                                <p>Um dos meus pilares principais é a sustentabilidade e a preocupação com o meio ambiente, aqui vou contar para vocês algumas curiosidades sobre meus drops e como você pode adquiri-los 😉 (...)</p>
                            </div>
                            <a href="#" class="blog-grid-link a-btn-arrow-2">
                                <span class="arrow-right"></span>
                                READ MORE
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php endwhile; endif; ?>
<?php get_footer(); ?>


