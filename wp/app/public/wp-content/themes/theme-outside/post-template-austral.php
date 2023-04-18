<?php
/*
* Template Name: Modelo Post Nothing Basic
* description: Esse é o template padrão para Post Nothing Basic
*/
?>
<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>
    <!--MAIN BODY-->
    <section class="head-pages">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
    </section>


    <div class="container margin-lg-50t margin-lg-90b margin-sm-50b padd-only-xs">
        <div class="row justify-content-center">
            <div class="col-sm-12 col-lg-9">
                <div class="no-padd simple dark">
                    <div class="content no-marg-bottom text-center">
                        <div class="subtitle">AUSTRAL</div>
                        <h2 class="title">Uma boa mala planejada te salvará em uma viagem de trilha, montanha e natureza. Seguem algumas Outside Tips:</h2>
                    </div>
                </div>
            </div>
        </div>
        <div class="row justify-content-center">
            <div id="gallery-1" class="gallery col-md-10 margin-lg-50t galleryid-1104 gallery-columns-3 gallery-size-full flex-img">
                <figure class="gallery-item">
                    <div class="gallery-icon portrait">
                        <a href="post-1.html"><img src="<?php bloginfo('template_url'); ?>/img/galeria1.jpg" data-lazy-src="<?php bloginfo('template_url'); ?>/img/galeria1.jpg" class="attachment-full size-full" alt="post-1 image"></a>
                    </div>
                </figure>
                <figure class="gallery-item">
                    <div class="gallery-icon portrait">
                        <a href="post-1.html"><img src="<?php bloginfo('template_url'); ?>/img/galeria2.jpg" data-lazy-src="<?php bloginfo('template_url'); ?>/img/galeria2.jpg" class="attachment-full size-full" alt="post image"></a>
                    </div>
                </figure>
                <figure class="gallery-item">
                    <div class="gallery-icon portrait">
                        <a href="post-1.html"><img src="<?php bloginfo('template_url'); ?>/img/galeria3.jpg" data-lazy-src="<?php bloginfo('template_url'); ?>/img/galeria3.jpg" class="attachment-full size-full" alt="post image"></a>
                    </div>
                </figure>
            </div>
        </div>
        <div class="row justify-content-center">
            <div class="col-md-9">
                <!-- Post content -->
                <div class="post-detailed post-1104 post type-post status-publish format-standard has-post-thumbnail hentry category-interior category-uncategorized tag-creative tag-interior tag-modern">

                    <div class="prague-post-content-outer">

                        <div class="prague-post-content">
                            <img class="alignright" width="400" src="<?php bloginfo('template_url'); ?>/img/astral1.jpg" alt="">
                            <h2>AUSTRAL</h2>
                            <p>A Austral é uma marca de vestuário masculina com uma pegada outdoor, praia, surf, natureza, montanha e aventura com peças de matéria prima sustentável e de extrema qualidade! Além de tudo é brasileira e faz do Brasil uma de suas maiores inspirações. Sou fã, e é claro que levei eles para a Patagônia, afinal, falou em natureza, montanha e aventura? Patagônia na certa. </p>
                            <p>Austral foi com certeza 80% da minha mala e esteve presente todos os dias na minha viagem! As peças foram perfeitas para o estilo de viagem que fizemos, eles possuem desde calças (de qualidade absurda) até corta ventos (super necessário), até camisetas, bermudas e moletons. </p>
                            <img class="alignleft" width="400" src="<?php bloginfo('template_url'); ?>/img/astral2.jpg" alt="">
                            <p>Se você for para a Patagônia aqui vai um check list de itens para você levar que com certeza encontrará na Austral:</p>
                            <h3>CHECK LIST</h3>
                            <p>[ ] Camisetas<br>
                                [ ] Calças<br>
                                [ ] Bermuda<br>
                                [ ] Camiseta manga cumprida<br>
                                [ ] Moletom<br>
                                [ ] Corta-vento<br>
                                [ ] Camisas
                                </p>
                            <p>A primeira camada de roupa (se você pegar temperaturas baixas) é a segunda pele, após vem a segunda camada, calça e camiseta. Durante a trilha você acaba se sujando e transpirando então algumas opções de calça e camiseta são muito necessárias. </p>
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



            </div>

        </div>

    </div>
    <div class="banner margin-lg-100t ">
        <img src="<?php bloginfo('template_url'); ?>/img/banner-contact.jpg" alt="">
    </div>
    <div class="container margin-lg-90b margin-sm-50b padd-only-xs">
        <div class="row justify-content-center margin-lg-100t">
            <div class="col-sm-7 no-padd">
                <div class="padd-only-xs ">

                    <div class="text-center dark">

                        <div class="subtitle ">CONTACT</div>
                        <h2 class="title">Que tal levar a sua marca para viajar comigo?</h2>
                        <div class="content ">
                            <p class="text-center">Viagens com produção de conteúdos originais e personalizados, em tempo real para trazer o consumidor á uma imersão com a marca, gerando conhecimento cultural e muito entretenimento com uma abordagem descontraída e divertida. Além se de um super material do seu produto em uma paisagem absurda.</p>
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
                            <form enctype="multipart/form-data" method="post" class="frm-show-form contact-me-form" id="form_t1e6y">
                                <div class="frm_form_fields ">
                                    <fieldset>

                                        <div class="frm_fields_container">

                                            <div class="row">
                                                <div class="col-md-6 col-sm-6">
                                                    <div id="frm_field_19_container" class="frm_form_field form-field  frm_required_field frm_none_container">

                                                        <input type="text" id="field_hm4zn" name="item_meta[19]" value="" placeholder="Nome" data-reqmsg="This field cannot be blank." data-invmsg="Name is invalid">


                                                    </div>
                                                    <div id="frm_field_20_container" class="frm_form_field form-field  frm_none_container">

                                                        <input type="text" id="field_rposy" name="item_meta[20]" value="" placeholder="WhatsApp" data-invmsg="Phone is invalid">


                                                    </div>
                                                    <div id="frm_field_21_container" class="frm_form_field form-field  frm_required_field frm_none_container">

                                                        <input type="email" id="field_pk5zg" name="item_meta[21]" value="" placeholder="E-mail" data-reqmsg="This field cannot be blank." data-invmsg="Email Address is invalid">


                                                    </div>
                                                </div>
                                                <div class="col-md-6 col-sm-6">
                                                    <div id="frm_field_22_container" class="frm_form_field form-field  frm_none_container">

                                                        <textarea name="item_meta[22]" id="field_jkt2l" rows="5" placeholder="Mensagem" data-invmsg="Paragraph Text is invalid"></textarea>


                                                    </div>
                                                </div>
                                            </div>
                                            <input type="hidden" name="item_key" value="">
                                            <div class="frm_submit">

                                                <input type="submit" value="Enviar">
                                                <span class="arrow-right"></span>

                                            </div>
                                        </div>
                                    </fieldset>
                                </div>
                            </form>
                        </div>
                    </div>
                    <div class="test 4"></div>

                </div>
            </div>
        </div>
    </div>


<?php endwhile; endif; ?>
<?php get_footer(); ?>


