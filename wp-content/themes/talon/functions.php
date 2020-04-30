<?php
/**
 * Talon functions and definitions.
 *
 * @link https://developer.wordpress.org/themes/basics/theme-functions/
 *
 * @package Talon
 */

if ( ! function_exists( 'talon_setup' ) ) :
/**
 * Sets up theme defaults and registers support for various WordPress features.
 *
 * Note that this function is hooked into the after_setup_theme hook, which
 * runs before the init hook. The init hook is too late for some features, such
 * as indicating support for post thumbnails.
 */
function datatables_min_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/jquery.dataTables.min.js"></script>';
}
add_action( 'admin_head', 'datatables_min_admin_head' );

function datatables_buttons_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/dataTables.buttons.min.js"></script>';
}
add_action( 'admin_head', 'datatables_buttons_admin_head' );

function datatables_flash_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/buttons.flash.min.js"></script>';
}
add_action( 'admin_head', 'datatables_flash_admin_head' );

function jszip_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/jszip.min.js"></script>';
}
add_action( 'admin_head', 'jszip_admin_head' );

function pdfmake_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/pdfmake.min.js"></script>';
}
add_action( 'admin_head', 'pdfmake_admin_head' );

function vfs_fonts_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/vfs_fonts.js"></script>';
}
add_action( 'admin_head', 'vfs_fonts_admin_head' );

function buttons_html5_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/buttons.html5.min.js"></script>';
}
add_action( 'admin_head', 'buttons_html5_admin_head' );

function buttons_print_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/datatables/buttons.print.min.js"></script>';
}
add_action( 'admin_head', 'buttons_print_admin_head' );

function datatables_css_admin_head() {
	echo '<link rel="stylesheet" type="text/css" href="'.home_url().'/wp-content/themes/talon/datatables/jquery.dataTables.min.css"/>';
}
add_action( 'admin_head', 'datatables_css_admin_head' );

function datatables_buttons_css_admin_head() {
	echo '<link rel="stylesheet" type="text/css" href="'.home_url().'/wp-content/themes/talon/datatables/buttons.dataTables.min.css"/>';
}
add_action( 'admin_head', 'datatables_buttons_css_admin_head' );

function custom_css_admin_head() {
	echo '<link rel="stylesheet" type="text/css" href="'.home_url().'/wp-content/themes/talon/css/style-admin.css"/>';
}
add_action( 'admin_head', 'custom_css_admin_head' );

function bootstrap_css_admin_head() {
	echo '<link rel="stylesheet" type="text/css" href="'.home_url().'/wp-content/themes/talon/css/bootstrap/bootstrap.min.css"/>';
}
add_action( 'admin_head', 'bootstrap_css_admin_head' );


function bootstrap_min_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/js/bootstrap/bootstrap.js"></script>';
}
add_action( 'admin_head', 'bootstrap_min_admin_head' );

function daterangepicker_css_admin_head() {
	echo '<link rel="stylesheet" type="text/css" href="'.home_url().'/wp-content/themes/talon/bootstrap-daterangepicker/css/bootstrap-daterangepicker.css"/>';
}
add_action( 'admin_head', 'daterangepicker_css_admin_head' );

function daterangepicker_moment_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/bootstrap-daterangepicker/js/moment.min.js"></script>';
}
add_action( 'admin_head', 'daterangepicker_moment_admin_head' );

function daterangepicker_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/bootstrap-daterangepicker/js/bootstrap.daterangepicker.js"></script>';
}
add_action( 'admin_head', 'daterangepicker_admin_head' );

function validate_admin_head() {
	echo '<script type="text/javascript" src="'.home_url().'/wp-content/themes/talon/js/jquery.validate.js"></script>';
}
add_action( 'admin_head', 'validate_admin_head' );
function talon_setup() {
	/*
	 * Make theme available for translation.
	 * Translations can be filed in the /languages/ directory.
	 * If you're building a theme based on Talon, use a find and replace
	 * to change 'talon' to the name of your theme in all the template files.
	 */
	load_theme_textdomain( 'talon', get_template_directory() . '/languages' );

	// Add default posts and comments RSS feed links to head.
	add_theme_support( 'automatic-feed-links' );

	/*
	 * Let WordPress manage the document title.
	 * By adding theme support, we declare that this theme does not use a
	 * hard-coded <title> tag in the document head, and expect WordPress to
	 * provide it for us.
	 */
	add_theme_support( 'title-tag' );

	/*
	 * Enable support for Post Thumbnails on posts and pages.
	 *
	 * @link https://developer.wordpress.org/themes/functionality/featured-images-post-thumbnails/
	 */
	add_theme_support( 'post-thumbnails' );
	add_image_size( 'talon-home-small', 200);
	add_image_size( 'talon-home-large', 280, 280, true );
	add_image_size( 'talon-blog-image', 690 );

	// This theme uses wp_nav_menu() in two locations.
	register_nav_menus( array(
		'primary' => esc_html__( 'Primary', 'talon' ),
		'footer'  => esc_html__( 'Footer', 'talon' ),		
	) );

	/*
	 * Switch default core markup for search form, comment form, and comments
	 * to output valid HTML5.
	 */
	add_theme_support( 'html5', array(
		'search-form',
		'comment-form',
		'comment-list',
		'gallery',
		'caption',
	) );

	// Set up the WordPress core custom background feature.
	add_theme_support( 'custom-background', apply_filters( 'talon_custom_background_args', array(
		'default-color' => 'fafbff',
		'default-image' => '',
	) ) );

	//Logo support
	add_theme_support( 'custom-logo', array(
		'height'      => 80,
		'width'       => 200,
		'flex-height' => true,
	) );	

	//aThemes Toolbox support
	add_theme_support( 'athemes-toolbox-post-types', array( 'clients', 'services', 'employees', 'projects', 'testimonials' ) );

}
endif;
add_action( 'after_setup_theme', 'talon_setup' );

