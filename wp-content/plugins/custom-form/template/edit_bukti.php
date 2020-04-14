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


</script>
<?php
	global $wpdb;

	// $id_user      = $_GET['id_user'];
	session_start();
	global $current_user;
	$id_user = $current_user->id;
	// $id_user = $_SESSION['login'];
	$id_post      = $_GET['post'];
	// $id_post = $_SESSION['id_post'];
	$cek_sesion = $_GET['id_user'];
	// echo $id_user;
	// echo $id_post;
	// echo $cek_sesion;
	$query_edit = $wpdb->get_results("SELECT * FROM daftar_seminar where id_user = '$id_user' and id_post = '$id_post'");
?>
<?php if($cek_sesion && $cek_sesion != $id_user) : ?>
<div>
    <h1>anda tidak bisa akses kesini</h1>
</div>
<?php  elseif (empty($cek_sesion) && !empty($id_user) || $cek_sesion && $cek_sesion == $id_user) :?>
<div class="row">
	
	<form class="form" method='post' action='' style="width: 50%;margin:0 auto;" enctype="multipart/form-data">
		<h2 style="text-align: center;">Upload Baru Bukti Pembayaran</h2>
		<input type="hidden" name="idForm" id="idForm" value="24">
		<input type="hidden" name="id_user" value="<?php echo $id_user; ?>">
		<input type="hidden" name="id_post" value="<?php echo $id_post; ?>">
		<div class="col-md-12">
			<?php foreach ($query_edit as $key => $value) : ?>
				<div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Nama Seminar</label>
                    </center>
                    <input class="form-control"  name='' type='text' value='<?php echo $value->nama_seminar; ?>' style="width:100%;text-align: center;" disabled/>
                    
                </div>
            <?php endforeach; ?>
                <div class="form-group">
                	Upload Baru Bukti Pembayaran (< 1MB): <input type="file" name="foto_edit" data-bvalidator-msg="Upluoad Struk Bukti Pembayaran" style="width: 100%;" accept="image/jpeg, image/png" required>
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
						<input class="btn btn-danger" style="background: #0733f3;" type='submit' value='SUBMIT'/>
					</center>
				</div>
        </div>
	</form>
	
</div>
<?php endif; ?>