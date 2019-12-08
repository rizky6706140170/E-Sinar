<script type="text/javascript">
	$ = jQuery;
	
    $(document).ready(function () {
        $('.no-checkedselector').on('change', 'input[type="radio"].toggle', function () {
            if (this.checked) {
                $('input[name="' + this.name + '"].checked').removeClass('checked');
                $(this).addClass('checked');
                $('.toggle-container').addClass('force-update').removeClass('force-update');
            }
        });
        $('.no-checkedselector input[type="radio"].toggle:checked').addClass('checked');
    	
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

        $('input:radio[name="toggle"]').change(
        function(){
            if ($(this).is(':checked') && $(this).val() == '1') {
                $("#home-delivery").css("display", "none");
                $("#store-pick-up").css("display", "block");
            }else {
                $("#home-delivery").css("display", "block");
                $("#store-pick-up").css("display", "none");
            }
        });
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

    input[type="radio"].toggle {
        position: absolute;
        left: -99em;
    }

    input[type="radio"].toggle + label {
        display:inline-block;
        text-align:center;
    }

    /*input[type="radio"].toggle:checked + label,*/ input[type="radio"].toggle.checked + label {
        background-color: #b5b5b5;
        color: #020202;
    }

    label.btn.btn-toggle {
        background: #e2e2e2;
        margin: 5px;
    }
</style>

<?php
    $inactive 	    = 7200;
    $timeout	    = 0;
    $session_redeem	= 0;

    $session_life = time() - $_SESSION['timeout'];

	if($session_life > $inactive)
	{  
		session_destroy(); 
		$timeout = 1;
	}

    $_SESSION['timeout']=time();
    
    if(empty($_SESSION['redeem_drummond'])){
		$session_redeem = 1;
	}

    global $wpdb;
    $idProduct  = $_SESSION['product']['idProduct'];
    $sql        = "SELECT * from wp_product WHERE id = $idProduct AND product_type = 1";
    $product    = $wpdb->get_row($sql);

    $dataVenue  = $wpdb->get_results("SELECT * from wp_venue_drummond");

    $upload_dir = wp_upload_dir();
	$upload_url = ( $upload_dir['baseurl'] );
?>

<div class="container container-product">
    <div class="row">
        <div class="col-md-7">
            <div class="product-detail info">
                <p><b class="product-name"><?= $product->name ?></b></p>
            </div>
            <div class="product-detail-img">
                <img class="product-img drummond-golf" src="<?php echo $upload_url . $product->subdir .'/'. $product->image; ?>" title="Drummond Golf Product"> 
            </div>
        </div>
        <div class="col-md-5">
            <div class="detail-box">
                <div class="detail-product">
                    <div class="drummond-price">
                        <h3>$<?= round($product->price, 2) ?></h3>
                    </div>
                    <div class="select-button">
                        <form class="form" method='post' action='' id="adrenalin-form">
                            <div class="form-group">
                                <input type="hidden" name="idForm" id="idForm" value="14">
                                <input type="hidden" name="idProduct" id="idProduct" value="<?php echo $idProduct?>">
                            </div>
                            <div class="form-group">
                                <center>
                                    <div class="no-checkedselector">
                                        <div class="toggle-container">
                                            <input id="toggle-on" class="toggle toggle-left" name="toggle" type="radio" value="1">
                                            <label for="toggle-on" class="btn btn-toggle">In-store pick up</label>
                                            <input id="toggle-off" class="toggle toggle-right" name="toggle" type="radio" value="2">
                                            <label for="toggle-off" class="btn btn-toggle">Home delivery</label>
                                        </div>
                                    </div>
                                </center>
                            </div>
                            <div class="div-form product">
                                <div id ="store-pick-up" style="display:none;">
                                    <div class="form-group">
                                        <center>
                                            <a class="btn btn-black select-btn" href="https://www.drummondgolf.com.au/storelocator" target="_blank" >Find a store</a>
                                        </center>
                                    </div>
                                    <div class="form-group">
                                        <select class="form-control" name="venue" id="venue" data-bvalidator="required" data-bvalidator-msg="Please select venue" style="background: black;color: white;background-image: none;">
                                            <option value="" disabled selected>View venue listing</option>
                                                <?php foreach($dataVenue as $venue){  ?>						
                                                <option value="<?php echo $venue->id; ?>"><?php echo $venue->venue_name; ?></option>
                                                <?php } ?>
                                        </select>
                                    </div>
                                    <div class="form-group text-center">
                                        <center>
                                            <?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
                                            <input class="btn btn-danger select-btn" type='submit' value='Confirm your order'/>
                                        </center>
                                    </div>
                                </div>
                                <div id ="home-delivery" style="display:none;">
                                    <div>
                                        <b>Delivery Cost : $<?= round($product->delivery_cost,2) ?></b>
                                    </div>
                                    <div class="form-group">
                                        <center>
                                            <input type="hidden" name="cost" id="cost" value="<?php echo $product->delivery_cost?>">
                                            <input type="text" name="recipient" id="recipient" placeholder="Enter name of recipient" data-bvalidator="required" data-bvalidator-msg="Please enter name of recipient">
                                        </center>
                                    </div>
                                    <div class="form-group">
                                        <center>
                                            <input type="text" name="address" id="address" placeholder="Enter delivery address" data-bvalidator="required" data-bvalidator-msg="Please enter delivery address">
                                        </center>
                                    </div>
                                    <div class="form-group text-center">
                                        <center>
                                            <?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
                                            <input class="btn btn-danger select-btn" type='submit' value='Confirm your order'/>
                                        </center>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                    <div id="alert_failed">
                        <?php
                            if(!empty($_SESSION['failed_drummond'])) :
                                echo $_SESSION['failed_drummond'];
                            endif;
                        ?>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="row product-row">
        <div class="product-description">
            <h4>Description</h4>
            <hr>
        </div>
        <div class="product-detail">
            <p>
                <?= $product->description ?>
            </p>
        </div>
    </div>
</div>

<div class="backdrop-modal"></div>
<input type="hidden" id="timeout" value="<?= $timeout ?>">
<input type="hidden" id="session_redeem" value="<?= $session_redeem ?>">

<!-- Modal -->
<div id="modal-session" class="modal-timeout modal-product">
	<center>
		<h3>You have not entered a unique code. Please enter a unique code from the page <a href="<?php echo esc_url( home_url( '/access-your-gift' ) ); ?>">claim your gift.</a></h3>
	</center>
</div>

<!-- Modal -->
<div id="modal-timeout" class="modal-timeout modal-product">
	<center>
		<h3>Your session on this page has expired. Please re-enter a unique code from the page <a href="<?php echo esc_url( home_url( '/access-your-gift' ) ); ?>">claim your gift.</a></h3>
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

        <?php 
            if(isset($_SESSION['timeout_status'])){
                if($_SESSION['timeout_status'] == 'true'){
                    echo '$("#modal-timeout").css("display", "block");
                    $("#modal-session").css("display", "none");
                    $(".backdrop-modal").css("display", "block");';
                    session_destroy();
                }
            }
        ?>
        
	});

</script>