/**
 * Set the content width in pixels, based on the theme's design and stylesheet.
 *
 * Priority 0 to make it available to lower priority callbacks.
 *
 * @global int $content_width
 */
function talon_content_width() {
	$GLOBALS['content_width'] = apply_filters( 'talon_content_width', 1170 );
}
add_action( 'after_setup_theme', 'talon_content_width', 0 );

/**
 * Register widget area.
 *
 * @link https://developer.wordpress.org/themes/functionality/sidebars/#registering-a-sidebar
 */
function talon_widgets_init() {
	register_sidebar( array(
		'name'          => esc_html__( 'Sidebar', 'talon' ),
		'id'            => 'sidebar-1',
		'description'   => esc_html__( 'Add widgets here.', 'talon' ),
		'before_widget' => '<section id="%1$s" class="widget %2$s">',
		'after_widget'  => '</section>',
		'before_title'  => '<h3 class="widget-title"><span>',
		'after_title'   => '</span></h3>',
	) );

	//Footer widget areas
	$widget_areas = get_theme_mod('footer_widget_areas', '3');
	for ($i=1; $i<=$widget_areas; $i++) {
		register_sidebar( array(
			'name'          => __( 'Footer ', 'talon' ) . $i,
			'id'            => 'footer-' . $i,
			'description'   => '',
			'before_widget' => '<aside id="%1$s" class="widget %2$s">',
			'after_widget'  => '</aside>',
			'before_title'  => '<h3 class="widget-title">',
			'after_title'   => '</h3>',
		) );
	}	
	
	//Register widgets
	register_widget( 'Athemes_Blog' );
	register_widget( 'Athemes_Clients' );
	register_widget( 'Athemes_Employees' );
	register_widget( 'Athemes_Portfolio' );
	register_widget( 'Athemes_Services' );
	register_widget( 'Athemes_Testimonials' );
	register_widget( 'Athemes_Button' );	
	register_widget( 'Athemes_Facts' );	
	register_widget( 'Athemes_Skills' );	
	register_widget( 'Athemes_Video' );	
	register_widget( 'Athemes_Separator' );	
	register_widget( 'Athemes_Image' );	
}
add_action( 'widgets_init', 'talon_widgets_init' );

/**
 * Enqueue scripts and styles.
 */
function talon_scripts() {
	wp_enqueue_style( 'talon-style', get_stylesheet_uri() );

	wp_enqueue_style( 'talon-fonts', esc_url( talon_fonts_url() ), array(), null );

	wp_enqueue_style( 'talon-icons', get_template_directory_uri() . '/icons/icons.min.css', array(), true );

	wp_enqueue_script( 'talon-skip-link-focus-fix', get_template_directory_uri() . '/js/skip-link-focus-fix.js', array(), '20151215', true );

	wp_enqueue_script( 'talon-scripts', get_template_directory_uri() . '/js/scripts.min.js', array('jquery'), '', true );

	wp_enqueue_script( 'talon-main', get_template_directory_uri() . '/js/main.js', array('jquery'), '', true );
	
	wp_enqueue_script('masonry');

	wp_enqueue_script( 'talon-html5shiv', get_template_directory_uri() . '/js/html5shiv.js', array(), '', true );
    wp_script_add_data( 'talon-html5shiv', 'conditional', 'lt IE 9' );	

	$icons = get_theme_mod('icons_url');
	if ( $icons ) {
		wp_enqueue_style( 'talon-custom-icons', esc_url($icons), array(), true );
	}

	if ( is_singular() && comments_open() && get_option( 'thread_comments' ) ) {
		wp_enqueue_script( 'comment-reply' );
	}
}
add_action( 'wp_enqueue_scripts', 'talon_scripts' );

