<!--MAIN BODY-->
<section class="head-pages">
    <a href="<?php bloginfo('url'); ?>">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
    </a>
</section>
<div class="container no-padd margin-lg-60t margin-lg-100b margin receitas">
    <div class="revenues">
        <?php
        $cat_id = $cat;
        $args = array(
            'cat' => 7,
            'posts_per_page' => -1, 
        );
        $query = new WP_Query( $args );
        ?>
        <?php if ( $query->have_posts() ) : ?>
        <?php while ( $query->have_posts() ) : $query->the_post(); ?>
        <a href="<?php the_permalink(); ?>">
            <div class="item-d">
               <div class="img-d">
                <?php
                $attachment_id = get_field('imagem');
                $imagem = wp_get_attachment_image_src( $attachment_id, 'carrossel-viagens' );
                ?>
                    <img src="<?php echo $imagem[0]; ?>" alt="<?php the_title(); ?>" >
               </div> 
               <div class="box">
                    <div class="title">
                        <p><?php the_title(); ?></p>
                    </div>
                    <div class="desc">
                        <p><?php the_field('descricao'); ?></p>
                    </div>
               </div>
            </div>
        </a>
        <?php endwhile; wp_reset_postdata(); endif; ?>
    </div> 
</div>