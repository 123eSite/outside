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

if ( post_password_required() ) {
	echo get_the_password_form(); // WPCS: XSS ok.
	return;
}
?>
<div id="product-<?php the_ID(); ?>" <?php wc_product_class( '', $product ); ?>>

<!--MAIN BODY-->
<section class="head-pages">
	<a href="<?php bloginfo('url'); ?>">
		<img src="<?php bloginfo('template_url'); ?>/img/outside.co.svg" width="200" class="image_logo" alt="logo" />
	</a>
</section>



<?php
$attachment_id = get_field('imagem_banner_topo');
$imagem = wp_get_attachment_image_src( $attachment_id, 'banner-to-travel' );
?>
<div class="banner">
    <img src="<?php echo $imagem[0]; ?>" alt="">
</div>
<div class="container no-padd margin-lg-50t padding-lg-100b">
    <div class="row">
        <div class="col-sm-12 col-lg-offset-2 col-lg-8 margin-xs-0b padding-lg-55b">
        <?php
/**
 * Hook: woocommerce_before_single_product.
 *
 * @hooked woocommerce_output_all_notices - 10
 */
do_action( 'woocommerce_before_single_product' );

?>
            <div class="no-padd simple dark">
                <div class="content no-marg-bottom text-center">
                    <div class="subtitle"><?php the_field('subtitulo_publicacao'); ?></div>
                </div>
            </div>
        </div>
    </div>
    <div class="row justify-content-center mobile-none">
        <div class="col-md-9">
            <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="row-fluid">
                <div class=" vc_column_container col-sm-6 padding-lg-30t padding-xs-0t  no-padd">
                    <?php $count=1; if(have_rows('lista_publicacao')) : while(have_rows('lista_publicacao')) : the_row(); ?>
                    <?php
                    $attachment_id = get_sub_field('imagem');
                    $imagem = wp_get_attachment_image_src( $attachment_id, 'fashion-'.$count );
                    ?>
                    <?php if($count==1) : ?>
                    <div class="no-padd-inner ">
                        <div class="project-detail-picture-wrapper ">
                            <img src="<?php echo $imagem[0]; ?>" data-lazy-src="<?php echo $imagem[0]; ?>" class="attachment-full size-full no-margin-bottom padding-left no-padd-xs"
                                alt="banner image" />
                                <div class="project-detail-picture-descr">
                                    <?php the_field('texto_2_publicacao'); ?>
                                </div>
                                <?php elseif ($count==2) : ?>
                                <img src="<?php echo $imagem[0]; ?>" alt="">
                            </div>
                        </div>
                    </div>
                    <?php elseif ($count==3) : ?>
                    <div class=" vc_column_container col-sm-6 no-padd">
                        <div class="no-padd-inner ">
                            <div class="project-detail-picture-wrapper">
                                <div class="project-detail-picture-descr text-right">
                                    <h2 class="title big"><?php the_field('titulo_publicacao'); ?></h2>
                                    <?php the_field('texto_1_publicacao'); ?>
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
                                <img  src="<?php echo $imagem[0]; ?>" data-lazy-src="<?php echo $imagem[0]; ?>" class="attachment-full size-full padding-left no-padd-xs" alt="banner image" />
                                <?php else : ?>
                                    <img  src="<?php echo $imagem[0]; ?>" data-lazy-src="<?php echo $imagem[0]; ?>" class="attachment-full size-full padding-left no-padd-xs" alt="banner image" />
                                </div>
                            </div>
                        </div>
                    </div>
                    <?php endif; ?>
                    <?php $count++; endwhile; endif; ?>
            </div>
        </div>
    </div>
    <div class="row justify-content-center desktop-none">
        <div class="col-md-9">
            <div data-vc-full-width="true" data-vc-full-width-init="false" data-vc-stretch-content="true" class="row-fluid">
                <div class=" vc_column_container col-sm-6 padding-lg-30t padding-xs-0t  no-padd">
                    <div class="no-padd-inner ">
                        <div class="project-detail-picture-wrapper ">
                                <div class="project-detail-picture-descr text-right">
                                    <h2 class="title big"><?php the_field('titulo_publicacao'); ?></h2>
                                    <?php the_field('texto_1_publicacao'); ?>
                                </div>
                                <div class="project-detail-picture-descr">
                                    <?php the_field('texto_2_publicacao'); ?>
                                </div>
                                <?php $count=1; if(have_rows('lista_publicacao')) : while(have_rows('lista_publicacao')) : the_row(); ?>
                                <?php
                                $attachment_id = get_sub_field('imagem');
                                $imagem = wp_get_attachment_image_src( $attachment_id, 'fashion-'.$count );
                                ?>
                                <img src="<?php echo $imagem[0]; ?>" alt="">
                                <?php endwhile; endif; ?>

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
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

	<div class="container no-padd margin-lg-100b margin list-icons-custom">
        <div class="row-fluid">
            <div class="col-sm-12 no-padd">
                <div class=" no-padd-xs">
                    <div class="project-detail-block-outer invert">
                        <?php $count=1; if(have_rows('lista_info','options')) : while(have_rows('lista_info','options')) : the_row(); ?>
                        <?php
                            if($count == 1) {
                                $icon = "fa fa-comments-o";
                            }elseif($count == 2) {
                                $icon = "fa fa-credit-card";
                            }elseif($count == 3) {
                                $icon = "fa fa-truck";
                            }
                            ?>
                        <div class="project-detail-block-wrapper">
                            <a href="<?php the_sub_field('link'); ?>">
                                <div class="project-detail-block-item">
                                    <div class="icon">
                                        <i class="<?php echo $icon; ?>" aria-hidden="true"></i>
                                    </div>
                                    <div class="project-detail-block-title">
                                        <?php the_sub_field('titulo'); ?> </div>
                                    <div class="project-detail-block-descr">
                                        <p>
                                           <?php the_sub_field('texto'); ?>
                                        </p>
                                    </div>
                                </div>
                            </a>
                        </div>
                        <?php $count++; endwhile; endif; ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<?php do_action( 'woocommerce_after_single_product' ); ?>