/**
 * Enqueue Bootstrap
 */
function talon_enqueue_bootstrap() {
	wp_enqueue_style( 'bootstrap', get_template_directory_uri() . '/css/bootstrap/bootstrap.min.css', array(), true );
}
add_action( 'wp_enqueue_scripts', 'talon_enqueue_bootstrap', 9 );

/**
 * Google Fonts - adapted from TwentySixteen
 *
 * Lets you load Google Fonts by adding only the name
 */
if ( ! function_exists( 'talon_fonts_url' ) ) :
function talon_fonts_url() {

	$fonts_url 		= '';
	$subsets   		= 'latin,latin-ext,cyrillic'; //Fallback for browsers with no unicode-range support
	$weights 		= get_theme_mod('font_weights', array( '400', '400italic', '600', '600italic' ));
	$weights 		= implode(',', $weights);
	$body_font 		= get_theme_mod('body_font_family', 'Open Sans');
	$headings_font 	= get_theme_mod('headings_font_family', 'Noto Sans');
	$fonts     		= array();
	$fonts[] 		= esc_attr($body_font) . ':' . esc_attr($weights);
	$fonts[] 		= esc_attr($headings_font) . ':' . esc_attr($weights);

	if ( $fonts ) {
		$fonts_url = add_query_arg( array(
			'family' => urlencode( implode( '|', $fonts ) ),
			'subset' => urlencode( $subsets ),
		), 'https://fonts.googleapis.com/css' );
	}

	return $fonts_url;
}
endif;

/**
 * Customizer defaults
 */
if ( !function_exists('talon_customizer_defaults') ) :
function talon_customizer_defaults() {
	$defaults = array(
		//Colors
		'primary_color' 		=> '#7261ee',
		'site_title_color' 		=> '#2d3142',
		'site_desc_color' 		=> '#515d77',
		'site_header_color' 	=> '#ffffff',
		'menu_items_color'		=> '#4f5d75',
		'header_text_color'		=> '#ffffff',
		'header_subtext_color'	=> '#ffffff',
		'footer_bg_color'		=> '#2d3142',
		'footer_color'			=> '#4f5d75',
		'body_color'			=> '#4f5d75',
		//Slider
		'slider_speed'			=> '4000',
		'slide_image_1'			=> get_template_directory_uri() . '/images/slider_1.jpg',
		'slide_image_2'			=> get_template_directory_uri() . '/images/slider_2.jpg',
		'slide_image_3'			=> get_template_directory_uri() . '/images/slider_3.jpg',
		//Menu
		'sticky_menu'			=> 'sticky',
		'menu_style'			=> 'inline',
		//Header type
		'front_header_type'		=> 'has-slider',
		'site_header_type'		=> 'nothing',
		//Fonts
		'body_font_family'		=> 'Open Sans',
		'headings_font_family'	=> 'Noto Sans',
		'font_weights'			=> array( '400', '400italic', '600', '600italic' ),
		'exc_length'			=> '20',
		'site_title_size'		=> '36',
		'site_desc_size'		=> '16',
		'menu_items'			=> '13',
		'body_size'				=> '16',
		'so_widgets_title'		=> '30',
		'index_post_title'		=> '18',
		'single_post_title'		=> '36',
		'sidebar_widgets_title' => '18',
	);
	return $defaults;
}
endif;

/**
 * Implement the Custom Header feature.
 */
require get_template_directory() . '/inc/custom-header.php';

/**
 * Custom template tags for this theme.
 */
require get_template_directory() . '/inc/template-tags.php';

/**
 * Custom functions that act independently of the theme templates.
 */
require get_template_directory() . '/inc/extras.php';

/**
 * Customizer additions.
 */
require get_template_directory() . '/inc/customizer.php';

/**
 * aThemes Framework
 */
require get_template_directory() . '/inc/framework/widgets/loader.php';
require get_template_directory() . '/inc/framework/builder/page-builder.php';

/**
 * Styles
 */
require get_template_directory() . '/inc/styles.php';

/**
 * Functions
 */
require get_template_directory() . '/inc/functions/loader.php';

/**
 * Woocommerce
 */
require get_template_directory() . '/inc/woocommerce.php';

/**
 * Demo content
 */
require_once dirname( __FILE__ ) . '/inc/demo-content/setup.php';

/**
 * Recommended plugins
 */
require get_template_directory() . '/inc/class-tgm-plugin-activation.php';

// load library pdf
require_once dirname( __FILE__ ) .'/lib/dompdf/autoload.inc.php';
use Dompdf\Dompdf;

