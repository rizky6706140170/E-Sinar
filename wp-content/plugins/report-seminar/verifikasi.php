<?php

function verifikasi_pemby()
{
	global $wpdb;
	if (isset($_GET['type'])) 
	{
		$type       = $_GET['type'];
		$id_user = $_GET['id_user'];
		$id_post = $_GET['id_post'];
		$data['status'] = 1;
		$dataWhere['id_user'] = $id_user;
		$dataWhere['id_post'] = $id_post;
		
		$data_seminar = "SELECT *,b.user_email FROM seminar a left join wp_users b on a.id_user = b.id where id_user = '$id_user' and id_post = '$id_post'";
        $seminar = $wpdb->get_row($data_seminar);
		 if($type == "verifikasi")
		 {
		 	$dataPdf['id_user'] = $seminar->id_user;
		 	$dataPdf['id_post'] = $seminar->id_post;
		 	$dataPdf['nama_pendaftar'] = $seminar->nama_pendaftar;
		 	$dataPdf['email'] = $seminar->user_email;
		 	$dataPdf['nama_seminar'] = $seminar->nama_seminar;
		 	$dataPdf['handphone'] = $seminar->handphone;
		 	$dataPdf['status'] = $seminar->status;
		 	$dataPdf['date'] = $seminar->date;
		 	
		 	// getPdf($dataPdf);
		 	// exit();
		 	$update = $wpdb->update('seminar', $data, $dataWhere);
		 	if($update)
		 	{
		 		getPdf($dataPdf);
		 		echo '<br/><div class="container"><div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Verifikasi Success</div></div>';
	         	echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Seminar_list" class="button button-primary">Back</a>';
		 	}
		 	else
		 	{
		 		echo '<br/><div class="container"><div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Verifikasi Gagal</div></div>';
		 	}
		 	 
		 }
		 else
		 {
		 	 echo '<br/><div class="container"><div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Verifikasi Gagal</div></div>';
		 }
	}
}


?>