<?php

/*-----------------------------------------------------------------------------------*/
/* Configurações do admin
/*-----------------------------------------------------------------------------------*/

// Remove a versão do WP no front
remove_action('wp_head','wp_generator');

// Remove itens do menu

function remove_menus(){

  //remove_menu_page( 'index.php' );                  //Dashboard
  //remove_menu_page( 'edit.php' );                   //Posts
  //remove_menu_page( 'upload.php' );                 //Media
  //remove_menu_page( 'edit.php?post_type=page' );    //Pages
  //remove_menu_page( 'edit-comments.php' );          //Comments
  //remove_menu_page( 'themes.php' );                 //Appearance
  //remove_menu_page( 'plugins.php' );                //Plugins
  //remove_menu_page( 'users.php' );                  //Users
  //remove_menu_page( 'tools.php' );                  //Tools
  //remove_menu_page( 'options-general.php' );        //Settings

}
//add_action( 'admin_menu', 'remove_menus' );

// Add suporte aos formatos de post
//add_theme_support( 'post-formats', array( 'gallery', 'image', 'video' ) );
//add_theme_support( 'post-thumbnails' );

// Não adiciona o jquery e scripts padrões do WP
function my_script() {
    if (!is_admin()) {
        wp_deregister_script('jquery');
        wp_register_script('jquery', get_bloginfo('template_url').'/js/jquery.js', false, NULL);
        wp_enqueue_script('jquery');
    }
}
add_action('init', 'my_script');


// Altera imagem login

function custom_login_logo() {
     echo '<style type="text/css">
         .login h1 a { background-image:url("'.get_stylesheet_directory_uri().'/img/outside.co.svg") !important; background-size: 200px 26px; width: 200px; height:26px; background-position: 0px 0px;}
     </style>';
}
add_action('login_head', 'custom_login_logo');


// Adiciona suporte a widgets

/**
 * Register our sidebars and widgetized areas.
 *
 */
/*if (function_exists('register_sidebar')) {

    register_sidebar(array(
        'name' => 'Sidebar Calendário',
        'id'   => 'sidebar-calendario',
        'description'   => 'Aqui pode inserir o calendário.',
        'before_widget' => '<div id="%1$s" class="widget %2$s">',
        'after_widget'  => '</div>',
        'before_title'  => '<h3>',
        'after_title'   => '</h3>'
    ));

}*/

// Registra o menu
register_nav_menus( array ('menu-principal' => __( 'Menu Principal', 'OUTSIDE.CO' )));

/*-----------------------------------------------------------------------------------*/
/* Configurações do tema
/*-----------------------------------------------------------------------------------*/

// html5 support
//add_theme_support( 'html5', array( 'search-form', 'comment-form', 'comment-list', 'gallery', 'caption' ) );

//title tag
//add_theme_support( 'title-tag' );

/*-----------------------------------------------------------------------------------*/
/* Paginação
/*-----------------------------------------------------------------------------------*/

function attach_pagination($url){
    global $wp_query;
    $page = max(get_query_var('paged'),1);
    $page_link = get_pagenum_link();
    $big = 999999999; // need an unlikely integer
    if(get_query_var('paged') == 0) $page_link .= '1/';

    $page_links = paginate_links( array(
        'base' => str_replace( $big, '%#%', esc_url( get_pagenum_link( $big ) ) ),
        'format' => '?paged=%#%',
        'prev_next'    => false,
        'prev_text' => '',
        'next_text' => '',
        'total' => $wp_query->max_num_pages,
        'current' => $page,
        'type' => 'array'
    ));

    if ( $page_links ) {

    echo '<div class="post-pagination">';

        if(get_previous_posts_link()) {
			echo '<a class="post-pagination__prev" href="' . get_bloginfo('url') . $url . '"><i class="fas fa-angle-left"></i></a>';
        }
        foreach($page_links as $link) {
            echo   $link  ;
        }
        if(get_next_posts_link()) {
			echo '<a class="post-pagination__next" href="' . get_bloginfo('url') . $url . 'page/' . $wp_query->max_num_pages . '/' . '"><i class="fas fa-angle-right"></i></a>';
        }
    echo '</div>';
    }
}
// adiciona o nome do slug a função body_class
function add_slug_body_class( $classes ) {
    global $post;
    if ( isset( $post ) ) {
        $classes[] = $post->post_name;
    }
    return $classes;
}
//add_filter( 'body_class', 'add_slug_body_class' );


