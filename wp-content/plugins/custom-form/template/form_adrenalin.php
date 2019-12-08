<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.js"></script> -->
<script type="text/javascript">
	$ = jQuery;
	jQuery.validator.addMethod("notEqual", function(value, element, param) {
		return this.optional(element) || $(param).not(element).get().every(function(item) {
			return $(item).val() != value;
		});
	}, "Please specify a different date");

	jQuery.validator.addClassRules("date_dropdown", {
		notEqual: ".date_dropdown"
	});

    $(document).ready(function () {
		var earliest_date	= <?php echo(json_encode($_SESSION['earliest_date']))?>;
		var start_date 		= new Date(earliest_date);

		// start_date.setDate(start_date.getDate() - 1);
		
		$("#date_1").datepicker({
			startDate: start_date,
		});

		$('#date_2').datepicker({
			startDate: start_date
		});

		$('#date_3').datepicker({
			startDate: start_date
		});

		var validator = $('#adrenalin-form').validate({
			rules: {},
			messages: {}
		});

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
		<?php if(count($msg)):?>
			<?php
				$msg_code = "";
				foreach ($msg as $key => $value) {
					//$msg_code = $value->get_error_message();
					echo $value->get_error_message().'<br>';
				}
			?>
		<?php endif; ?>
		<center class="experience-title">
			<h2>Please enter your details below to select your adrenalin experience</h2>
		</center>

		<div class="adrenaline-form">
			<form class="form" method='post' action='' id="adrenalin-form">
				<div class="form-group">
					<input type="hidden" name="idForm" id="idForm" value="9">
				</div>
				<div class="form-group">
					<select class="form-control" name="experience" id="experience" data-bvalidator="required" data-bvalidator-msg="Please select your experience">
						<option value="" disabled selected>Select your experience</option>
						<option value="Sky Diving">Sky Diving</option>
						<option value="Scuba Diving">Scuba Diving</option>
						<option value="Air Ballooning">Air Ballooning</option>
					</select>
				</div>
				<div class="form-group">
					<select class="form-control" name="state" id="state" data-bvalidator="required" data-bvalidator-msg="Please select your State">
						<option value="" disabled selected>Select State</option>
						<option value="QLD">QLD</option>
						<option value="NSW">NSW</option>
						<option value="VIC">VIC</option>
						<option value="ACT">ACT</option>
						<option value="TAS">TAS</option>
						<option value="SA">SA</option>
						<option value="NT">NT</option>
						<option value="WA">WA</option>
					</select>
				</div>
				<div class="form-group">
					<select class="form-control" name="time_slot" id="time_slot" data-bvalidator="required" data-bvalidator-msg="Please select your preferred time slot">
						<option value="" disabled selected>Select preferred timeslot</option>
						<option value="9am-12pm">9am - 12pm</option>
						<option value="12pm-3pm">12pm - 3pm</option>
						<option value="3pm-6pm">3pm - 6pm</option>
					</select>
				</div>
				<center>
					<label style="font-weight:bold;margin-bottom:5px;">SELECT 3 DATES</label>
				</center>
				<div class="form-group date" data-provide="datepicker">
					<input type="text" class="form-control date_dropdown" id="date_1" placeholder="1st preference" name="pref_date[1]" data-bvalidator="required" data-bvalidator-msg="Please select your preference date" data-date-format="yyyy-mm-dd">
				</div>
				<div class="form-group date" data-provide="datepicker">
					<input type="text" class="form-control date_dropdown" id="date_2" placeholder="2nd preference" name="pref_date[2]" data-bvalidator="required" data-bvalidator-msg="Please select your preference date" data-date-format="yyyy-mm-dd">
				</div>
				<div class="form-group date" data-provide="datepicker">
					<input type="text" class="form-control date_dropdown" id="date_3" placeholder="3rd preference" name="pref_date[3]" data-bvalidator="required" data-bvalidator-msg="Please select your preference date" data-date-format="yyyy-mm-dd">
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
						<input class="btn btn-danger btn-submit" type='submit' value='SUBMIT'/>
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
