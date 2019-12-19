<?php
/*
Plugin Name: User List
Description:
Version: 1
Author: 
Author URI: 
*/			

function report_user_options_install() {

}
// run the install scripts upon plugin activation
register_activation_hook(__FILE__, 'report_user_options_install');

//menu items
add_action('admin_menu','report_user_modifymenu');
function report_user_modifymenu() {
	
	//this is the main item for the menu
	add_menu_page('User List', //page title
		'User List', //menu title
		'manage_options', //capabilities
		'User_list', //menu slug
		'User_list', //function
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
}

define('DIRUNIQUECOD', plugin_dir_path(__FILE__));
require_once(DIRUNIQUECOD . 'user-list.php');
// require_once(DIRUNIQUECOD . 'unique-code-view.php');
// require_once(DIRUNIQUECOD . 'unique-code-create.php');
