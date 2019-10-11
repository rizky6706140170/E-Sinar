<?php

/**
 * Plugin Name: Seminar List
 * Description: Seminar List on page
 * Version: 1.0
 * Author: Iky
 * 
 * 
 */

class Seminar_list
{
	protected $error;

	public function __construct()
	{
		add_action('admin_menu', array($this, 'seminar_list'));
        add_shortcode('seminar_render', array($this, 'render_shortcode_handler'));
        // add_action( 'admin_enqueue_scripts', array($this, 'fn_bootstrap_scripts' ) );
	}

	public function init()
    {
        
    }


    function seminar_list()
    {

    }

     function render_shortcode_handler($value='')
     {
     	global $wpdb;
        global $wp;

     	ob_start();

     	include 'template/list-seminar.php';
     	$output = ob_get_clean();
     	return $output;

     }
}

$Seminar_list = new Seminar_list();
?>