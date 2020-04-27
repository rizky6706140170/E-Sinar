<?php
/*
Plugin Name: List Seminar Selesai Pemilik
Description:
Version: 1
Author: iky
Author URI: 
*/			

function report_list_seminar_selesai_pemilik_options_install() {

}
// run the install scripts upon plugin activation
register_activation_hook(__FILE__, 'report_list_seminar_selesai_pemilik_options_install');

//menu items
add_action('admin_menu','report_verifikasi_list_seminar_selesai_pemilik_modifymenu');
function report_verifikasi_list_seminar_selesai_pemilik_modifymenu() {
	
	//this is the main item for the menu
	add_menu_page('Data Seminar Selesai', //page title
		'Data Seminar Selesai', //menu title
		'manage_options', //capabilities
		'Data_seminar_selesai', //menu slug
		'Data_seminar_selesai', //function
		'dashicons-editor-kitchensink',
	4
	);


	add_submenu_page(null, //parent slug
		'Upload Bukti', //page title
		'Upload Bukti', //menu title
		'manage_options', //capability
		'upload_bukti', //menu slug
		'upload_bukti'
	);

	// add_submenu_page(null, //parent slug
	// 	'View Seminar', //page title
	// 	'View Seminar', //menu title
	// 	'author', //capability
	// 	'view_ls_sm', //menu slug
	// 	'view_ls_sm'
	// );

	// add_submenu_page(null, //parent slug
	// 	'View Seminar Selesai', //page title
	// 	'View Seminar Selesai', //menu title
	// 	'author', //capability
	// 	'done_sm', //menu slug
	// 	'done_sm'
	// );


}

define('DIRDATASEMSEL', plugin_dir_path(__FILE__));
require_once(DIRDATASEMSEL . 'list-seminar-selesai.php');
require_once(DIRDATASEMSEL . 'upload-bukti.php');
// require_once(DIRDATASEMSEL . 'view-list.php');
// require_once(DIRDATASEMSEL . 'done-sm.php');
// require_once(DIRSEMINARL . 'verifikasi.php');
// require_once(DIRSEMINARL . 'salah-bayar.php');
// require_once(DIRUNIQUECOD . 'unique-code-view.php');
// require_once(DIRUNIQUECOD . 'unique-code-create.php');