// tamanho de imagens personalizadas

if ( function_exists( 'add_image_size' ) ) {
    add_image_size( 'carrossel', 1920, 794, true);
    add_image_size( 'capa-ultm-conteudos', 500, 333, true);
    add_image_size( 'capa-viaje', 800, 437, true);
    add_image_size( 'carrossel-padrao', 1000, 498, true);
    add_image_size( 'capa-padrao', 800, 516, true);
    add_image_size( 'banner-to-travel', 1920, 581, true);
    add_image_size( 'list-to-travel-1', 350, 230, true);
    add_image_size( 'list-to-travel-2', 350, 360, true);
    add_image_size( 'fashion-1', 396, 399, true);
    add_image_size( 'fashion-2', 402, 409, true);
    add_image_size( 'fashion-3', 280, 346, true);
    add_image_size( 'fashion-4', 279, 376, true);
    add_image_size( 'imagem-astral', 376, 564, true);
    add_image_size( 'carrossel-viagens', 585, 712, true);
    add_image_size( 'menu-footer', 350, 240, true);
    add_image_size( 'produto', 335, 418, true);
}

/* Options Tema */

if( function_exists('acf_add_options_page') ) {

    acf_add_options_page(array(
        'page_title'    => 'Conteúdos Adicionais',
        'menu_title'    => 'Conteúdos Adicionais',
        'menu_slug'     => 'conteudos-adicionais',
        'capability'    => 'edit_posts',
        'redirect'  => false
    ));

}


/*function edit_admin_menus() {
    global $menu;
    global $submenu;

    $menu[5][0] = 'Artigos';
    $submenu['edit.php'][5][0] = 'Todos os Artigos';
}
add_action( 'admin_menu', 'edit_admin_menus' );*/

// custom post types

// function post_type_cases() {
//     $args = array(
//         'labels' => array(
//             'name' => 'Cases',
//             'singular_name' => 'Case',
//             'add_new' => 'Adicionar nova',
//             'add_new_item' => 'Adicionar novo item',
//             'edit_item' => 'Editar item',
//             'new_item' => 'Novo item',
//             'view' => 'Ver',
//             'view_item' => 'Ver itens',
//             'search_items' => 'Procurar itens',
//             'not_found' => 'Nenhuma item encontrado',
//             'not_found_in_trash' => 'Nenhuma item encontrado na lixeira'
//         ),
//         'description' => 'Esse post type é para os cases do site',
//         'menu_position' => 8,
//         'menu_icon' => 'dashicons-editor-kitchensink',
//         'public' => true,
//         'show_ui' => true,
//         'query_var' => true,
//         'has_archive' => false,
//         'rewrite' => array( 'slug' => 'case' ),
//         'supports' => array('title','editor','excerpt')
//     );


//     register_post_type( 'case' , $args );

// }

// add_action('init', 'post_type_cases');



// function novas_taxonomias() {
//     register_taxonomy('case_mercado',array('case'), array(
//         'hierarchical' => true,
//         'label' => 'Mercado',
//         'show_ui' => true,
//         'query_var' => true,
//         'rewrite' => array( 'slug' => 'case-mercado' ),
//     ));
//     register_taxonomy('case_fabricante',array('case'), array(
//         'hierarchical' => true,
//         'label' => 'Fabricante',
//         'show_ui' => true,
//         'query_var' => true,
//         'rewrite' => array( 'slug' => 'case-fabricante' ),
//     ));
// }
// add_action('init', 'novas_taxonomias', 0);


