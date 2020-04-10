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
		
		// $data_seminar = "SELECT *,b.user_email FROM seminar a left join wp_users b on a.id_user = b.id where id_user = '$id_user' and id_post = '$id_post'";
		$data_seminar = "SELECT *,a.id as id_daftar FROM daftar_seminar a LEFT JOIN wp_users b on a.id_user = b.id where a.id_user = '$id_user' and id_post = '$id_post'";
        $seminar = $wpdb->get_row($data_seminar);
		 if($type == "verifikasi")
		 {
		 	$dataPdf['id_user'] = $seminar->id_user;
		 	$dataPdf['id_post'] = $seminar->id_post;
		 	$dataPdf['nama_pendaftar'] = $seminar->display_name;
		 	$dataPdf['email'] = $seminar->user_email;
		 	$dataPdf['nama_seminar'] = $seminar->nama_seminar;
		 	// $dataPdf['handphone'] = $seminar->handphone;
		 	$dataPdf['status'] = $seminar->status;
		 	$dataPdf['date'] = $seminar->tgl_seminar;
		 	
		 	// print_r($dataPdf);
		 	// // getPdf($dataPdf);
		 	// exit();
		 	// echo $query;

		 	$update = $wpdb->update('daftar_seminar', $data, $dataWhere);
		 	if($update)
		 	{
		 		$query = $wpdb->get_var("SELECT id FROM file_verifikasi where id_daftar = '$seminar->id_daftar'");
		 		$data_update_pdf['id_verifikasi'] = $query; 
		 		$data_daftar_pdf['file_pdf'] =  $dataPdf['id_user'].$dataPdf['id_post'].'_verifikasi'.'.pdf';
		 		$update_verifikasi_pdf = $wpdb->update('pdf_verifikasi_daftar', $data_daftar_pdf, $data_update_pdf);
		 		getPdf($dataPdf);
		 		send_mailDaftarPdf($dataPdf['email'],"Verifikasi Pendaftaran Seminar",$dataPdf,false);
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