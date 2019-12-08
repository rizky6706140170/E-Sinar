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

<style>
	.entry-title{
		display: none;
	}
</style>

<div class="container">
	<div class="col-md-12">
		<center>
			<h2>
				Please enter in your monthly Personal Training code for the current month. Your code is valid the first 7 calendar days of the month 
			</h2>
		</center>

		<div class="adrenaline-form">
			<form class="form" method='post' action='' id="adrenalin-form">
				<div class="form-group">
					<input type="hidden" name="idForm" id="idForm" value="10">
				</div>
                <div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Enter your monthly Personal Training code</label>
                    </center>
                    <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Please enter your Personal Training code" name='monthly_code' type='text' value='' style="width:100%" placeholder="Enter in your 9 digits code"/>
                </div>
                <div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Enter your postcode</label>
                    </center>
                    <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Please enter your postcode" name='postcode' type='text' value='' style="width:100%" />
                </div>
				<div class="form-group">
					<select class="form-control" name="day" id="day" data-bvalidator="required" data-bvalidator-msg="Please select day of week">
						<option value="" disabled selected>Select day of week</option>
						<option value="Monday">Monday</option>
						<option value="Tuesday">Tuesday</option>
						<option value="Wednesday">Wednesday</option>
						<option value="Thursday">Thursday</option>
						<option value="Friday">Friday</option>
					</select>
				</div>
				<div class="form-group">
					<select class="form-control" name="time_slot" id="time_slot" data-bvalidator="required" data-bvalidator-msg="Please select your preferred time slot">
						<option value="" disabled selected>Select preferred time slot</option>
						<option value="9am-12pm">6am - 9am</option>
						<option value="9am-12pm">9am - 12pm</option>
						<option value="12pm-3pm">12pm - 3pm</option>
						<option value="3pm-6pm">3pm - 6pm</option>
					</select>
				</div>
				<div class="form-check form-check-inline">
					<center>
						<input class="form-check-input" type="checkbox" data-bvalidator="required" data-bvalidator-msg="Please agree to Promotional T&Cs & Privacy Policy" id="approved" name="approved" value="1">
						<br>
						<label class="form-check-label" for="approved">I agree to the <a href="https://pirelligiftstore.com.au/terms/" target="_blank">terms and conditions</a></label>
					</center>
				</div>
				<div class="form-group  text-center">
					<center>
						<?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
						<input class="btn btn-danger" type='submit' value='SUBMIT'/>
					</center>
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
</div>