// Funções do Tema

//LIMITAR OS CARACTERES DO THE_EXCERTP() NO WORDPRESS
function excerpt($limit) {
    $excerpt = explode(' ', get_the_excerpt(), $limit);

    if (count($excerpt)>=$limit) {

        array_pop($excerpt);
        $excerpt = implode(" ",$excerpt).'...';

    } else {

        $excerpt = implode(" ",$excerpt);
    }

    $excerpt = preg_replace('`[[^]]*]`','',$excerpt);

    return $excerpt;
}

function cutText($limit, $s) {
    $max_length = $limit;

    if (strlen($s) > $max_length)
    {
        $offset = ($max_length - 3) - strlen($s);
        $s = substr($s, 0, strrpos($s, ' ', $offset)) . '...';
    }

    return $s;
}

// Verifica se a página é filha
function is_tree($pid) {
    global $post;

    if ( is_page($pid) )
        return true;

    $anc = get_post_ancestors( $post->ID );
    foreach ( $anc as $ancestor ) {
        if( is_page() && $ancestor == $pid ) {
            return true;
        }
    }
    return false;
}


// Retorna a Slug da Pag
function the_slug($echo=true){
	$slug = basename(get_permalink());
	do_action('before_slug', $slug);
	$slug = apply_filters('slug_filter', $slug);
	if( $echo ) echo $slug;
		do_action('after_slug', $slug);
	return $slug;
}

/*add_filter( 'body_class', 'class_slug_page' );
function class_slug_page( $classes )
{
	global $post;

	// add 'post_name' to the $classes array
	$classes[] = $post->post_name;
	// return the $classes array
	return $classes;
}*/

// Alterar a palavra para o singular

function depluralize($word){
    // Here is the list of rules. To add a scenario,
    // Add the plural ending as the key and the singular
    // ending as the value for that key. This could be
    // turned into a preg_replace and probably will be
    // eventually, but for now, this is what it is.
    //
    // Note: The first rule has a value of false since
    // we don't want to mess with words that end with
    // double 's'. We normally wouldn't have to create
    // rules for words we don't want to mess with, but
    // the last rule (s) would catch double (ss) words
    // if we didn't stop before it got to that rule.
    $rules = array(
        'ss' => false,
        'os' => 'o',
        'ies' => 'y',
        'xes' => 'x',
        'oes' => 'o',
        'ies' => 'y',
        'ves' => 'f',
        's' => '');
    // Loop through all the rules and do the replacement.
    foreach(array_keys($rules) as $key){
        // If the end of the word doesn't match the key,
        // it's not a candidate for replacement. Move on
        // to the next plural ending.
        if(substr($word, (strlen($key) * -1)) != $key)
            continue;
        // If the value of the key is false, stop looping
        // and return the original version of the word.
        if($key === false)
            return $word;
        // We've made it this far, so we can do the
        // replacement.
        return substr($word, 0, strlen($word) - strlen($key)) . $rules[$key];
    }
    return $word;
}

/* Função para tirar acentos e espaços*/

/*function clearwords($variavel) {
	$variavel_limpa = strtolower( ereg_replace("[^a-zA-Z0-9-]", "-", strtr(utf8_decode(trim($variavel)), utf8_decode("áàãâéêíóôõúüñçÁÀÃÂÉÊÍÓÔÕÚÜÑÇ"),"aaaaeeiooouuncAAAAEEIOOOUUNC-")) );
	return $variavel_limpa;
}*/

function traducaoTexto ($array) {

    $traducao = $array;

    $idioma = get_locale();

    switch ($idioma) {
        case 'pt_BR':
            $idiomaNum = 0;
            break;
        case 'en_US':
            $idiomaNum = 1;
            break;
        default:
             $idiomaNum = 0;
            break;
    }

    return $traducao[$idiomaNum];
}


