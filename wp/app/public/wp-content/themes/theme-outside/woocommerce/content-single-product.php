<?php
/**
 * The template for displaying product content in the single-product.php template
 *
 * This template can be overridden by copying it to yourtheme/woocommerce/content-single-product.php.
 *
 * HOWEVER, on occasion WooCommerce will need to update template files and you
 * (the theme developer) will need to copy the new files to your theme to
 * maintain compatibility. We try to do this as little as possible, but it does
 * happen. When this occurs the version of the template file will be bumped and
 * the readme will list any important changes.
 *
 * @see     https://docs.woocommerce.com/document/template-structure/
 * @package WooCommerce\Templates
 * @version 3.6.0
 */

defined( 'ABSPATH' ) || exit;

global $product;

/**
 * Hook: woocommerce_before_single_product.
 *
 * @hooked woocommerce_output_all_notices - 10
 */
do_action( 'woocommerce_before_single_product' );

if ( post_password_required() ) {
	echo get_the_password_form(); // WPCS: XSS ok.
	return;
}
?>
<div id="product-<?php the_ID(); ?>" <?php wc_product_class( '', $product ); ?>>

<!--MAIN BODY-->
<section class="head-pages">
	<img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
</section>

<div class="container-fluid no-padd  margin-lg-120b margin-sm-80b margin-xs-50b">
	<div class="row-fluid no-padd">
		<div class="col-sm-12 no-padd">

			<div class="banner-slider-wrap andra ">
				<div class="swiper-container swiper  " data-mouse="0" data-autoplay="0" data-loop="1" data-speed="500"
					data-center="1" data-space-between="30" data-pagination-type="fraction" data-mode="horizontal">
					<div class="swiper-wrapper">
						<?php  $thumb_gallery_ids = $product->get_gallery_attachment_ids(); ?>
						<?php foreach ($thumb_gallery_ids as $thumb_id) :
							$imagem = wp_get_attachment_image_src( $thumb_id, 'produto-g' );
						?>
						<div class="swiper-slide swiper-no-swiping full-height-window-hard">
							<img src="<?php echo $imagem[0]; ?>" class="s-img-switch" alt="<?php the_title(); ?>">
						</div>
						<?php endforeach; ?>
					</div>
					<div class="pag-wrapper">
						<div class="swiper-pagination"></div>
					</div>
				</div>
			</div>

		</div>
	</div>
</div>
<div class="shop-container container padd-only-xs product-template-default single single-product postid-2072 woocommerce woocommerce-page woocommerce-no-js wpb-js-composer js-comp-ver-5.6 responsive">
	<div class="row justify-content-center">
		<div class="col-sm-12 col-md-9 margin-lg-90b margin-sm-60b">
			<div class="woocommerce-notices-wrapper"></div>
			<div id="product-2072" class="post-2072 product type-product status-publish has-post-thumbnail product_cat-acssessories product_tag-casual product_tag-modern first instock virtual purchasable product-type-simple">
				<div class="flex-item ">
					<div class="summary entry-summary">
						<?php
						/**
						 * Hook: woocommerce_single_product_summary.
						 *
						 * @hooked woocommerce_template_single_title - 5
						 * @hooked woocommerce_template_single_rating - 10
						 * @hooked woocommerce_template_single_price - 10
						 * @hooked woocommerce_template_single_excerpt - 20
						 * @hooked woocommerce_template_single_add_to_cart - 30
						 * @hooked woocommerce_template_single_meta - 40
						 * @hooked woocommerce_template_single_sharing - 50
						 * @hooked WC_Structured_Data::generate_product_data() - 60
						 */
						do_action( 'woocommerce_single_product_summary' );
						?>
					</div>
					<div class="woocommerce-product-gallery woocommerce-product-gallery--with-images woocommerce-product-gallery--columns-3 images"
						data-columns="3">
						<div class="flex-viewport">
							<figure class="woocommerce-product-gallery__wrapper">
								<div class="woocommerce-product-gallery__image flex-active-slide">
									<?php the_post_thumbnail( 'produto' ); ?>
								</div>
							</figure>
						</div>
					</div>
				</div>
			</div><!-- #product-2074 -->
		</div>
	</div>
</div>
</div>
<?php do_action( 'woocommerce_after_single_product' ); ?>
