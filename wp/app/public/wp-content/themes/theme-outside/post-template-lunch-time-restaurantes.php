<?php
/*
* Template Name: Modelo Post Brunch Time Restaurantes
* description: Esse é o template padrão para Post Brunch Time Restaurantes
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>

    <!--MAIN BODY-->
    <section class="head-pages">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
    </section>

    <div class="container no-padd margin-lg-50b">
        <div class="row-fluid no-padd">
            <div class="col-sm-12 no-padd ">
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
            </div>
        </div>
    </div>

    <div class="container padd-only-xs">
        <div class="row justify-content-center">
            <div class="col-sm-12 col-lg-9">
                <div class="no-padd simple dark">
                    <div class="content no-marg-bottom text-center">
                        <h2 class="title">EL PREFERIDO</h2>
                        <div class="subtitle">Buenos Aires, Argentina</div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="container margin-lg-90b margin-sm-50b padd-only-xs">
        <div class="row justify-content-center">
            <div class="col-md-9">
                <!-- Post content -->
                <div class="post-detailed post-1104 post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern">

                    <div class="prague-post-content-outer">

                        <div class="prague-post-content">
                            <img class="alignright" width="400" src="<?php bloginfo('template_url'); ?>/img/restaurante5.jpg" alt="">
                            <p>O Preferido é do mesmo dono do famoso Don Julio, restaurante super gostoso, comida boa, segundo um dos Outsiders, melhor batata frita que ele já comeu. Possui desde carnes, até saladas e massas, tem opção vegetariana e modéstia a parte, preferi bem mais que o Don Julio 🤭.</p>
                            <p>Ambiente:⭐️⭐️⭐️⭐️⭐️<br>
                                Comida:⭐️⭐️⭐️⭐️⭐️<br>
                                Preço:⭐️⭐️<br>
                                Atendimento:⭐️⭐️⭐️⭐️
                                </p>
                            <p>Outside favorite: Milanesa com fritas:</p>

                            <blockquote><p>💡 Precisa reservar com antecedência</p></blockquote>

                        </div>

                        <div class="prague-post-info">
                            <div class="prague-share-icons">
                                <div class="prague-share-label"> COMPARTILHE </div>
                                <button class="icon fa fa-facebook" data-share="#"></button>
                                <button class="icon fa fa-twitter" data-share="#"></button>
                                <button class="icon fa fa-linkedin" data-share="#"></button>
                                <button class="icon fa fa-whatsapp" data-share="#"></button>
                            </div>

                        </div>




                    </div>

                </div>
                <!-- End post content -->

                <!-- Post comments -->
                <div class="post-comments">
                    <div class="row">

                        <div class="col-xs-12">
                            <div class="heading  left dark">
                                <div class="subtitle divider">COMENTÁRIOS</div>
                            </div>
                        </div>

                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <div class="prague-comments-list" id="comments">
                                <ul>
                                    <li class="comment even thread-even depth-1 ct-part" id="li-comment-14">
                                        <div class="comm-block" id="comment-14">
                                            <div class="comm-txt">
                                                <h4>Nome do Usuário</h4>
                                                <div class="date-post">
                                                    <h6>
                                                        1 ano atrás </h6>
                                                </div>
                                                <p>Proin ultricies convallis urna nec dignissim. Vestibulum accumsan
                                                    sem ut quam facilisis pretium. Quisque tristique laoreet fermentum.
                                                    Nullam a ipsum metus. Quisque non massa nec ante tristique viverra
                                                    at eget mauris. Etiam quis orci condimentum turpis malesuada
                                                    consectetur nec et ex.</p>
                                                <a rel='nofollow' class='comment-reply-link'>Responder</a>
                                            </div>
                                        </div>
                                    </li><!-- #comment-## -->
                                    <li class="comment even thread-even depth-1 ct-part" id="li-comment-14">
                                        <div class="comm-block" id="comment-14">
                                            <div class="comm-txt">
                                                <h4>Nome do Usuário</h4>
                                                <div class="date-post">
                                                    <h6>
                                                        1 ano atrás </h6>
                                                </div>
                                                <p>Proin ultricies convallis urna nec dignissim. Vestibulum accumsan
                                                    sem ut quam facilisis pretium. Quisque tristique laoreet fermentum.
                                                    Nullam a ipsum metus. Quisque non massa nec ante tristique viverra
                                                    at eget mauris. Etiam quis orci condimentum turpis malesuada
                                                    consectetur nec et ex.</p>
                                                <a rel='nofollow' class='comment-reply-link'>Responder</a>
                                            </div>
                                        </div>
                                    </li><!-- #comment-## -->
                                    <li class="comment even thread-even depth-1 ct-part" id="li-comment-14">
                                        <div class="comm-block" id="comment-14">
                                            <div class="comm-txt">
                                                <h4>Nome do Usuário</h4>
                                                <div class="date-post">
                                                    <h6>
                                                        1 ano atrás </h6>
                                                </div>
                                                <p>Proin ultricies convallis urna nec dignissim. Vestibulum accumsan
                                                    sem ut quam facilisis pretium. Quisque tristique laoreet fermentum.
                                                    Nullam a ipsum metus. Quisque non massa nec ante tristique viverra
                                                    at eget mauris. Etiam quis orci condimentum turpis malesuada
                                                    consectetur nec et ex.</p>
                                                <a rel='nofollow' class='comment-reply-link'>Responder</a>
                                            </div>
                                        </div>
                                    </li><!-- #comment-## -->
                                </ul>

                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                            <h6 class="prague-comments-form-title">DEIXE SUA OPINIÃO</h6>
                            <div id="respond" class="comment-respond">
                                <h3 id="reply-title" class="comment-reply-title"> <small><a rel="nofollow" id="cancel-comment-reply-link"
                                            href="#" style="display:none;">Cancel</a></small></h3>
                                <form action="#" method="post" id="prague-comment-form"
                                    class="comment-form" novalidate>
                                    <textarea cols="30" name="comment" rows="10" placeholdeV="Comentário" required></textarea><input
                                        name="author" type="text" placeholder="Nome" required />
                                    <input name="email" type="email" placeholder="E-mail" required />
                                    <input name="submit" type="submit" id="submit" class="submit-btn" value="Enviar comentário" />
                                    <input type='hidden' name='comment_post_ID' value='1104' id='comment_post_ID' />
                                    <input type='hidden' name='comment_parent' id='comment_parent' value='0' />
                                </form>
                            </div><!-- #respond -->
                        </div>
                    </div>
                </div>
                <!-- End post comments -->

            </div>

        </div>

    </div>
<?php endwhile; endif; ?>
<?php get_footer(); ?>