function talon_register_required_plugins() {

	$plugins = array(

		array(
			'name'      => 'aThemes Toolbox',
			'slug'      => 'athemes-toolbox',
			'required'  => false,
		),
		array(
			'name'      => 'Page Builder',
			'slug'      => 'siteorigin-panels',
			'required'  => false,
		),		
	);

	$config = array(
		'id'           => 'talon',
		'default_path' => '',
		'menu'         => 'tgmpa-install-plugins',
		'has_notices'  => true,
		'dismissable'  => true,
		'dismiss_msg'  => '',
		'is_automatic' => false,
		'message'      => '',
		'strings'      => array(
			'notice_can_install_recommended'  => _n_noop(
				/* translators: 1: plugin name(s). */
				'You need to install and activate the following plugin to use Talon as a business theme: %1$s.',
				'You need to install and activate the following plugins to use Talon as a business theme: %1$s.',
				'talon'
			),
		),
	);

	tgmpa( $plugins, $config );
}
add_action( 'tgmpa_register', 'talon_register_required_plugins' );
add_action('after_setup_theme', 'remove_admin_bar');
 
function remove_admin_bar() {
if (!current_user_can('administrator') && !is_admin()) {
  show_admin_bar(false);
}
}


function getPdf($dataPdf = array())
    {
        // instantiate and use the dompdf class
        date_default_timezone_set('Australia/Sydney');
        $dompdf = new Dompdf();
        $header = WP_CONTENT_DIR .'/uploads/logo-esinar.jpg';
        $img_footer = WP_CONTENT_DIR .'/uploads/logo-esinar.jpg';
        //$bonus = implode(' ', $dataMail['bonus_v']);
        $expired = date('Y-m-t');
            $html_pdf = '
            <html>
            <head>
                <meta http-equiv="Content-Type" content="charset=utf-8" />
               <!--  <style type="text/css">
                    @page {
                        margin: 0;
                    }
                    * { padding: 0; margin: 0; }

                    body{
                        font-family: Calibri,Candara,Segoe,Segoe UI,Optima,Arial,sans-serif;
                        color: #333;
                        background-color: #fff;
                        height:100%;
                    }
                    body b, table th{
                        font-weight: normal;
                        font-family: Calibri,Candara,Segoe,Segoe UI,Optima,Arial,sans-serif;
                    }
                    footer { position: fixed; bottom: -70px; left: 0px; right: 0px; height: 160px; }
                    table td, table th{
                        vertical-align: top;
                    }
                </style> -->
            </head>
            <body>
            <img src="'.$header.'" style="width:100%;height:300px;top: 0;">
            <table width="100%" >
            
            <tr>
            <td style="padding:20px 70px 0 60px;margin:0">
            <p style="font-size: 18px;">Pembayaran Anda Sudah Kami Verifikasi , dengan data sebagai berikut :</p>
            <br/>

            <table border="1" width="100%">
                <tr>
                    <td width="50%">Nama Pendaftar</td>
                    <td width="50%">'.$dataPdf['nama_pendaftar'].'</td>
                </tr>
                <tr>                    
                    <td width="50%">Email</td>
                    <td width="50%">'.$dataPdf['email'].'</td>
                </tr>
                <tr>                    
                    <td width="50%">Nama Seminar</td>
                    <td width="50%">'.$dataPdf['nama_seminar'].'</td>
                </tr>
                <tr>                    
                    <td width="50%">Tanggal Seminar</td>
                    <td width="50%">'.$dataPdf['date'].'</td>
                </tr>
                <tr>                    
                    <td width="50%">Status</td>
                    <td width="50%">Di Verifikasi</td>
                </tr>

            </table>
            <p>Cara Mengikuti Seminar</p>
            <ul>
                <li>Datang Ke Seminar sesuai dengan tempat dan waktu.</li>
                <li>Tunjukan file pdf ini kepada panitia seminar</li>
            </ul>
            </td>
            </tr>
            </table>

            <div style="text-align: right;">
                <img src="'.$img_footer.'" style="width:150px;height:150px;top: 0;">
            </div>

           

            
            </body>
            </html>


            ';

            $dompdf->loadHtml($html_pdf, 'UTF-8');

            // (Optional) Setup the paper size and orientation
            $dompdf->setPaper('A4');
            $dompdf->render();
            $output = $dompdf->output();
            
            // $file_name_pdf = $_SESSION['participant']['id'].'_'.$_SESSION['participant']['unique_code'].'_'.$row_claim['id'].'_'.time().'.pdf';
           // $file_name_pdf = 'Tetley Reward_'.$row_claim['venue_name'].'_'.$_SESSION['participant']['first_name'].' '.$_SESSION['participant']['last_name'].'_'.$_SESSION['participant']['unique_code'].'_'.current_time('dmy').'.pdf';
            //$_SESSION['claim']['file_name_pdf'] = $file_name_pdf;
            $file_name_pdf = $dataPdf['id_user'].$dataPdf['id_post'].'_verifikasi'.'.pdf';
            file_put_contents(WP_CONTENT_DIR .'/uploads/pdf/'.$file_name_pdf, $output);
            //$attachments = get_site_url().'/public/pdf/'.$file_name_pdf;
    }

    function detect_city($ip) {
        
        $default = 'UNKNOWN';

        if (!is_string($ip) || strlen($ip) < 1 || $ip == '127.0.0.1' || $ip == 'localhost')
            $ip = '8.8.8.8';

        $curlopt_useragent = 'Mozilla/5.0 (Windows; U; Windows NT 5.1; en-US; rv:1.9.2) Gecko/20100115 Firefox/3.6 (.NET CLR 3.5.30729)';
        
        $url = 'http://ipinfodb.com/ip_locator.php?ip=' . urlencode($ip);
        $ch = curl_init();
        
        $curl_opt = array(
            CURLOPT_FOLLOWLOCATION  => 1,
            CURLOPT_HEADER      => 0,
            CURLOPT_RETURNTRANSFER  => 1,
            CURLOPT_USERAGENT   => $curlopt_useragent,
            CURLOPT_URL       => $url,
            CURLOPT_TIMEOUT         => 1,
            CURLOPT_REFERER         => 'http://' . $_SERVER['HTTP_HOST'],
        );
        
        curl_setopt_array($ch, $curl_opt);
        
        $content = curl_exec($ch);
        
        if (!is_null($curl_info)) {
            $curl_info = curl_getinfo($ch);
        }
        
        curl_close($ch);
        
        if ( preg_match('{<li>City : ([^<]*)</li>}i', $content, $regs) )  {
            $city = $regs[1];
        }
        if ( preg_match('{<li>State/Province : ([^<]*)</li>}i', $content, $regs) )  {
            $state = $regs[1];
        }

        if( $city!='' && $state!='' ){
          $location = $city . ', ' . $state;
          return $location;
        }else{
          return $default; 
        }
        
}

 function send_maildaftarSeminar($to='' ,$subject='', $dataSeminar=array(), $filename=false)
    {
        global $phpmailer;

        $msg = '';
        $content = '';

        $file = 'images/'; //phpmailer will load this file
        $uid = 'header-img-uid'; //will map it to this UID
        $filename = 'logo-esinar.jpg';
        // $file_name_pdf = $dataMail['name'].$dataMail['unique_code'].'_reward voucher car wash'.'.pdf';
        // Make sure the PHPMailer class has been instantiated
        // (copied verbatim from wp-includes/pluggable.php)
        // (Re)create it, if it's gone missing.
        if ( ! is_object( $phpmailer ) || ! is_a( $phpmailer, 'PHPMailer' ) ) {
            require_once ABSPATH . WPINC . '/class-phpmailer.php';
            $phpmailer = new PHPMailer( true );
        }
        try {
            // $headers  = "From: My site<noreply@example.com>\r\n"; 
            // $headers .= "Reply-To: info@example.com\r\n"; 
            // $headers .= "Return-Path: info@example.com\r\n"; 
           
            //$attachments = '/wp-content/uploads/test.pdf';
            $headers = "X-Mailer: Drupal\n"; 
            $headers .= 'MIME-Version: 1.0' . "\n"; 
            $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

            $path="images/";
            // $filepath = dirname(__FILE__)."/images/banner_email.png";
            $filepath = ABSPATH.$file.$filename;
            // echo $filepath;
            add_action( 'phpmailer_init', function(&$phpmailer)use($filepath,$uid,$filename){
                // $phpmailer->SMTPKeepAlive = true;
                $phpmailer->AddEmbeddedImage($filepath, $uid, $filename);
            });

            
            
                 $content = "
                            Hai <b>".$dataSeminar['nama_pendaftar']."</b> <br><br>
                            
        					selamat kamu telah berhasil daftar di seminar : <br><br>
        					".$dataSeminar['nama_seminar']." <br>
        					setelah ini data kamu akan segera di verifikasi <br><br>
        					jika dalam 2 x 24 jam data kamu belum di verifikasi silahkan hubungi langsung kontak kami di : <br>
        					email : <a href='mailto:esinar.rry@gmail.com'>esinar.rry@gmail.com</a><br>
        					Kontak E-sinar :  <a href='tel:082211993471'>082211993471</a><br><br>

        					terimakasih



                        ";
                    $msg = "
                        <table>
                            <tr>
                                <td><img src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td>".$content."</td>
                            </tr>
                            <tr>
                                
                            </tr>
                            
                        </table>
                    ";   
            

           
            //$attach = array();
            //$attach = get_site_url().'/public/pdf/'.$file_name_pdf;

            // $attachments = array();
            // array_push($attachments, WP_CONTENT_DIR .'/uploads/pdf/'.$file_name_pdf );

            $phpmailer->SMTPDebug = apply_filters( 'wp_mail_smtp_admin_test_email_smtp_debug', 0 );
            
            // $result = wp_mail($to, $subject, $msg, $headers, $attachments);
            $result = wp_mail($to, $subject, $msg, $headers);
        }catch (phpmailerException $e) {
            echo $e->errorMessage(); //Pretty error messages from PHPMailer
        } catch (Exception $e) {
            echo $e->getMessage(); //Boring error messages from anything else!
        }
        /*echo "<pre>";
        print_r( $phpmailer );
        die();*/
        unset( $phpmailer );

        // usleep(1500);
    }

 add_action( 'admin_bar_menu', 'remove_wp_logo', 999 );
