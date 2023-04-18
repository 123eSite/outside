<?php
/*
* Template Name: Modelo Post Padrão
* description: Esse é o template padrão para Post Padrão
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
    <!--MAIN BODY-->
    <section class="head-pages">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
    </section>


    <div class="container margin-lg-50t margin-lg-90b margin-sm-50b padd-only-xs">
        <div class="row">
            <div class="col-sm-12 col-lg-offset-2 col-lg-8">
                <div class="no-padd simple dark">
                    <div class="content no-marg-bottom text-center">
                        <div class="subtitle">ABOUT</div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-9">
                <!-- Post content -->
                <div class="post-detailed post-1104 post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern">

                    <div class="prague-post-content-outer">

                        <div class="prague-post-content">
                            <img class="alignright" width="400" src="<?php bloginfo('template_url'); ?>/img/blog1.jpg" alt="">
                            <h2>Patagônia</h2>
                            <p>A Patagônia é uma viagem para ir em casal, em família, com amigos, com o parceiro(a), com quem quiser. Tudo é válido, uma viagem romântica com aventura, natureza, gastronomia, e um pouco de perigo (cuidado com a puma). </p>
                            <p>A Patagônia é uma região que abrange uma vasta área no extremo sul da América do Sul ocupando partes da Argentina e do Chile.</p>
                            <p>A Cordilheira dos Andes delimita a fronteira entre os dois países.</p>
                            <p> O território possui desde pastagens, desertos, fiordes glaciais á florestas e cachoeiras. A famosa rodovia RN-40, na Argentina, passa pelos cumes do monte Fitz Roy e pela geleira Perito Moreno, no Parque Nacional Los Glaciares.</p>
                            <p>A paisagem supera qualquer expectativa, não importa a trilha ou passeio, em qualquer lugar que estiver seja no meio da estrada ou dentro da cidade, ao redor o visual é incrível, de deixar a boca aberta! Ao longo do post vocês verão algumas fotos que tirei durante a viagem 😃</p>
                            <img class="alignleft" width="400" src="<?php bloginfo('template_url'); ?>/img/blog3.jpg" alt="">
                            <h3>THE TRIP</h3>
                            <p>Fiz uma viagem de 15 dias totais, sendo 10 na Patagônia e 5 em Buenos Aires. Fui em Novembro, época de primavera quase verão, então o clima estava perfeito na medida certa! A temperatura varia muito, de 23 graus á sensação térmica de 5 graus. Por ser primavera, pegamos céu azul e sol na maior parte da viagem, dias lindos e ensolarados.</p>

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

                        <div class="det-tags">
                            <h4>TAGS:</h4>
                            <div class="tags-button">
                                <a href="#" rel="tag">Travel</a><a href="#"
                                    rel="tag">Patagônia</a><a href="#" rel="tag">Viagens</a>
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
                                    <textarea cols="30" name="comment" rows="10" placeholder="Comentário" required></textarea><input
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


