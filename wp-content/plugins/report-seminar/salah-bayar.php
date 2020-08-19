<?php

function salah_pemby()
{
	global $wpdb;
	if (isset($_GET['type'])) 
	{
		$type       = $_GET['type'];
		$id_user = $_GET['id_user'];
		$id_post = $_GET['id_post'];
		$data['status'] = 2;
		$data['update_at'] = date('Y-m-d H:i:s');
		$dataWhere['id_user'] = $id_user;
		$dataWhere['id_post'] = $id_post;

		$data_seminar = "SELECT *,a.id as id_daftar FROM daftar_seminar a LEFT JOIN wp_users b on a.id_user = b.id where a.id_user = '$id_user' and id_post = '$id_post'";
        $salahbayar = $wpdb->get_row($data_seminar);
        $harga_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$id_post' and meta_key = 'harga'");
		 if($type == "salah")
		 {
		 	$title = $wpdb->get_var("SELECT post_title FROM wp_posts where ID = '$id_post' ");
		 	$dataSalah['id_user'] = $salahbayar->id_user;
		 	$dataSalah['id_post'] = $salahbayar->id_post;
		 	$dataSalah['nama_pendaftar'] = $salahbayar->display_name;
		 	$dataSalah['email'] = $salahbayar->user_email;
		 	$dataSalah['nama_seminar'] = $title;
		 	// $dataSalah['handphone'] = $salahbayar->handphone;
		 	$dataSalah['status'] = $salahbayar->status;
		 	$dataSalah['date'] = $salahbayar->tgl_seminar;
		 	$dataSalah['harga_seminar'] = $harga_sm;
		 	$update = $wpdb->update('daftar_seminar', $data, $dataWhere);
		 	if($update)
		 	{
		 		send_mailDaftarSalah($dataSalah['email'],"Pendaftaran Seminar",$dataSalah,false);
		 		echo '<br/><div class="container"><div class="alert alert-success"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Success</div></div>';
	         	echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Pendaftar_Seminar_list" class="button button-primary">Back</a>';
		 	}
		 	else
		 	{
		 		echo '<br/><div class="container"><div class="alert alert-danger"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Gagal</div></div>';
		 	}
		 }
	}
}


?>