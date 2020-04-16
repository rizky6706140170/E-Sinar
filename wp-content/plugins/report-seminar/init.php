<?php
/*
Plugin Name: Report Seminar
Description:
Version: 1
Author: iky
Author URI: 
*/			

function report_seminar_options_install() {

}
// run the install scripts upon plugin activation
register_activation_hook(__FILE__, 'report_seminar_options_install');

//menu items
add_action('admin_menu','report_seminar_modifymenu');
function report_seminar_modifymenu() {
	
	//this is the main item for the menu
	add_menu_page('Report Seminar List', //page title
		'Report Seminar List', //menu title
		'manage_options', //capabilities
		'Seminar_list', //menu slug
		'Seminar_list', //function
		'dashicons-editor-kitchensink',
	4
	);

	// //this submenu is HIDDEN, however, we need to add it anyways
	// add_submenu_page(null, //parent slug
	// 	'View Unique Code', //page title
	// 	'View', //menu title
	// 	'manage_options', //capability
	// 	'unique_code_view', //menu slug
	// 	'unique_code_view'); //function

	// //this is a submenu
	// add_submenu_page(null, //parent slug
	// 	'Add New Unique Code', //page title
	// 	'Add New', //menu title
	// 	'manage_options', //capability
	// 	'unique_code_create', //menu slug
	// 	'unique_code_create'
	// );
	add_submenu_page(null, //parent slug
		'Verifikasi Pembayaran', //page title
		'Verifikasi', //menu title
		'manage_options', //capability
		'verifikasi_pemby', //menu slug
		'verifikasi_pemby'
	);
	add_submenu_page(null, //parent slug
		'Salah Pembayaran', //page title
		'Salah', //menu title
		'manage_options', //capability
		'salah_pemby', //menu slug
		'salah_pemby'
	);
}

define('DIRSEMINARL', plugin_dir_path(__FILE__));
require_once(DIRSEMINARL . 'report-seminar.php');
require_once(DIRSEMINARL . 'verifikasi.php');
require_once(DIRSEMINARL . 'salah-bayar.php');
// require_once(DIRUNIQUECOD . 'unique-code-view.php');
// require_once(DIRUNIQUECOD . 'unique-code-create.php');
