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
                    <div class="subtitle"><?php the_title(); ?></div>
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
                            <?php echo addSharePost(get_permalink(), get_the_title()) ?>
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
            <?php comments_template(); ?>
        </div>
    </div>
</div>
<?php get_footer(); ?>