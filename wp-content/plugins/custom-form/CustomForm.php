<?php
 
/**
 * Plugin Name: Custom Form
 * Plugin URI: http://www.scriptbaker.com/
 * Description: Creates a custom form through shortcode and handles the submit event.
 * Version: 1.0
 * Author: Tahir Yasin
 * Author URI: http://www.scriptbaker.com/author/tahir/
 * License: GPL2
 */
//require get_template_directory() .'/lib/dompdf/autoload.inc.php';
// require_once dirname( __FILE__ ) .'/../lib/dompdf/autoload.inc.php';
//use Dompdf\Dompdf;
 
// session_start();
date_default_timezone_set('Asia/Jakarta');
// require('../../../../wp-load.php');

class CustomForm
{
    protected $error = array();
    protected $errorInput = array();

    public function __construct()
    {
        add_action('init', array($this, 'init'));
        add_shortcode('custom_form', array($this, 'shortcode_handler'));
        /*##########################################################################*/
        /*###############################--BOOTSTRAP--##############################*/
        /*##########################################################################*/
        
        add_action( 'wp_enqueue_scripts', array($this, 'theme_styles'));
        add_action( 'wp_enqueue_scripts', array($this, 'theme_js'));


        
    }

    function theme_styles() {

        wp_enqueue_style( 'bootstrap_css', get_template_directory_uri() . '/bootstrap/css/bootstrap.css' );
        // wp_enqueue_style( 'bootstrap_css2', get_template_directory_uri() . '/bootstrap/css/bootstrap-responsive.css' );
        wp_enqueue_style( 'bvalidator_css', plugins_url('/bvalidator/themes/insert/insert.css') );
        // wp_enqueue_style( 'main_css', get_template_directory_uri() . '/style.css' );
        wp_enqueue_style( 'talon-datepicker', get_template_directory_uri() . '/bootstrap-datepicker/css/datepicker.css' );

    }

    

    function theme_js() {

        global $wp_scripts;

        wp_enqueue_script( 'bootstrap_js', get_template_directory_uri() . '/bootstrap/js/bootstrap.min.js', array('jquery'));
        wp_enqueue_script( 'bvalidator_js', plugins_url('/bvalidator/jquery.bvalidator.min.js'), array('jquery'));
        wp_enqueue_script( 'bvalidator_js2', plugins_url('/bvalidator/themes/presenters/insert.min.js'), array('jquery'));
        wp_enqueue_script( 'bvalidator_js3', plugins_url('/bvalidator/themes/insert/insert.js'), array('jquery'));
        // wp_enqueue_script( 'my_custom_js', get_template_directory_uri() . '/js/scripts.js');
        wp_enqueue_script( 'datepicker_js', get_template_directory_uri() . '/bootstrap-datepicker/js/bootstrap-datepicker.js', array('jquery'));
        wp_enqueue_script( 'validate_js', get_template_directory_uri() . '/js/jquery.validate.js', array('jquery'));
    }
 
    public function init()
    {
        global $wpdb;
        $code_isvalid = false;

        $data = array();

        if (!empty($_POST['nonce_custom_form']))
        {
            if (!wp_verify_nonce($_POST['nonce_custom_form'], 'handle_custom_form'))
            {
                die('You are not authorized to perform this action.');
            } else
            {
                if ($_POST['idForm'] == 21)
                {
                    $this->registerSeminar($_POST);
                }

            
            }
        }
    }

  


    function shortcode_handler($atts)
    {
        
        if ($atts['id'] == 21) {
            $msg = $this->error;

            ob_start();
            include 'template/daftar_seminar.php';

            $template = ob_get_clean();

            return $template;
        }
        else 
        {
            // echo "masuk form 2";
            $msg = $this->error;
            

            ob_start();
            include 'template/form_redeem.php';
            $template = ob_get_clean();

            return $template;
        }

        /*return $msg."<form method='post' action=''>
    <input name='code' type='text' value='' placeholder='Unique Code'/>
    " . wp_nonce_field('handle_custom_form', 'nonce_custom_form') . "
        <input type='submit' value='Submit'/>
    </form>";*/
    }



function registerSeminar()
{
    global $wpdb;
    $tgl = date("Y-m-d H:i:s");
    $id_user = $_POST['id_user'];
    $id_author = $_POST['id_author'];
    $id_post = $_POST['id_post'];
    $email = $_POST['email'];
    $nama_seminar = $_POST['nama_seminar'];
    $nama_pendaftar = $_POST['name'];
    $handphone = $_POST['handphone'];
    $filename = $_FILES['foto']['name'];
    $file_tmp = $_FILES['foto']['tmp_name'];
    $size = $_FILES['foto']['size'];
    $link = content_url().'/'.$filename;
    $temp = explode(".", $filename);
    $newfilename = $nama_pendaftar.'-'.$id_post.'-'.$id_user . '.' . end($temp);

    $query_cek = "SELECT * FROM seminar where id_user ='$id_user' and id_post = '$id_post'";
    $cek =  $wpdb->get_results($query_cek);

    // echo $tes;
    if($size < 1044070)
    {
        $upload = move_uploaded_file($file_tmp,WP_CONTENT_DIR .'/uploads/bukti/'.$newfilename);
        // print_r($data_regis);
        if($upload)
        {
            if(!empty($cek))
            {
                echo "anda telah mendaftar seminar ini";
                exit();
            }
            else
            {
                $insert_sm = $wpdb->insert('seminar',  array(
                    'id_user' => $id_user,
                    'email'=> $email,
                    'nama_seminar' => $nama_seminar,
                    'nama_pendaftar' => $nama_pendaftar,
                    'handphone' => $handphone,
                    'file_foto' => $newfilename,
                    'id_author' => $id_author,
                    'id_post' => $id_post,
                    'status' => 0,
                    'created_at' => $tgl
                ));
                    if($insert_sm)
                    {
                        wp_redirect( get_home_url().'/sukses_daftar');
                        exit();
                    }
                    else
                    {
                        echo "gagal insert";
                        exit();
                    }
            }

           
        }
    }
    else
    {
          echo "gagal,file yang di upload terlalu besar";
          exit();
    }
   

 

}








}

 
$CustomForm = new CustomForm();


?>
