<?php 
function alert_rekening()
{ ?>
	<?php 
		global $wpdb;
		global $current_user;

		$type       = $_GET['type'];
		$id_selesai = $_GET['id_selesai'];
		$id_author = $_GET['id_author'];
		$cek_session = $current_user->id;

		// echo $id_author;
		$get_data_author = $wpdb->get_row("SELECT * FROM wp_users where ID = '$id_author'");
		$dataRk['nama_pemilik'] = $get_data_author->display_name;
		$dataRk['email'] = $get_data_author->user_email;
		// print_r($dataRk);

		if($cek_session == 1)
		{
				send_mail_rekening($dataRk['email'],"Data Rekening Pemilik",$dataRk,false);
		
				echo '<br/><div class="container"><div class="alert alert-success alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Success</div></div>';
				echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Data_seminar_selesai" class="button button-primary">Back</a>';
			
		}
	?>

<?php } ?>