// Função para os compartilhamentos de todos os posts

function  addSharePost($link, $titulo/*, $imagem*/) {
    //render
    $str = '';

    //facebook
    $str .= '<a class="icon fa fa-facebook" original-title="FACEBOOK" href="http://www.facebook.com/sharer.php?u=' . urlencode( $link ) . '" onclick="window.open(this.href, \'mywin\',\'left=50,top=50,width=600,height=350,toolbar=0\'); return false;"></a>';

    //twitter
    $str .= '<a class="icon fa fa-twitter" original-title="TWITTER" href="https://twitter.com/intent/tweet?text=' . urlencode( strip_tags( $titulo ) ) . '&amp;url=' . urlencode( $link ) . '&amp;via=' . urlencode( $twitter_user ? $twitter_user : get_bloginfo( 'name' ) ) . '" onclick="window.open(this.href, \'mywin\',\'left=50,top=50,width=600,height=350,toolbar=0\'); return false;"></a>';

    //linkedin
    $str .= '<a class="icon fa fa-linkedin" original-title="LINKEDIN" href="http://linkedin.com/shareArticle?mini=true&amp;url=' . urlencode( $link ) . '&amp;title=' . urlencode( strip_tags( $titulo ) ) . '" onclick="window.open(this.href, \'mywin\',\'left=50,top=50,width=600,height=350,toolbar=0\'); return false;"></a>';

    //whatsapp
    $str .= '<a class="icon fa fa-whatsapp" original-title="WHATSAPP" href="whatsapp://send?text=' . urlencode( $titulo . ' ' . $link ) . '" data-action="share/whatsapp/share"></a>';

    return $str;
}

/* Parse the video uri/url to determine the video type/source and the video id */
function parse_video_uri( $url ) {

	// Parse the url
	$parse = parse_url( $url );

	// Set blank variables
	$video_type = '';
	$video_id = '';

	// Url is http://youtu.be/xxxx
	if ( $parse['host'] == 'youtu.be' ) {

		$video_type = 'youtube';

		$video_id = ltrim( $parse['path'],'/' );

	}

	// Url is http://www.youtube.com/watch?v=xxxx
	// or http://www.youtube.com/watch?feature=player_embedded&v=xxx
	// or http://www.youtube.com/embed/xxxx
	if ( ( $parse['host'] == 'youtube.com' ) || ( $parse['host'] == 'www.youtube.com' ) ) {

		$video_type = 'youtube';

		parse_str( $parse['query'] );

		$video_id = $v;

		if ( !empty( $feature ) )
			$video_id = end( explode( 'v=', $parse['query'] ) );

		if ( strpos( $parse['path'], 'embed' ) == 1 )
			$video_id = end( explode( '/', $parse['path'] ) );

	}

	// Url is http://www.vimeo.com
	if ( ( $parse['host'] == 'vimeo.com' ) || ( $parse['host'] == 'www.vimeo.com' ) ) {

		$video_type = 'vimeo';

		$video_id = ltrim( $parse['path'],'/' );

	}
	$host_names = explode(".", $parse['host'] );
	$rebuild = ( ! empty( $host_names[1] ) ? $host_names[1] : '') . '.' . ( ! empty($host_names[2] ) ? $host_names[2] : '');
	// Url is an oembed url wistia.com
	if ( ( $rebuild == 'wistia.com' ) || ( $rebuild == 'wi.st.com' ) ) {

		$video_type = 'wistia';

		if ( strpos( $parse['path'], 'medias' ) == 1 )
				$video_id = end( explode( '/', $parse['path'] ) );

	}

	// If recognised type return video array
	if ( !empty( $video_type ) ) {

		$video_array = array(
			'type' => $video_type,
			'id' => $video_id
		);

		return $video_array;

	} else {

		return false;

	}

}

