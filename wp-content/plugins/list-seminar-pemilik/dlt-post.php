<?php 
function delete_post()
{
	global $wpdb;
	global $current_user;

	$type       = $_GET['type'];
	$id_user = $_GET['id_user'];
	$id_post = $_GET['id_post'];
	$cek_session = $current_user->id;
		 	// $pos = 206;
	
		 	// wp_delete_post(206, true);

	if($cek_session == $id_user)
	{
		$delete_post = wp_delete_post($id_post , true);
		if($delete_post)
		{
				echo '<br/><div class="container"><div class="alert alert-success alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Berhasil Delete Post</div></div>';
	         	echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Data_seminar_list" class="button button-primary">Kembali ke Data Seminar</a>';
		}
		else
		{
				echo '<br/><div class="container"><div class="alert alert-danger alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Gagal Delete Post</div></div>';
	         	echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Data_seminar_list" class="button button-primary">Kembali ke Data Seminar</a>';
		}
	}


	
}

?>