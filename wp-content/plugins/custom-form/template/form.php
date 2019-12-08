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
    function maxword (fieldValue) {
    	// body...
	    var len = fieldValue.split(" ").length;
	    if(len > 25){
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
			<h2>Please enter your details below to claim your $300 gift</h2>
		</center>

		<?php if(count($msg)):?>
			<?php
			$msg_code = "";
			foreach ($msg as $key => $value) {?>
				
					<?php if (count($value->errors['register'])) { ?>
					<div class="alert alert-danger alert-dismissible" role="alert">
						<button type="button" class="close" data-dismiss="alert" aria-label="Close">
						  <span aria-hidden="true">&times;</span>
						</button>
						<?php echo implode("<br/>", $value->errors['register']); ?>
					</div>
					<?php } ?>
				
					<?php if (count($value->errors['unique_code'])) { 
						$msg_code = implode("<br/>", $value->errors['unique_code']);
					} ?>
			<?php 
				}
			?>
		<?php endif; ?>
		
		<form class="form" method='post' action=''>
			<input type="hidden" name="idForm" id="idForm" value="1">
			<div class="form-group">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">Enter your Pirelli gift store code sent to you in an email from the retailer your purchased your Pirelli tyres from *</label>
				</center>
				<input class="form-control <?php if(!empty($msg_code)){ echo "my-bvalidator-insert-invalid"; } ?>" name="unique_code" data-bvalidator="required, maxlen[8]"  data-bvalidator-msg="Please contact your retailer to obtain your Pirelli Gift Store Code." type='text' value=''  style="width:100%" />
				<?php if(!empty($msg_code)){ 
					echo "<div class='my-bvalidator-insert-msg'><div>Please contact your retailer to obtain your Pirelli Gift Store Code.</div></div>";
				} ?>
			</div>
			<div class="form-group">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">Your choice of gift *</label>
				</center>
			    <select class="form-control" id="prize" name="prize" data-bvalidator="required" data-bvalidator-msg="Please select your gift." style="width:100%">
			      <option value="">Please Select</option>
			      <option value="1">12 Month Unlimited Fun Pass</option>
			      <option value="2">$1000 Travel Credits</option>
			      <option value="3">$300 Car Wash pass</option>
			      <option value="4">$300 Harvey Norman voucher to a selection of products</option>
			      <option value="5">$300 Drummond Golf voucher to a selection of products</option>
			      <option value="6">Personal Training</option>
			      <option value="7">$300 Holiday Cash</option>
			      <option value="8">$300 Adrenalin Experience</option>
			      <option value="9">Cinema Pass Offer</option>
			    </select>
			</div>
			<div class="form-group">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">Title *</label>
				</center>
				<select class="form-control" id="title" name="title" data-bvalidator="required" data-bvalidator-msg="Please select your salutation." style="width:100%">
			      <option value="">Please Select</option>
			      <option value="Miss">Miss</option>
			      <option value="Mrs">Mrs</option>
			      <option value="Mr">Mr</option>
			      <option value="Ms">Ms</option>
			    </select>
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
			<div class="form-group">
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">Contact Number *</label>
				</center>
				<input class="form-control" data-bvalidator="required" data-bvalidator-msg="Please complete your contact phone number" name='contact_number' type='number' value='' id="contact_number" style="width:100%"/>
			</div>
			<div class="form-check form-check-inline">
			  <center>
			  		<input class="form-check-input" type="checkbox" data-bvalidator="required" data-bvalidator-msg="Please agree to Promotional T&Cs & Privacy Policy" id="approved" name="approved" value="1">
				  	<br>
				  	<label class="form-check-label" for="approved">I agree to the <a href="https://pirelligiftstore.com.au/terms/">terms and conditions</a> and <a href="https://pirelligiftstore.com.au/privacy/">the privacy policy </a></label>
			  </center>
			</div>

			

			<!-- <div class="form-group">
				<div class="checkbox">
					<label><input name="terms1" type='checkbox' value='1'/> I would like to receive future offers.</label>
				</div>
				<div class="checkbox">
					<label><input name="terms2" data-bvalidator="required" type='checkbox' value='1'/> I accept the terms and conditions of the promo.</label>
				</div>
				
			</div>
			<div class="form-group">
				Privacy Statement - TLC’s  <a href="http://www.tlcmarketing.com/Documents/au/PrivacyPolicy.pdf" target="_blank">privacy policy</a> contains very important information about how we collect, store, use and share your personal information, and how you may contact us with questions or to access/correct your information.
			</div> -->
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
</div>
