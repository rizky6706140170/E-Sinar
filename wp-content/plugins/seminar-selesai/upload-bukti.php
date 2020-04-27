<?php 
function upload_bukti()
{ ?>
	<?php
		global $wpdb;
		global $current_user;

		$type       = $_GET['type'];
		$id_selesai = $_GET['id_selesai'];
		$id_posts = $_GET['id_posts'];
		$cek_session = $current_user->id;

		// echo $id_posts;

		if(isset($_POST['upload']))
		{
			$id_done = $_POST['id_selesai'];
			$post_id = $_POST['id_posts'];

			if($cek_session == 1)
			{
				$filename = $_FILES['foto_upload']['name'];
			    $file_tmp = $_FILES['foto_upload']['tmp_name'];
			    $size = $_FILES['foto_upload']['size'];
			    $temp = explode(".", $filename);
    			$newfilename = 'bukti-'.$id_done . '-'.$id_posts .'.'. end($temp);
    			$cek =  $wpdb->get_results("SELECT * FROM upload_bukti_selesai where id_selesai = '$id_done' and id_posts = '$post_id'");
    			if(!empty($cek))
    			{
    				echo '<br/><div class="container"><div class="alert alert-danger alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Gagal Upload , anda sudah pernah upload bukti untuk seminar ini</div></div>';
    			}
    			else
    			{
    				if($size < 1044070)
	    			{
	    				 $upload = move_uploaded_file($file_tmp,WP_CONTENT_DIR .'/uploads/buktitf/'.$newfilename);
	    				 if($upload)
	    				 {
	    				 	$insert_foto = $wpdb->insert('upload_bukti_selesai',  array(
			                    'id_selesai' => $id_done,
			                    'id_posts' => $post_id,
			                    'file_foto' => $newfilename,
			                    'created_at' => date("Y-m-d H:i:s")
			                ));
			                if($insert_foto)
			                {
			                	$data['status_tf'] = 1;
			                	$dataWhere['id'] = $id_done;
								$dataWhere['id_post'] = $post_id;

								$update = $wpdb->update('seminar_selesai', $data, $dataWhere);
								if($update)
								{
									echo '<br/><div class="container"><div class="alert alert-success alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Upload Berhasil</div></div>';
								}
								else
								{
									echo '<br/><div class="container"><div class="alert alert-danger alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Gagal Upload</div></div>';
								}
			                }
			                else
			                {
			                	echo '<br/><div class="container"><div class="alert alert-danger alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Gagal Upload</div></div>';
			                }
	    				 }

	    			}
	    			else
	    			{
	    				echo '<br/><div class="container"><div class="alert alert-danger alert-dismissible fade show"><a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>Gagal Upload , ukuran file terlalu besar</div></div>';
	    			}

    			}
			}
			else
			{
				echo "gagal anda tidak punya akses";
			}
		}
	?>

	<form class="form" method='post' action='' style="width: 50%;margin:0 auto;" enctype="multipart/form-data">
		<input type="hidden" name="id_selesai" value="<?php echo $id_selesai; ?>">
		<input type="hidden" name="id_posts" value="<?php echo $id_posts; ?>">
		 <div class="form-group">
                	Upload Bukti Transfer (< 1MB): <input type="file" name="foto_upload" data-bvalidator-msg="Upluoad Struk Bukti Pembayaran" style="width: 100%;" accept="image/jpeg, image/png" required>
         </div>
         <input class="btn btn-danger" style="background: #0733f3;" type='submit' value='SUBMIT' name="upload" />
	</form>

<?php } ?>