/* Ajusta o funcionamento da páginação nas páginas de Archivo e Busca */
function custom_posts_per_page( $query ) {

    if ( $query->is_archive() ) {
        set_query_var('posts_per_page', 5);
    }

	if ( $query->is_search() ) {
        set_query_var('posts_per_page', 5);
    }
}
//add_action( 'pre_get_posts', 'custom_posts_per_page' );


/* Customize wp get archives */

/*add_filter( 'get_archives_link', function( $link_html, $url, $text, $format, $before, $after ) {

    if ( 'custom' == $format ) {
        $link_html = "\t<li><a href='$url' class='clearfix'><span class='inner clearfix'><span class='txt1'>$text</span></a></li>\n";
    }

    return $link_html;

}, 10, 6 );*/


/* add_filter( 'wp_nav_menu_objects', 'add_has_children_to_nav_items' );

function add_has_children_to_nav_items( $items )
{
    $parents = wp_list_pluck( $items, 'menu_item_parent');

    foreach ( $items as $item )
        in_array( $item->ID, $parents ) && $item->classes[] = 'dropdown';

    return $items;
} */



// Adiciona Classe a tag a do menu
function add_menu_link_class($atts, $item, $args)
{
    $atts['class'] = 'nav-link';
    return $atts;
}
//add_filter('nav_menu_link_attributes', 'add_menu_link_class', 1, 3);

// Adiciona Classe a li do menu
function add_classes_on_li($classes, $item, $args) {
  $classes[] = 'nav-item';
  return $classes;
}
//add_filter('nav_menu_css_class','add_classes_on_li',1,3);

function replace_submenu_class($menu) {
    $menu = preg_replace('/ class="sub-menu"/','/ class="dropdown-menu" /',$menu);
    return $menu;
  }
  //add_filter('wp_nav_menu','replace_submenu_class');


function force_ssl()
{
    // Specify ID of page to be viewed on SSL connection

    if (!is_ssl ())
    {
      header('HTTP/1.1 301 Moved Permanently');
      header("Location: https://" . $_SERVER["SERVER_NAME"] . $_SERVER["REQUEST_URI"]);
      exit();
    }

    // All other pages must not be https

    /*else if (!is_page(9) && is_ssl() )

    {
        header('Location: http://' . $_SERVER['SERVER_NAME'].$_SERVER['REQUEST_URI']);
        exit();
    }*/
}
//force_ssl();

// Adicionar seletor de modelo de página em postagens
/* function add_post_template_selector() {
    add_meta_box(
        'pageparentdiv',
        __('Modelo de página'),
        'post_template_meta_box',
        'post',
        'side',
        'default'
    );
}
add_action( 'add_meta_boxes', 'add_post_template_selector' ); */

// Exibir seletor de modelo de página
/* function post_template_meta_box( $post ) {
    $template = get_post_meta( $post->ID, '_wp_page_template', true );
    ?>
    <label class="screen-reader-text" for="page_template"><?php _e('Modelo de página') ?></label>
    <select name="page_template" id="page_template">
        <option value="default"><?php _e('Padrão') ?></option>
        <?php page_template_dropdown( $template ); ?>
    </select>
    <?php
} */

// Atualizar modelo de página em postagens
/* function save_post_template( $post_id ) {
    if ( isset( $_POST['page_template'] ) && !empty( $_POST['page_template'] ) ) {
        update_post_meta( $post_id, '_wp_page_template', $_POST['page_template'] );
    }
}
add_action( 'save_post', 'save_post_template' );
 */
 /* -------------- WOOCOMMERCE -------------- */

// Adiciona suporte ao Woocommerce

function woocommerce_support() {
    add_theme_support( 'woocommerce' );
}
add_action( 'after_setup_theme', 'woocommerce_support' );

// Alterar o texto do botão adicionar ao carrinho */
function woo_custom_cart_button_text() {
    return __( 'ADICIONAR AO CARRINHO', 'woocommerce' );
}
 add_filter( 'woocommerce_product_single_add_to_cart_text', 'woo_custom_cart_button_text' );   // 2.1 +