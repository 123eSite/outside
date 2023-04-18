<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>

<?php if(is_page(array('travel-time','nothing-basic','hey-nutri','brunch-time'))) : ?>
    <?php get_template_part('paginas-padrao'); ?>
<?php elseif(is_page('receitas')) : ?>
    <?php get_template_part('receitas'); ?>
<?php elseif(is_page('noticias-pesquisa')) : ?>
    <?php get_template_part('noticias-pesquisa'); ?>
<?php else : ?>
    <?php get_template_part('padrao'); ?>
<?php endif; ?>
<?php endwhile; endif; ?>
<?php get_footer(); ?>