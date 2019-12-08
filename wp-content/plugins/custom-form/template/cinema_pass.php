<!-- <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.13.1/jquery.validate.js"></script> -->
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

   //      $('#venue-list-cinema').click(function () {
   //        // e.preventDefault();
   //        // var link = $(this).attr('href');
		 //  $('.image-cinemapass').css("display", "block");
		 
		 // });
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

	function myFunction() {
	  var x = document.getElementById("image-cinemapass");
	  if (x.style.display === "block") {
	    x.style.display = "none";
	    //setTimeout(function() {  window.open('https://www.imocarwash.com/au/','_blank'); }, 3000);
	  } else {
	    x.style.display = "block";
	  }
	}
</script>

<style>
	.entry-title{
		display: none;
	}
</style>
<?php
	session_start();
	$inactive 		= 7200;
	$timeout		= 0;
	$session_redeem = 0;

	if( !isset($_SESSION['timeout']) ){
		$_SESSION['timeout'] = time() + $inactive; 
	}

	$session_life = time() - $_SESSION['timeout'];

	if($session_life > $inactive)
	{  
		session_destroy(); 
		$timeout = 1;
    }

    $_SESSION['timeout']=time();
	if(empty($_SESSION['redeem_cinema'])){
		$session_redeem = 1;
	}
?>
<div class="container">
	<div class="row" style="margin-bottom: 15px;">
		<div>
			<h2 style="text-align: center;">Please enter in your monthly cinema code for the current month.Your code is valid the first 7 calendar days of the month</h2>
		</div>
		
	</div>
	<div class="row">
		

		<?php
		// global $wpdb;
		// $data=$wpdb->get_results("SELECT * FROM venue_cinema");
		 // date_default_timezone_set('Australia/Sydney'); 
		 // echo date("Y-m-d H:i:s A");

		?>
		<form class="form" method='post' action=''>
		<div class="col-md-7">
			
			<input type="hidden" name="idForm" id="idForm" value="30">
			
			<div class="form-group">	
					<select class="form-control" name="" id="venue-list-cinema"  style="background:black;color: white;background-image: none;" onclick="myFunction();">
						 <option value="" hidden>Venue List</option>
					</select>	
			</div>
			<div class="image-cinemapass" id="image-cinemapass">
				<img class="" src="<?php echo get_template_directory_uri(); ?>/images/National_Cinema_Locations.jpg">
			</div>
		</div>

		<div class="col-md-5">
				<div class="form-group">
					<select class="form-control select_cinema" name="monthly_pass" id="monthly_pass" data-bvalidator="required" data-bvalidator-msg="Please select your current month" style="background: black;color: white;background-image: none;">
						  <option value="" disabled selected>Request my monthly Pass</option>
						  <option value="Jan">January</option>
					      <option value="Feb">February</option>
					      <option value="Mar">March</option>
					      <option value="Apr">April</option>
					      <option value="May">May</option>
					      <option value="Jun">June</option>
					      <option value="Jul">July</option>
					      <option value="Aug">August</option>
					      <option value="Sep">September</option>
					      <option value="Oct">October</option>
					      <option value="Nov">November</option>
					      <option value="Dec">December</option>
					</select>
				</div>

				<div class="form-group">
                    <center>
                        <label style="font-weight:bold;margin-bottom:5px;">Please enter in your monthly cinema code for the current month.Your code is valid the first 7 calendar days of the month</label>
                    </center>
                    <input class="form-control" data-bvalidator="required" data-bvalidator-msg="Please enter your unique code cinema" name='unique_code' type='text' value='' style="width:100%;text-align: center;" placeholder="Enter your 10 digits code" />
                    
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
						<input class="btn btn-danger" type='submit' value='SUBMIT'/>
					</center>
				</div>
				<div class="form-group">

				</div>
		</div>
		</form>
		
	</div>	
</div>
<div class="backdrop-modal"></div>
<input type="hidden" id="timeout" value="<?= $timeout ?>">
<input type="hidden" id="session_redeem" value="<?= $session_redeem ?>">

<!-- Modal -->
<div id="modal-session" class="modal-timeout modal-offer">
	<center>
		<h3>You have not entered a unique code. Please enter a unique code from the page <a href="<?php echo esc_url( home_url( '/access-your-gift' ) ); ?>">access your gift.</a></h3>
	</center>
</div>

<!-- Modal -->
<div id="modal-timeout" class="modal-timeout modal-offer">
	<center>
		<h3>Your session on this page has expired. Please re-enter a unique code from the page <a href="<?php echo esc_url( home_url( '/access-your-gift' ) ); ?>">access your gift.</a></h3>
	</center>
</div>

<script type="text/javascript">
	$ = jQuery;
	
    $(document).ready(function () {
		var timeout = $( "#timeout" ).val();
        var session_redeem = $( "#session_redeem" ).val();

		if(timeout == 1){
            $('#modal-timeout').css("display", "block");
            $('#modal-session').css("display", "none");
			$('.backdrop-modal').css("display", "block");
			// $('body').css("overflow", "hidden");
		}

        if(session_redeem == 1){
            $('#modal-session').css("display", "block");
            $('#modal-timeout').css("display", "none");
			$('.backdrop-modal').css("display", "block");
			// $('body').css("overflow", "hidden");
        }
        
	});

</script>

