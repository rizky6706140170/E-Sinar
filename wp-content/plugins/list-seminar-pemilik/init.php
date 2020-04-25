<?php
/*
Plugin Name: List Seminar Pemilik
Description:
Version: 1
Author: iky
Author URI: 
*/			

function report_list_seminar_pemilik_options_install() {

}
// run the install scripts upon plugin activation
register_activation_hook(__FILE__, 'report_list_seminar_pemilik_options_install');

//menu items
add_action('admin_menu','report_verifikasi_list_seminar_pemilik_modifymenu');
function report_verifikasi_list_seminar_pemilik_modifymenu() {
	
	//this is the main item for the menu
	add_menu_page('Data Seminar List', //page title
		'Data Seminar List', //menu title
		'author', //capabilities
		'Data_seminar_list', //menu slug
		'Data_seminar_list', //function
		'dashicons-editor-kitchensink',
	4
	);


	add_submenu_page(null, //parent slug
		'Delete Post', //page title
		'Delete Post', //menu title
		'author', //capability
		'delete_post', //menu slug
		'delete_post'
	);

	add_submenu_page(null, //parent slug
		'View Seminar', //page title
		'View Seminar', //menu title
		'author', //capability
		'view_ls_sm', //menu slug
		'view_ls_sm'
	);



}

define('DIRDATASEM', plugin_dir_path(__FILE__));
require_once(DIRDATASEM . 'list-seminarku.php');
require_once(DIRDATASEM . 'dlt-post.php');
require_once(DIRDATASEM . 'view-list.php');
// require_once(DIRSEMINARL . 'verifikasi.php');
// require_once(DIRSEMINARL . 'salah-bayar.php');
// require_once(DIRUNIQUECOD . 'unique-code-view.php');
// require_once(DIRUNIQUECOD . 'unique-code-create.php');
