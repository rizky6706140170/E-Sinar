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
 $id_user      = $_GET['id_user'];
 $id_post      = $_GET['id_post'];
 $id_author    = $_GET['id_author'];

 $namaseminar=$wpdb->get_var("SELECT post_title from wp_posts where id='$id_post'");
 $email_user=$wpdb->get_var("SELECT user_email from wp_users where id='$id_user'");

?>

<div class="container">
	<div class="row">
		<form class="form" method='post' action='' style="width: 50%;margin:0 auto;" enctype="multipart/form-data">
			<h2 style="text-align: center;">Daftar Seminar</h2>
			<input type="hidden" name="idForm" id="idForm" value="21">
			<input type="hidden" name="email"  value="<?php echo $email_user; ?>">
			<input type="hidden" name="id_post"  value="<?php echo $id_post; ?>">
			<input type="hidden" name="nama_seminar"  value="<?php echo $namaseminar; ?>">
			<input type="hidden" name="id_user" value="<?php echo $id_user; ?>">
			<input type="hidden" name="id_author" value="<?php echo $id_author; ?>">
			<div class="col-md-12">
				<div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Nama Seminar</label>
                    </center>
                    <input class="form-control"  name='' type='text' value='<?php echo $namaseminar; ?>' style="width:100%;text-align: center;" disabled/>
                    
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
                    <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Isi Nama Anda" name='name' type='text' value='' style="width:100%;text-align: center;" placeholder="Nama Anda" />
                    
                </div>

                <div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">No Hp</label>
                    </center>
                    <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Isi Nomor Hp Anda" name='handphone' type='text' value='' style="width:100%;text-align: center;" placeholder="No Hp Anda" />
                    
                </div>
                <div class="form-group">
                	Upload Bukti Pembayaran: <input type="file" name="foto" data-bvalidator-msg="Upluoad Struk Bukti Pembayaran" style="width: 100%;" accept="image/jpeg, image/png" required>
                </div>

                <div class="form-group  text-center">
					<center>
						<?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
						<input class="btn btn-danger" type='submit' value='SUBMIT'/>
					</center>
				</div>
			</div>
		</form>

	</div>
</div>