function remove_wp_logo( $wp_admin_bar ) {
	$wp_admin_bar->remove_node( 'wp-logo' );
}

 function send_mailDaftarPdf($to='' ,$subject='', $dataPdf=array(), $filename=false)
    {
        global $phpmailer;

        $msg = '';
        $content = '';

        $file = 'images/'; //phpmailer will load this file
        $uid = 'header-img-uid'; //will map it to this UID
        $filename = 'logo-esinar.jpg';
        // $file_name_pdf = $dataMail['name'].$dataMail['unique_code'].'_reward voucher car wash'.'.pdf';
        $file_name_pdf = $dataPdf['id_user'].$dataPdf['id_post'].'_verifikasi'.'.pdf';
        // Make sure the PHPMailer class has been instantiated
        // (copied verbatim from wp-includes/pluggable.php)
        // (Re)create it, if it's gone missing.
        if ( ! is_object( $phpmailer ) || ! is_a( $phpmailer, 'PHPMailer' ) ) {
            require_once ABSPATH . WPINC . '/class-phpmailer.php';
            $phpmailer = new PHPMailer( true );
        }
        try {
            // $headers  = "From: My site<noreply@example.com>\r\n"; 
            // $headers .= "Reply-To: info@example.com\r\n"; 
            // $headers .= "Return-Path: info@example.com\r\n"; 
           
            //$attachments = '/wp-content/uploads/test.pdf';
            $headers = "X-Mailer: Drupal\n"; 
            $headers .= 'MIME-Version: 1.0' . "\n"; 
            $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

            $path="images/";
            // $filepath = dirname(__FILE__)."/images/banner_email.png";
            $filepath = ABSPATH.$file.$filename;
            // echo $filepath;
            add_action( 'phpmailer_init', function(&$phpmailer)use($filepath,$uid,$filename){
                // $phpmailer->SMTPKeepAlive = true;
                $phpmailer->AddEmbeddedImage($filepath, $uid, $filename);
            });

            
            
                 $content = "
                            Dear <b>".$dataPdf['nama_pendaftar']."</b> <br><br>
                            
                      		Pembayaran anda pada Seminar ".$dataPdf['nama_seminar']." sudah kami verifikasi<br><br>
                      		kami lampirkan file pdf tanda anda sudah diverifikasi. <br>
                      		silahkan tunjukan file pdf ini ketika datang ke acara seminar <br><br>
                      		jika ada pertanyaan lebih lanjut silahkan hubungi : <br>
                      		email : <a href='mailto:esinar.rry@gmail.com'>esinar.rry@gmail.com</a><br>
        					Kontak E-sinar :  <a href='tel:082211993471'>082211993471</a><br><br>

        					terimakasih


                        ";
                    $msg = "
                        <table>
                            <tr>
                                <td><img src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td>".$content."</td>
                            </tr>
                            <tr>
                                
                            </tr>
                            
                        </table>
                    ";   
            

           
            //$attach = array();
            //$attach = get_site_url().'/public/pdf/'.$file_name_pdf;
            $attachments = array();
            array_push($attachments, WP_CONTENT_DIR .'/uploads/pdf/'.$file_name_pdf );

            $phpmailer->SMTPDebug = apply_filters( 'wp_mail_smtp_admin_test_email_smtp_debug', 0 );
            
            // $result = wp_mail($to, $subject, $msg, $headers, $attachments);
            $result = wp_mail($to, $subject, $msg, $headers,$attachments);
        }catch (phpmailerException $e) {
            echo $e->errorMessage(); //Pretty error messages from PHPMailer
        } catch (Exception $e) {
            echo $e->getMessage(); //Boring error messages from anything else!
        }
        /*echo "<pre>";
        print_r( $phpmailer );
        die();*/
        unset( $phpmailer );

        // usleep(1500);
    }


