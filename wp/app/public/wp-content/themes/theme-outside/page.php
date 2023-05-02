<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>

<?php if(is_page(array('travel-time','nothing-basic','hey-nutri','brunch-time'))) : ?>
    <?php get_template_part('paginas-padrao'); ?>
<?php elseif(is_page('receitas')) : ?>
    <?php get_template_part('receitas'); ?>
<?php elseif(is_page('portifolio')) : ?>
    <?php get_template_part('portifolio'); ?>
<?php else : ?>
<section class="head-pages" style="background: #3D3D3D;">
    <a href="<?php bloginfo('url'); ?>">
        <img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" style="filter: brightness(0)invert(1);">
    </a>
</section>
    <div class="site-main  main-container no-sidebar">
    <div class="container">
        <?php the_content(); ?>
    </div>
</div>
<?php endif; ?>
<?php endwhile; endif; ?>
<?php get_footer(); ?>