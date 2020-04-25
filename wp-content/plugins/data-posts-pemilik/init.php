<?php
/*
Plugin Name: Data Posts Pemilik
Description:
Version: 1
Author: iky
Author URI: 
*/			

function report_list_data_posts_options_install() {

}
// run the install scripts upon plugin activation
register_activation_hook(__FILE__, 'report_list_data_posts_options_install');

//menu items
add_action('admin_menu','report_list_data_posts_modifymenu');
function report_list_data_posts_modifymenu() {
	
	//this is the main item for the menu
	add_menu_page('List Data Posts', //page title
		'List Data Posts', //menu title
		'author', //capabilities
		'Data_posts', //menu slug
		'Data_posts', //function
		'dashicons-editor-kitchensink',
	4
	);


	add_submenu_page(null, //parent slug
		'Delete Post', //page title
		'Delete Post', //menu title
		'author', //capability
		'delete_post_pm', //menu slug
		'delete_post_pm'
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

define('DIRDATAPOSTS', plugin_dir_path(__FILE__));
require_once(DIRDATAPOSTS . 'list-posts.php');
require_once(DIRDATAPOSTS . 'dlt-post-pm.php');
// require_once(DIRDATAPOSTS . 'view-list.php');
// require_once(DIRDATAPOSTS . 'done-sm.php');

