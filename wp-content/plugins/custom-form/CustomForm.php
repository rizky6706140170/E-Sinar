<?php
 
/**
 * Plugin Name: Custom Form
 * Plugin URI: http://www.scriptbaker.com/
 * Description: Creates a custom form through shortcode and handles the submit event.
 * Version: 1.0
 * Author: iky
 * Author URI: http://www.scriptbaker.com/author/tahir/
 * License: GPL2
 */
//require get_template_directory() .'/lib/dompdf/autoload.inc.php';
// require_once dirname( __FILE__ ) .'/../lib/dompdf/autoload.inc.php';
//use Dompdf\Dompdf;
 
// session_start();
date_default_timezone_set('Asia/Jakarta');
// require('../../../../wp-load.php');
session_start();
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
                if ($_POST['idForm'] == 1)
                {
                    $this->daftarSeminar($_POST);
                }
                if ($_POST['idForm'] == 2)
                {
                    $this->fotoProfile($_POST);
                }
                if ($_POST['idForm'] == 7)
                {
                    $this->editfotoProfile($_POST);
                }
                if ($_POST['idForm'] == 23)
                {
                    $this->editProfile($_POST);
                }
                if ($_POST['idForm'] == 24)
                {
                    $this->editBukti($_POST);
                }

            
            }
        }
    }

  


    function shortcode_handler($atts)
    {
        
        if ($atts['id'] == 1) {
            $msg = $this->error;
           
            ob_start();
            include 'template/daftar_seminar.php';

            $template = ob_get_clean();

            return $template;
        }
        if ($atts['id'] == 22) {
            $msg = $this->error;

            ob_start();
            include 'template/history.php';

            $template = ob_get_clean();

            return $template;
        }
        if ($atts['id'] == 23) {
            $msg = $this->error;

            ob_start();
            include 'template/profile.php';

            $template = ob_get_clean();

            return $template;
        }
         if ($atts['id'] == 24) {
            $msg = $this->error;

            ob_start();
            include 'template/edit_bukti.php';

            $template = ob_get_clean();

            return $template;
        }
        if ($atts['id'] == 2) {
            $msg = $this->error;

            ob_start();
            include 'template/foto_profile.php';

            $template = ob_get_clean();

            return $template;
        }
        if ($atts['id'] == 7) {
            $msg = $this->error;

            ob_start();
            include 'template/edit_foto_profile.php';

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



function daftarSeminar()
{
    global $wpdb;
    $tgl = date("Y-m-d H:i:s");
    // $date_now = new DateTime();
    $date_now = date("d-m-Y");
    // $date = $_POST['date'];
    $id_user = $_POST['id_user'];
    $id_post = $_POST['id_post'];
    $nama_seminar = $_POST['nama_seminar'];
    $nama_pendaftar = $_POST['nama_pendaftar'];
    $handphone = $_POST['handphone'];
    $id_author =$wpdb->get_var("SELECT post_author from wp_posts where id='$id_post'");
    $tgl_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$id_post' and meta_key = 'date'");
    $to_email = $wpdb->get_var("SELECT user_email from wp_users where id='$id_user'");

    $tanggal = substr($tgl_sm, 6);
    $bulan = substr($tgl_sm, 4,-2);
    $tahun = substr($tgl_sm, 0,4);
    $tanggal_seminar = $tanggal .'-'. $bulan .'-'. $tahun;

    $time = strtotime('01/04/2020');

    $d=strtotime($tanggal_seminar);
    $mydate=strtotime('now');

    $cek_author = $wpdb->get_var("SELECT role_user from wp_users where id='$id_user'");

    // if($cek_author == "author")
    // {
    //     echo "gagal";
    // }
    // else
    // {
    //     echo "berhasil";
    // }

    // exit();
    $filename = $_FILES['foto']['name'];
    $file_tmp = $_FILES['foto']['tmp_name'];
    $size = $_FILES['foto']['size'];
    $link = content_url().'/'.$filename;
    $temp = explode(".", $filename);
    $newfilename = $nama_pendaftar.'-'.$id_post.'-'.$id_user . '.' . end($temp);

    $query_cek = "SELECT * FROM daftar_seminar where id_user ='$id_user' and id_post = '$id_post'";
    $cek =  $wpdb->get_results($query_cek);
    // $r = wp_redirect( get_home_url().'/daftar_sm/?id_user='.$id_user.'&id_post='.$id_post.'&id_author='.$id_author.'&tgl_sm='.$date);

    // echo $tes;
    $dataSeminar['nama_pendaftar'] = $nama_pendaftar;
    $dataSeminar['nama_seminar'] = $nama_seminar;
    if($cek_author != "author")
    {
        if($d >= $mydate)
        {
            if($size < 1044070)
                {
                    $upload = move_uploaded_file($file_tmp,WP_CONTENT_DIR .'/uploads/bukti/'.$newfilename);
                    // print_r($data_regis);
                    if($upload)
                    {
                        if(!empty($cek))
                        {
                           $this->error[] = new WP_Error('empty_error', __('Anda Telah Mendaftar Seminar Ini'));
                             // wp_redirect( get_home_url().'/gagal');
                             // exit();
                        }
                        else
                        {
                            $insert_sm = $wpdb->insert('daftar_seminar',  array(
                                'id_user' => $id_user,
                                // 'email'=> $email,
                                'nama_seminar' => $nama_seminar,
                                // 'nama_pendaftar' => $nama_pendaftar,
                                // 'handphone' => $handphone,
                                // 'file_foto' => $newfilename,
                                'id_post' => $id_post,
                                'id_author' =>$id_author,
                                'tgl_seminar' => $tanggal_seminar,
                                'created_at' => $tgl
                            ));
                                if($insert_sm)
                                {
                                    $id_daftar =$wpdb->get_var("SELECT id from daftar_seminar where id_user='$id_user' and id_post = '$id_post'");
                                    $insert_foto = $wpdb->insert('file_verifikasi', array(
                                        // 'id_user' => $id_user,
                                        'id_daftar' => $id_daftar,
                                        'id_author' =>$id_author,
                                        'id_post' => $id_post,
                                        'file_foto' => $newfilename,
                                        // 'status' => 0,
                                    ));
                                        if($insert_foto)
                                        {
                                            $id_verifikasi = $wpdb->get_var("SELECT id from file_verifikasi where id_daftar = '$id_daftar'");
                                            $insert_pdf = $wpdb->insert('pdf_verifikasi_daftar', array(
                                                'id_verifikasi' => $id_verifikasi,
                                            ));
                                            send_maildaftarSeminar($to_email,"Pendaftaran Seminar (E-sinar)",$dataSeminar,false);
                                            wp_redirect( get_home_url().'/sukses_daftar');
                                            exit();
                                        }
                                        else
                                        {
                                             $this->error[] = new WP_Error('empty_error', __('gagal daftar insert foto'));
                                            // wp_redirect( get_home_url().'/gagal');
                                            // exit();
                                        }
                                }
                                else
                                {
                                     $this->error[] = new WP_Error('empty_error', __('gagal daftar'));
                                    // wp_redirect( get_home_url().'/gagal');
                                    // exit();
                                }
                        }

                       
                    }
                }
                else
                {
                    $this->error[] = new WP_Error('empty_error', __('foto terlalu besar'));
                     // wp_redirect( get_home_url().'/gagal');
                     // exit();
                }
        }
        else
        {
            $this->error[] = new WP_Error('empty_error', __('gagal daftar seminar , tanggal seminar sudah lewat'));
             // wp_redirect( get_home_url().'/gagal');
             // exit();
        }
    }
    else
    {
         $this->error[] = new WP_Error('empty_error', __('gagal daftar seminar , silahkan login sebagai user , anda terdaftar sebagai akun pemilik seminar'));
    }

   
}

function editProfile($dataEdit=array())
{
     global $wpdb;
     $id_user = $_POST['id'];
     // echo $id_user;
     // exit();
     $display_name = $_POST['display_name'];
     $user_email = $_POST['user_email'];
     $bank = $_POST['bank'];
     $rekening = $_POST['rekening'];

     $cek_email = "SELECT user_email from wp_users where user_email = '$user_email' and id != $id_user";
     $row = $wpdb->get_row($cek_email);
    if(empty($row))
        {
            $update_profil = $wpdb->update('wp_users', array(
            'display_name' => $display_name,
            'user_email' => $user_email,
            ),array(
                'id' => $id_user,
            ));

            $update_rekening = $wpdb->update('rekening_pemilik', array(
            'bank' => $bank,
            'rekening' => $rekening,
            ),array(
                'id_user' => $id_user,
            ));
                
            wp_redirect( get_home_url().'/profile/');
            exit();
                
        }
    else
        {
            $this->error[] = new WP_Error('empty_error', __('Email Baru yang anda masukan sudah terdaftar atau session anda telah habis , silahkan login kembali'));
        } 

}

function editBukti()
{
    global $wpdb;

    $tgl = date("Y-m-d H:i:s");
    $id_user = $_POST['id_user'];
    $id_post = $_POST['id_post'];
    $filename = $_FILES['foto_edit']['name'];
    $file_tmp = $_FILES['foto_edit']['tmp_name'];
    $size = $_FILES['foto_edit']['size'];

    $nama_pendaftar = $wpdb->get_var("SELECT display_name from wp_users where id = '$id_user'");
    $id_daftar = $wpdb->get_var("SELECT id from daftar_seminar where id_user = '$id_user' and id_post ='$id_post' ");
     $nama_gambar = $wpdb->get_var("SELECT file_foto from file_verifikasi where id_daftar = '$id_daftar'");
    $temp = explode(".", $filename);
    $newfilename = $nama_pendaftar.'-'.$id_post.'-'.$id_user . '.' . end($temp);
    $link = WP_CONTENT_DIR.'/uploads/bukti/'.$nama_gambar;
    // echo $filename;
    // exit();
    if($size < 1044070)
    {
       unlink($link);
       $upload = move_uploaded_file($file_tmp,WP_CONTENT_DIR .'/uploads/bukti/'.$newfilename);
       if($upload)
       {
          $wpdb->update('file_verifikasi', array(
            'file_foto' => $newfilename,
            // 'user_email' => $user_email,
            ),array(
                'id_daftar' => $id_daftar
            ));
            wp_redirect( get_home_url().'/history');
            exit();
       }
       else
        {
            $this->error[] = new WP_Error('empty_error', __('Gagal Mengupload Foto'));
        }
    }
    else
    {
        $this->error[] = new WP_Error('empty_error', __('Upload Foto Harus di bawah 1 MB'));
    }
}

function fotoProfile()
{
    global $wpdb;
    $id_user = $_POST['id_user'];
    $filename = $_FILES['foto_profile']['name'];
    $file_tmp = $_FILES['foto_profile']['tmp_name'];
    $size = $_FILES['foto_profile']['size'];
    // $link = content_url().'/'.$filename;
    $temp = explode(".", $filename);
    $newfilename = $id_user . '.' . end($temp);
    if($size < 1044070)
    {
        $upload = move_uploaded_file($file_tmp,WP_CONTENT_DIR .'/uploads/profile/'.$newfilename);
        if($upload)
        {
             $insert_pp = $wpdb->insert('profile',  array(
                    'id_user' => $id_user,
                    'file_foto' => $newfilename,
                ));
                    if($insert_pp)
                    {
                       wp_redirect( get_home_url().'/profile/');
                        exit();
                    }
                    else
                    {
                       $this->error[] = new WP_Error('empty_error', __('Gagal Mengupload Foto'));
                       
                    }
        }
        else
        {
             $this->error[] = new WP_Error('empty_error', __('Gagal Mengupload Foto'));
        }
    }
    else
    {
         $this->error[] = new WP_Error('empty_error', __('Upload Foto Harus di bawah 1 MB'));
    }
}

function editfotoProfile()
{
    global $wpdb;
    $id_user = $_POST['id_user'];
    $filename = $_FILES['foto_edit_p']['name'];
    $file_tmp = $_FILES['foto_edit_p']['tmp_name'];
    $size = $_FILES['foto_edit_p']['size'];

    $nama_profile = $wpdb->get_var("SELECT file_foto from profile where id_user = '$id_user'");
    $temp = explode(".", $filename);
    $newfilename = $id_user . '.' . end($temp);
    $linked = WP_CONTENT_DIR.'/uploads/bukti/'.$nama_profile;
    if($size < 1044070)
    {
        unlink($linked);
         $uploadss = move_uploaded_file($file_tmp,WP_CONTENT_DIR .'/uploads/profile/'.$newfilename);
        if($uploadss)
        {
             $wpdb->update('profile', array(
            'file_foto' => $newfilename,
            // 'user_email' => $user_email,
            ),array(
                'id_user' => $id_user
            ));
            wp_redirect( get_home_url().'/profile/');
            exit();
        }
        else
        {
            $this->error[] = new WP_Error('empty_error', __('Gagal Mengupload Foto'));
        }
    }
    else
    {
         $this->error[] = new WP_Error('empty_error', __('Upload Foto Harus di bawah 1 MB'));
    }
}








}

 
$CustomForm = new CustomForm();


?>
