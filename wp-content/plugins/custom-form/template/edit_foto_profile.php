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
	global $current_user;
	session_start();
	// $id_user = $_SESSION['login'];
	$cek_sesion = $_GET['id_user']; //keamanan jika ada yang akses lewat link
	$id_user = $current_user->id;
	// echo $id_user;
	// echo $cek_sesion;
	// $id_user      = $_GET['id_user'];
	// $id_post      = $_GET['id_post'];
	// $query_edit = $wpdb->get_results("SELECT * FROM seminar where id_user = '$id_user' and id_post = '$id_post'");
?>
<?php if($cek_sesion && $cek_sesion != $id_user) : ?>
<div>
    <h1>anda tidak bisa akses kesini</h1>
</div>
<?php  elseif (empty($cek_sesion) && !empty($id_user) || $cek_sesion && $cek_sesion == $id_user) :?>
<div class="row">
	
	<form class="form" method='post' action='' style="width: 50%;margin:0 auto;" enctype="multipart/form-data">
		<h2 style="text-align: center;">Upload Baru Foto Profile</h2>
		<input type="hidden" name="idForm" id="idForm" value="7">
		<input type="hidden" name="id_user" value="<?php echo $id_user; ?>">
	<!-- 	<input type="hidden" name="id_post" value="<?php echo $id_post; ?>"> -->
		<div class="col-md-12">
                <div class="form-group">
                	Upload Foto Profile (< 1MB): <input type="file" name="foto_edit_p" data-bvalidator-msg="Upluoad Foto Profile" style="width: 100%;" accept="image/jpeg, image/png" required>
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