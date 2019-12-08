<?php
	// session_unset();
?>

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
	                "maxword": "Please complete max 8 words."
	            }
	        }
	    };
        $('form').bValidator(options);
    });
    function maxword (fieldValue) {
    	// body...
	    var len = fieldValue.split(" ").length;
	    if(len > 8){
	    	return false;
	    }
	    return true;
	}
	function myvalidator(number, devideBy){
        number = parseFloat(number);
        if(number % parseInt(devideBy) == 0)
            return true;
        return false;
    }
</script>

<div class="container">
	<div class="col-md-12">
		
		<center>
			<h2>Please enter your details below to access your gift</h2>
		</center>
		<?php if(count($msg)):?>
			<?php
				$msg_code = "";
				
				foreach ($msg as $key => $value) {
			?>
					
					<?php if (count($value->errors['claimform'])) { ?>
					<div class="alert alert-danger alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
						<?php echo implode("<br/>", $value->errors['claimform']); ?>
					</div>
					<?php } ?>
					<?php if (count($value->errors['uniquecode'])) { 
						$msg_code = implode("<br/>", $value->errors['uniquecode']);
					?>	
					<div class="alert alert-danger alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
						<?php echo $msg_code; ?>
					</div>
					<?php } ?>
			<?php 
				}
			?>
		<?php endif; ?>
		<form class="form" method='post' action=''>
			<div class="form-group">
				<input type="hidden" name="idForm" id="idForm" value="2">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">Enter your reward code sent to you in an email from contact@pirelligiftstore.com.au *</label>
				</center>
				<input class="form-control <?php if(!empty($msg_code)){ echo "my-bvalidator-insert-invalid"; } ?>" name="unique_code" data-bvalidator="required, maxword[8]"  data-bvalidator-msg="Please contact your retailer to obtain your Pirelli Gift Store Code." type='text' value=''  style="width:100%" />
				<?php if(!empty($msg_code)){ 
					echo "<div class='my-bvalidator-insert-msg'><div>Please contact your retailer to obtain your Pirelli Gift Store Code.</div></div>";
				} ?>
			</div>
			<div class="form-group">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">First Name *</label>
				</center>
				<input class="form-control" data-bvalidator="required" data-bvalidator-msg="Please enter your first name" name='first_name' type='text' value='' style="width:100%" />
			</div>
			<div class="form-group">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">Last Name *</label>
				</center>
				<input class="form-control" data-bvalidator="required" data-bvalidator-msg="Please enter your last name" name='last_name' type='text' value='' style="width:100%" />
			</div>
			<div class="form-group">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">Email *</label>
				</center>
				<input class="form-control" data-bvalidator="required" data-bvalidator-msg="Email is required" name='email' type='email' value='' id="email" style="width:100%"/>
			</div>
			<div class="form-group  text-center">
				<center>
					<?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
		    		<input class="btn btn-danger" type='submit' value='SUBMIT'/>
				</center>
			</div>
			<div class="form-group">
			</div>
		</form>
	</div>
	<div id="alert_failed">
		<?php
			if(!empty($_SESSION['failed'])) :
				echo $_SESSION['failed'];
			endif;
		?>
	</div>
</div>
<?php
	session_unset();
?>