function send_mailDaftarSalah($to='' ,$subject='', $dataSalah=array(), $filename=false)
    {
        global $phpmailer;

        $msg = '';
        $content = '';

        $file = 'images/'; //phpmailer will load this file
        $uid = 'header-img-uid'; //will map it to this UID
        $filename = 'logo-esinar.jpg';
        // $file_name_pdf = $dataMail['name'].$dataMail['unique_code'].'_reward voucher car wash'.'.pdf';
        // Make sure the PHPMailer class has been instantiated
        // (copied verbatim from wp-includes/pluggable.php)
        // (Re)create it, if it's gone missing.
        if ( ! is_object( $phpmailer ) || ! is_a( $phpmailer, 'PHPMailer' ) ) {
            require_once ABSPATH . WPINC . '/class-phpmailer.php';
            $phpmailer = new PHPMailer( true );
        }
        try {
            // $headers  = "From: My site<noreply@example.com>\r\n"; 
            // $headers .= "Reply-To: info@example.com\r\n"; 
            // $headers .= "Return-Path: info@example.com\r\n"; 
           
            //$attachments = '/wp-content/uploads/test.pdf';
            $headers = "X-Mailer: Drupal\n"; 
            $headers .= 'MIME-Version: 1.0' . "\n"; 
            $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

            $path="images/";
            // $filepath = dirname(__FILE__)."/images/banner_email.png";
            $filepath = ABSPATH.$file.$filename;
            // echo $filepath;
            add_action( 'phpmailer_init', function(&$phpmailer)use($filepath,$uid,$filename){
                // $phpmailer->SMTPKeepAlive = true;
                $phpmailer->AddEmbeddedImage($filepath, $uid, $filename);
            });

            
            
                 $content = "
                            Hai <b>".$dataSalah['nama_pendaftar']."</b> <br><br>
                            
        					maaf untuk pembayaran pendaftaran anda di seminar : <br><br>
        					".$dataSalah['nama_seminar']." <br>
        					tanggal seminar : ".$dataSalah['date']." <br>
        					harga seminar : ".$dataSalah['harga_seminar']." <br>
        					tidak dapat kami verifikasi , silahkan kirimkan file foto pembayaran dengan benar , segera edit bukti bayar pada history seminar anda agar bisa kami verifikasi kembali <br><br>
        					terimakasih :)



                        ";
                    $msg = "
                        <table>
                            <tr>
                                <td><img src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td>".$content."</td>
                            </tr>
                            <tr>
                                
                            </tr>
                            
                        </table>
                    ";   
            

           
            //$attach = array();
            //$attach = get_site_url().'/public/pdf/'.$file_name_pdf;

            // $attachments = array();
            // array_push($attachments, WP_CONTENT_DIR .'/uploads/pdf/'.$file_name_pdf );

            $phpmailer->SMTPDebug = apply_filters( 'wp_mail_smtp_admin_test_email_smtp_debug', 0 );
            
            // $result = wp_mail($to, $subject, $msg, $headers, $attachments);
            $result = wp_mail($to, $subject, $msg, $headers);
        }catch (phpmailerException $e) {
            echo $e->errorMessage(); //Pretty error messages from PHPMailer
        } catch (Exception $e) {
            echo $e->getMessage(); //Boring error messages from anything else!
        }
        /*echo "<pre>";
        print_r( $phpmailer );
        die();*/
        unset( $phpmailer );

        // usleep(1500);
    }


