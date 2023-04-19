<?php
/**
 * The Template for displaying all single products
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see         https://docs.woocommerce.com/document/template-structure/
 * @package     WooCommerce\Templates
 * @version     1.6.4
 */

if ( ! defined( 'ABSPATH' ) ) {
	exit; // Exit if accessed directly
}

get_header( 'shop' ); ?>

<!-- Breadcrumb area start -->
<div class="breadcrumb-area breadcrumb-style-1">
    <div class="container">
        <div class="row custom-gutter">
            <div class="col-lg-12">
                <div class="breadcrumb-inner text-center">
                    <h1 class="page-title">Loja Online</h1>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Breadcrumb area end -->
<!-- Prodcut details area start -->
<div class="bloom-product-details-area margin-bottom-110 mobile-mb-30 tab-mb-50 s-laptop-mb-90">
    <div class="container">
        <div id="product-<?php the_ID(); ?>" <?php wc_product_class( '', $product ); ?>>
            <?php while ( have_posts() ) : ?>
                <?php the_post(); ?>

                <?php wc_get_template_part( 'content', 'single-product' ); ?>

            <?php endwhile; // end of the loop. ?>
        </div>
    </div>
</div>
<!-- Prodcut details area end -->
	
<!-- Prodcut details area end -->
<?php //If product tag, get the terms
if ($product_cats = get_the_terms($product->id, 'product_cat')) :

//Product Tags IDs array
$product_cat_ids = array();

foreach($product_cats as $product_cat) {
    $product_cat_ids[] = $product_cat->term_id;
}

    $count_args = array(
        'post_type'             => 'product',
        'ignore_sticky_posts'   => 1,
        'posts_per_page'        => 8,
        'no_found_rows'         => 1,
        'orderby'               => $orderby,
        'post__not_in'          => array($product->id),
        'tax_query'             => array(array(
                                        'taxonomy'  => 'product_cat',
                                        'field'     => 'id',
                                        'terms'     => $product_cat_ids,
                                    )),
    );
    $query = new WP_Query( $count_args );
?>
<?php if($query->have_posts()) : ?>
<!-- Your may also like area start -->
<div class="you-may-also-like-area margin-bottom-65 tab-mb-40">
    <div class="container">
        <div class="you-may-also-like-inner">
            <div class="row custom-gutter">
                <div class="col-lg-12">
                    <div class="section-title-area section-title-width text-center">
                        <div class="section-title section-title-2">
                            <div class="icon">
                                <img src="<?php bloginfo('template_url'); ?>/assets/img/icon/title.svg" alt="Bloom">
                            </div>
                            <div class="title-text">
                                <h2 class="title">Você também pode gostar…</h2>
                            </div>
                        </div>
                    </div>
                </div>
                <!-- product-item -->
                <?php while($query->have_posts()) : $query->the_post(); ?>
                <div class="col-xl-4 col-lg-4 col-md-4 col-sm-12">
                    <div class="product-item text-center">
                        <div class="product-image">
                            <a href="<?php the_permalink(); ?>"><?php the_post_thumbnail( 'produto' ); ?></a>
                            <div class="product-action">
                                <ul>
                                    <li class="details-link"><a href="<?php the_permalink(); ?>">Veja mais</a></li>
                                </ul>
                            </div>
                        </div>
                        <div class="product-item-brief">
                            <h2 class="product-title"><a href="<?php the_permalink(); ?>"><?php the_title(); ?></a></h2>
                            <div class="product-price">
                                <?php do_action( 'woocommerce_after_shop_loop_item_title' ); ?>
                            </div>
                        </div>
                    </div>
                </div>
                <?php endwhile; wp_reset_query();  ?>
            </div>
        </div>
    </div>
</div>
<?php endif; endif; ?>
<!-- Your may also like area end -->
<?php
get_footer( 'shop' );

/* Omit closing PHP tag at the end of PHP files to avoid "headers already sent" issues. */
