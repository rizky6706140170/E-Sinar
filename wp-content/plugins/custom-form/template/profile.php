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
$logout_redirect = (empty($wpcrl_redirect_settings['wpcrl_logout_redirect']) || $wpcrl_redirect_settings['wpcrl_logout_redirect'] == '-1') ? '' : $wpcrl_redirect_settings['wpcrl_logout_redirect'];
// $id_user      = $_GET['id_user'];
// $id_user = $_SESSION['login'];
$id_user = $current_user->id;
$cek_sesion = $_GET['id_user']; //keamanan jika ada yang akses lewat link
$query_profile = $wpdb->get_results("SELECT * FROM wp_users where id = '$id_user'");
$query_foto = $wpdb->get_var("SELECT file_foto FROM profile where id_user = '$id_user'");
         		if($logout_redirect)
		                		{
		                			unset($_SESSION['login']);
		                		}
?>
<?php if($cek_sesion && $cek_sesion != $id_user) : ?>
<div>
    <h1>anda tidak bisa akses kesini</h1>
</div>
<?php  elseif (empty($cek_sesion) && !empty($id_user) || $cek_sesion && $cek_sesion == $id_user) :?>
<div class="row">
	<?php foreach ($query_profile as $key => $value) : ?>
	<div class="col-md-5">
		<div class="card" style="width: 18rem; margin: 0 auto;">
		  <?php if(empty($query_foto)): ?>
		  <img src="<?php echo get_template_directory_uri(); ?>/images/profil.png" class="card-img-top" alt="...">
		  <?php else: ?>
		  	 <img src="<?php echo content_url(); ?>/uploads/profile/<?php echo $query_foto; ?>" class="card-img-top" alt="..." style="height: 300px;">
		  <?php endif; ?>
		  <div class="card-body">
		    <a href="<?php echo wp_logout_url(get_permalink($logout_redirect)) ?>" class="button" style="background: #0733f3;">Logout</a>
		    <a href="<?php echo home_url().'/history'?>" class="button" style="background: #0733f3;">History</a>
		    <div class="row">
		    	<div class="col-md-12" style="text-align: center;margin-top:2%;">
		    		<?php if(empty($query_foto)): ?>
		    		<a href="<?php echo home_url().'/foto_profile'?>" class="button" style="background: #0733f3;">Upload Foto</a>
		    		<?php else: ?>
		    			<a href="<?php echo home_url().'/edit_foto_profile'?>" class="button" style="background: #0733f3;">Edit Foto Profile</a>
		    		<?php endif; ?>
		    	</div>
		    	
		    </div>
		  </div>
		</div>
	</div>
	<div class="col-md-7">

		<form class="form" method='post' action='' style="width: 100%;margin:0 auto;" enctype="multipart/form-data">

			<input type="hidden" name="idForm" id="idForm" value="23">
			<input type="hidden" name="id" value="<?php echo $id_user; ?>">
			<h2 style="text-align: center;">Profile</h2>
			<div class="form-group"> 
                <label style="font-weight:bold;margin-bottom:5px;">Username</label>
                <input class="form-control"  name='' type='text' value='<?php echo $value->user_login; ?>' style="width:100%;" disabled/>
            </div>
            <div class="form-group"> 
                <label style="font-weight:bold;margin-bottom:5px;">Nama Lengkap</label>
                <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Isi Nama Lengkap Anda" name='display_name' type='text' value='<?php echo $value->display_name; ?>' id="display_name" style="width:100%;" disabled/>
            </div>
            <div class="form-group"> 
                <label style="font-weight:bold;margin-bottom:5px;">Email</label>
                <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Isi Email Anda"  name='user_email' type='text' value='<?php echo $value->user_email; ?>' id="user_email" style="width:100%;" disabled/>
            </div>
            <?php
            	$cek_author = $wpdb->get_var("SELECT role_user FROM wp_users where id = '$id_user'");
            	$cek_rek =  $wpdb->get_var("SELECT bank FROM rekening_pemilik where id_user = '$id_user'");
            	$cek_no =  $wpdb->get_var("SELECT rekening FROM rekening_pemilik where id_user = '$id_user'");
            ?>
            <?php if($cek_author == 'author'): ?>
           	<div class="form-group"> 
                <label style="font-weight:bold;margin-bottom:5px;">Nama Bank</label>
  				 <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Isi Nama Bank Anda"  name='bank' type='text' value='<?php echo $cek_rek; ?>' id="bank_pm" style="width:100%;" disabled/>
            </div>
            <div class="form-group"> 
                <label style="font-weight:bold;margin-bottom:5px;">Rekening</label>
  				<input class="form-control" data-bvalidator="required" data-bvalidator-msg="Isi No Rekening Anda"  name='rekening' type='text' value='<?php echo $cek_no; ?>' id="rekening_pm" style="width:100%;" disabled/>
            </div>
        	<?php endif; ?>
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
            <div class="form-group  text-center submit-profile">
					<center>
						<?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
						<input class="btn btn-danger" style="background: #0733f3;" type='submit' value='SUBMIT'/>
					</center>
			</div>
		</form>
		<?php endforeach; ?>
		    <div class="form-group  text-center" id="submit-edit" style="margin-top:20px; ">
					<center>
						<span id="edit-profil">EDIT</span>
					</center>
			</div>
	</div>
</div>
<?php endif; ?>


<script type="text/javascript">
$( "#edit-profil" ).click(function() {
  	$('#submit-edit').css('display','none');
  	$('#display_name').removeAttr("disabled");
  	$('#user_email').removeAttr("disabled");
  	$('#bank_pm').removeAttr("disabled");
  	$('#rekening_pm').removeAttr("disabled");
    $('.submit-profile').css('display','block');
});
</script>