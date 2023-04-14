<?php get_header(); ?>
<?php if(have_posts()) : while(have_posts()) : the_post(); ?>

<?php if(is_page(array('travel-time','nothing-basic','hey-nutri','brunch-time'))) : ?>
    <?php get_template_part('paginas-padrao'); ?>
<?php elseif(is_page('noticias')) : ?>
    <?php get_template_part('noticias'); ?>
<?php elseif(is_page('noticias-pesquisa')) : ?>
    <?php get_template_part('noticias-pesquisa'); ?>
<?php elseif(is_page('contato')) : ?>
    <?php get_template_part('contato'); ?>
<?php elseif(is_page('trabalhe-conosco')) : ?>
    <?php get_template_part('trabalhe'); ?>
<?php elseif(is_page('fotos')) : ?>
    <?php get_template_part('fotos'); ?>
<?php elseif(is_page('a-fundacao')) : ?>
    <?php get_template_part('a-fundacao'); ?>
<?php elseif(is_page('projetos')) : ?>
    <?php get_template_part('projetos'); ?>
<?php elseif(is_tree(13)) : ?>
    <?php get_template_part('projeto-interna'); ?>
<?php else : ?>
    <?php get_template_part('padrao'); ?>
<?php endif; ?>
<?php endwhile; endif; ?>
<?php get_footer(); ?>