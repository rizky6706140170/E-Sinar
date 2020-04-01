<script type="text/javascript">
	$ = jQuery;

	    $(document).ready(function () {
		
    	var options = {
	        // singleError: true,
	        useTheme: 'insert',
	        themes:{
	        	'insert' : {
			        placement: 'after',
			        msgClass: 'my-bvalidator-insert-msg',
			        invalidClass: 'my-bvalidator-insert-invalid',
			        template: '<div class="{msgClass}">{message}</div>',
			    }
		    },
		    messages: {
	            en: {
	                "required": "Please complete all required fields.",
	                "maxword": "Please complete max 25 words."
	            }
	        }
	    };
        $('form').bValidator(options);

     	

	});

	function hanyaAngka(evt) {
		  var charCode = (evt.which) ? evt.which : event.keyCode
		   if (charCode > 31 && (charCode < 48 || charCode > 57))
 
		    return false;
		  return true;
		}

</script>
<?php
global $wpdb;
session_start();
get_currentuserinfo();
 // $id_user      = $_GET['id_user'];
 // $id_post      = $_GET['id_post'];
 // $id_author    = $_GET['id_author'];
 // $tgl_sm	   = $_GET['tgl_sm'];
$cek_sesion = $_GET['id_user']; //keamanan jika ada yang akses lewat link
$id_user = $_SESSION['login'];
$id_post = $_SESSION['id_post'];

// echo $id_user;

// echo $cek_sesion;
// echo $_GET['id_user'];

 $namaseminar=$wpdb->get_var("SELECT post_title from wp_posts where id='$id_post'");
 $email_user=$wpdb->get_var("SELECT user_email from wp_users where id='$id_user'");
 $tgl_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$id_post' and meta_key = 'date'");
 $nama_pendaftar =$wpdb->get_var("SELECT display_name from wp_users where id='$id_user'");

 // if($cek_sesion && $cek_sesion != $id_user)
 // {
 // 	echo "ga bisa akses";	
 // }
 // elseif (empty($cek_sesion) && !empty($id_user) || $cek_sesion && $cek_sesion == $id_user)
 // {
 // 	echo "bisa akses";
 // }

?>
<?php if($cek_sesion && $cek_sesion != $id_user) : ?>
<div>
	<h1>anda tidak bisa akses kesini</h1>
</div>
<?php  elseif (empty($cek_sesion) && !empty($id_user) || $cek_sesion && $cek_sesion == $id_user) :?>
<div class="container">
	<div class="row">
		<?php echo $messagee;?>
		<form class="form" method='post' action='' style="width: 50%;margin:0 auto;" enctype="multipart/form-data">
			<h2 style="text-align: center;" class="jdl">Daftar Seminar</h2>
			<input type="hidden" name="idForm" id="idForm" value="1">
			<!-- <input type="hidden" name="email"  value="<?php echo $email_user; ?>"> -->
			<input type="hidden" name="id_post"  value="<?php echo $id_post; ?>">
			<input type="hidden" name="nama_seminar"  value="<?php echo $namaseminar; ?>">
			<input type="hidden" name="id_user" value="<?php echo $id_user; ?>">
			<input type="hidden" name="nama_pendaftar" value="<?php echo $nama_pendaftar; ?>">
<!-- 			<input type="hidden" name="id_author" value="<?php echo $id_author; ?>">
			<input type="hidden" name="date" value="<?php echo $tgl_sm; ?>"> -->
			<div class="col-md-12">
				<div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Nama Seminar</label>
                    </center>
                    <input class="form-control"  name='' type='text' value='<?php echo $namaseminar; ?>' style="width:100%;text-align: center;" disabled/>
                    
                </div>
                <div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Tanggal Seminar</label>
                    </center>
                    <input class="form-control"  name='' type='text' value='<?php echo $tgl_sm; ?>' style="width:100%;text-align: center;" disabled/>
                    
                </div>
                <div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Email Pendaftar</label>
                    </center>
                   <input type="text" name="" class="form-control" value="<?php echo $email_user; ?>" style="width:100%;text-align: center;" disabled>
                    
                </div>
				<div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Nama Pendaftar</label>
                    </center>
                    <input class="form-control"  data-bvalidator="required" type='text' value='<?php echo $nama_pendaftar; ?>' style="width:100%;text-align: center;" disabled />
                    
                </div>

                <div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">No Hp</label>
                    </center>
                    <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Isi Nomor Hp Anda" name='handphone' type='text' value='' style="width:100%;text-align: center;" placeholder="No Hp Anda" onkeypress="return hanyaAngka(event)"/>
                    
                </div>
                <div class="form-group">
                	Upload Bukti Pembayaran: <input type="file" name="foto" data-bvalidator-msg="Upluoad Struk Bukti Pembayaran" style="width: 100%;" accept="image/jpeg, image/png" required>
                </div>
              	<?php if(count($msg)):?>
					<?php
						$msg_code = "";
						foreach ($msg as $key => $value) :
						//$msg_code = $value->get_error_message();
						//echo $value->get_error_message().'<br>';
			
					?>
					<div class="error-message" role="alert" style="color:#e3282a;text-align: center;">
		    			<?php echo $value->get_error_message(); ?>
					</div>

						<?php endforeach; ?>
				<?php endif; ?>
                <div class="form-group  text-center">
					<center>
						<?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
						<input class="btn btn-danger" type='submit' value='SUBMIT' style="background: #0733f3;"/>
					</center>
				</div>
			</div>
		</form>

	</div>
</div>
<?php endif; ?>