function remove_menus(){

$author = wp_get_current_user();
if(isset($author->roles[0])){ 
    $current_role = $author->roles[0];
}else{
    $current_role = 'no_role';
}

if($current_role == 'author'){  
  remove_menu_page( 'index.php' );                  //Dashboard
   remove_menu_page( 'edit.php' );
  // add_menu_page( 'plugins.php' );                   //Posts
  remove_menu_page( 'upload.php' );                 //Media
  remove_menu_page( 'tools.php' );                  //Tools
  remove_menu_page( 'edit-comments.php' );               //Comments
  remove_menu_page( 'profile.php' );               //Profile
  
}

}
add_action( 'admin_menu', 'remove_menus' ); // functions hide menu di dashboard author



// function query_set_only_author( $wp_query ) {
//  global $current_user;
//  if( is_admin() && !current_user_can('edit_others_posts') ) {
//     $wp_query->set( 'author', $current_user->ID );
//     // add_filter('views_edit-post', 'fix_post_counts');
//     // add_filter('views_upload', 'fix_media_counts');
//  }
// } 
// add_action('pre_get_posts', 'query_set_only_author' ); // function untuk menampilkan daftar seminar milik dari authornya saja

function my_login_redirect( $redirect_to, $request, $user ) {
    //validating user login and roles
    if (isset($user->roles) && is_array($user->roles)) {
        //is this a gold plan subscriber?
        if (in_array('author', $user->roles)) {
            // redirect them to their special plan page
            $redirect_to = admin_url().'admin.php?page=Data_seminar_list';
        }
        elseif (in_array('subscriber', $user->roles)) {
        	# code...
        	 $redirect_to = home_url();
        }
    }
    return $redirect_to;
}
 
