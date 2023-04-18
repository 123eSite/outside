<?php get_header(); ?>
<!--MAIN BODY-->
<section class="head-pages" style="background: #3D3D3D;">
    <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" style="filter: brightness(0)invert(1);">
</section>

<div class="container margin-lg-50t margin-lg-90b margin-sm-50b padd-only-xs">
    <div class="row">
        <div class="col-sm-12 col-lg-offset-2 col-lg-8">
            <div class="no-padd simple dark">
                <div class="content no-marg-bottom text-center">
                    <div class="subtitle"><?php the_field('titulo'); ?></div>
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
                        <?php the_content(); ?>
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
                    <!-- <div class="det-tags">
                        <h4>TAGS:</h4>
                        <div class="tags-button">
                            <a href="#" rel="tag">Travel</a><a href="#"
                                rel="tag">Patagônia</a><a href="#" rel="tag">Viagens</a>
                        </div>
                    </div> -->
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
<?php get_footer(); ?>