<?php 
function delete_post()
{
	global $wpdb;
	// echo "string";
	// if (isset($_GET['type'])) 
	// {
	// 	 if($type == "delete")
	// 	 {
		 	$pos = 206;
	// 	 	// wp_trash_post( $pos );
		 	wp_delete_post(206, true);
	// 	 	echo $pos;
	// 	 }
	// }

	 wp_redirect( admin_url());
}

?>