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

<?php
    $inactive 	    = 7200;
    $timeout	    = 0;
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
    
    if(empty($_SESSION['redeem_harvey'])){
		$session_redeem = 1;
	}

    global $wpdb;
    $idProduct  = $_SESSION['product']['idProduct'];
    $sql        = "SELECT * from wp_product WHERE id = $idProduct AND product_type = 2";
    $product    = $wpdb->get_row($sql);

    $upload_dir = wp_upload_dir();
	$upload_url = ( $upload_dir['baseurl'] );
?>

<div class="container container-product">
    <div class="row">
        <div class="col-md-7">
            <div class="product-detail info">
                <p><b class="product-name"><?= $product->name ?></b></p>
                <p><b class="">Product Code: <?= $product->product_code ?></b></p>
            </div>
            <div class="product-detail-img">
                <img class="product-img" src="<?php echo $upload_url . $product->subdir .'/'. $product->image; ?>" title="Harvey Norman Product"> 
            </div>
        </div>
        <div class="col-md-5">
            <div class="detail-box">
                <div class="detail-product">
                    <div>
                        <h3>$<?= round($product->price,2) ?></h3>
                        <b>Delivery Cost : $<?= round($product->delivery_cost,2) ?></b>
                    </div>
                    <div class="select-button">
                        <form class="form" method='post' action='' id="adrenalin-form">
                            <div class="form-group">
                                <input type="hidden" name="idForm" id="idForm" value="12">
                                <input type="hidden" name="idProduct" id="idProduct" value="<?php echo $idProduct?>">
                                <input type="hidden" name="cost" id="cost" value="<?php echo $product->delivery_cost?>">
                            </div>
                            <div class="form-group">
                                <center>
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
                        </form>
                    </div>
                    <div id="alert_failed">
                        <?php
                            if(!empty($_SESSION['failed_harvey'])) :
                                echo $_SESSION['failed_harvey'];
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
            <?php if(!empty($product->detail_product)): ?>
            <b>What's in the Box:</b>
            <p><?= $product->detail_product ?></p>
            <?php endif; ?>
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