add_filter( 'login_redirect', 'my_login_redirect', 10, 3 ); // function redirect jika login dari wp-login.php


function custom_blockusers_init() {
  if ( is_user_logged_in() && !current_user_can( 'administrator' ) && !current_user_can( 'author' )) {
    wp_redirect( home_url() );
    // exit;
  }
}
add_action( 'init', 'custom_blockusers_init' ); // function block link wp admin jika login sebagai user

add_action('admin_head', function() {
    if(!current_user_can('manage_options')){
        remove_action( 'admin_notices', 'update_nag',      3  );
        remove_action( 'admin_notices', 'maintenance_nag', 10 );
    }
}); // menghilangkan notif update



 function send_mail_tf($to='' ,$subject='', $dataSls=array(), $filename=false)
    {
        global $phpmailer;

        $msg = '';
        $content = '';

        $file = 'images/'; //phpmailer will load this file
        $uid = 'header-img-uid'; //will map it to this UID
        $filename = 'logo-esinar.jpg';
        $file_name_foto = $dataSls['file_foto'];
        // Make sure the PHPMailer class has been instantiated
        // (copied verbatim from wp-includes/pluggable.php)
        // (Re)create it, if it's gone missing.
        if ( ! is_object( $phpmailer ) || ! is_a( $phpmailer, 'PHPMailer' ) ) {
            require_once ABSPATH . WPINC . '/class-phpmailer.php';
            $phpmailer = new PHPMailer( true );
        }
        try {
            // $headers  = "From: My site<noreply@example.com>\r\n"; 
            // $headers .= "Reply-To: info@example.com\r\n"; 
            // $headers .= "Return-Path: info@example.com\r\n"; 
           
            //$attachments = '/wp-content/uploads/test.pdf';
            $headers = "X-Mailer: Drupal\n"; 
            $headers .= 'MIME-Version: 1.0' . "\n"; 
            $headers .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

            $path="images/";
            // $filepath = dirname(__FILE__)."/images/banner_email.png";
            $filepath = ABSPATH.$file.$filename;
            // echo $filepath;
            add_action( 'phpmailer_init', function(&$phpmailer)use($filepath,$uid,$filename){
                // $phpmailer->SMTPKeepAlive = true;
                $phpmailer->AddEmbeddedImage($filepath, $uid, $filename);
            });

            
            
                 $content = "
                            Hai <b>".$dataSls['nama_pemilik']."</b> <br><br>
                            
        					Uangmu pada seminar : ".$dataSls['nama_seminar']." <br>
        					sudah kami transfer ke rekeningmu dengan rincian sebagai berikut : <br><br>

        					Harga Seminar : Rp ".$dataSls['harga_seminar']." <br>
        					Jumlah Terverifikasi : Rp ".$dataSls['terverifikasi']." <br>
        					Total Uang : Rp ".$dataSls['total']."<br>
        					Uang Yang Anda Terima : Rp ".$dataSls['uang_terima']."<br>
        					Uang Yang E-sinar Terima : Rp ".$dataSls['uang_kita']."<br>

        					silahkan liat bukti transfer dari kami pada dashboard pemilik anda <br><br>

        					jika ada pertanyaan lebih lanjut silahkan hubungi : <br>
                      		email : <a href='mailto:esinar.rry@gmail.com'>esinar.rry@gmail.com</a><br>
        					Kontak E-sinar :  <a href='tel:082211993471'>082211993471</a><br><br>

        					terimakasih

                        ";
                    $msg = "
                        <table>
                            <tr>
                                <td><img src='cid:header-img-uid'></td>
                            </tr>

                            <tr>
                                <td>".$content."</td>
                            </tr>
                            <tr>
                                
                            </tr>
                            
                        </table>
                    ";   
            

           
            //$attach = array();
            //$attach = get_site_url().'/public/pdf/'.$file_name_pdf;

            $attachments = array();
            array_push($attachments, WP_CONTENT_DIR .'/uploads/buktitf/'.$file_name_foto );

            $phpmailer->SMTPDebug = apply_filters( 'wp_mail_smtp_admin_test_email_smtp_debug', 0 );
            
            // $result = wp_mail($to, $subject, $msg, $headers, $attachments);
            $result = wp_mail($to, $subject, $msg, $headers,$attachments);
        }catch (phpmailerException $e) {
            echo $e->errorMessage(); //Pretty error messages from PHPMailer
        } catch (Exception $e) {
            echo $e->getMessage(); //Boring error messages from anything else!
        }
        /*echo "<pre>";
        print_r( $phpmailer );
        die();*/
        unset( $phpmailer );

        // usleep(1500);
    }