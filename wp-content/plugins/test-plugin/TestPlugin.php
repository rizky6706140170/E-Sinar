<?php
/**
 * Plugin Name: Test Plugin
 * Description: Test Plugin
 * Version: 1.0
 * Author: iky
 */
session_start();
class TestPlugin
{
	public function __construct()
    {
        add_action('init', array($this, 'init'));
        add_shortcode('test_pugin', array($this, 'shortcode_handler'));
        /*##########################################################################*/
        /*###############################--BOOTSTRAP--##############################*/
        /*##########################################################################*/
        
        // add_action( 'wp_enqueue_scripts', array($this, 'theme_styles'));
        // add_action( 'wp_enqueue_scripts', array($this, 'theme_js'));
    }

    public function init()
    {
    	 global $wpdb;

    	if (!empty($_POST['submit_form']))
        {
        	if ($_POST['idForm'] == 5)
            {
                $this->register($_POST);
            }
        }
    }

    function shortcode_handler($atts)
    {
    	if ($atts['id'] == 1) {
            $msg = $this->error;
           
            ob_start();
            include 'template/form_test.php';

            $template = ob_get_clean();

            return $template;
        }
    }

    function register()
    {
    	 global $wpdb;
    	 $tester = $_POST['test_nama'];
    	 echo $tester;
    }
}

$TestPlugin = new TestPlugin();
?>