<?php 
function Done_sm()
{ ?>
	<?php
		global $wpdb;
		global $current_user;
		$type       = $_GET['type'];
		$id_user = $_GET['id_user'];
		$id_post = $_GET['id_post'];
		$tgl = date("Y-m-d H:i:s");

		$cek_session = $current_user->id;

		$harga_seminar = $wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$id_post' and meta_key = 'harga'");
		$verified = $wpdb->get_var("SELECT count(id) FROM daftar_seminar where id_post = '$id_post' and id_author = '$current_user->id' and status = 1");

		if($cek_session == $id_user)
		{
			$cek_status=$wpdb->get_results("SELECT * FROM status_seminar where id_post='$id_post' and status_sm = 1");
			if(!empty($cek_status))
			{
				echo '<br/><div class="container"><div class="alert alert-danger alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Seminar ini Sudah Diselesaikan</div></div>';
		        echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Data_seminar_list" class="button button-primary">Kembali ke Data Seminar</a>';
			}
			else
			{
				$insert_status_sm = $wpdb->insert('status_seminar', array(
                                    	'id_post' => $id_post,
                                    	'status_sm' => 1 ,
                                    	'created_at' => $tgl
                                    ));
				if($insert_status_sm)
				{
					$insert_selesai =  $wpdb->insert('seminar_selesai', array(
											'id_author' => $cek_session,
	                                    	'id_post' => $id_post,
	                                    	'harga_sm' => $harga_seminar,
	                                    	'terverifikasi' => $verified,
	                                    	// 'status_tf' => 1 ,
	                                    	'created_at' => $tgl
	                                    ));
					if($insert_selesai)
					{
							echo '<br/><div class="container"><div class="alert alert-success alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Berhasil Menselesaikan Seminar</div></div>';
		         			echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Data_seminar_list" class="button button-primary">Kembali ke Data Seminar</a>';
					}
					else
					{
							echo '<br/><div class="container"><div class="alert alert-danger alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Gagal Menselesaikan Seminar</div></div>';
			         		echo '<br/><a href="'.home_url().'/wp-admin/admin.php?page=Data_seminar_list" class="button button-primary">Kembali ke Data Seminar</a>';
					}
				}
			}
		}

	?>
<?php } ?>