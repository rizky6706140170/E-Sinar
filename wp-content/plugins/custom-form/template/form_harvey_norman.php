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

	if(empty($_SESSION['redeem_harvey'])){
		$session_redeem = 1;
	}
?>

<div class="row">
	<?php 
		global $wpdb;
		$data_product = $wpdb->get_results("SELECT * from wp_product WHERE product_type = 2 AND deleted_at IS NULL");
		$query = "SELECT * FROM wp_unique_code_7 WHERE unique_code='".$dataCode['unique_code']."' AND email = '".$dataCode['email']."'";
		$cek7 = $wpdb->get_results($query);
		
		$upload_dir = wp_upload_dir();
		$upload_url = ( $upload_dir['baseurl'] );
		
		foreach($data_product as $product){
			$idProduct = $product->id;
    ?>
	<div class="col-md-2 harvey-norman-product">
		<div class="product-box">
			<div class="detail-product">
				<div class="detail-img">
					<img src=" <?php echo $upload_url . $product->subdir .'/'. $product->image; ?>" title="Harvey Norman Product"> 
				</div>
				<div class="product-price">
					<h4 class="text-center">$<?= round($product->price,2) ?></h4>
				</div>
				<div class="product-detail text-center">
					<p><b class="product-name"><?= $product->name ?></b></p>
				</div>
				<div class="select-button">
					<form class="form" method='post' action='' id="adrenalin-form">
						<div class="form-group">
							<input type="hidden" name="idForm" id="idForm" value="11">
							<input type="hidden" name="idProduct" id="idProduct" value="<?php echo $idProduct?>">
						</div>
						<div class="form-group text-center">
							<center>
								<?php echo wp_nonce_field('handle_custom_form', 'nonce_custom_form'); ?>
								<input class="btn btn-danger select-btn" type='submit' value='SELECT'/>
							</center>
						</div>
					</form>
				</div>
			</div>
		</div>
    </div>
    <?php } ?>
</div>

<div class="backdrop-modal"></div>
<input type="hidden" id="timeout" value="<?= $timeout ?>">
<input type="hidden" id="session_redeem" value="<?= $session_redeem ?>">

<!-- Modal -->
<div id="modal-session" class="modal-timeout modal-offer">
	<center>
		<h3>You have not entered a unique code. Please enter a unique code from the page <a href="<?php echo esc_url( home_url( '/access-your-gift' ) ); ?>">claim your gift.</a></h3>
	</center>
</div>

<!-- Modal -->
<div id="modal-timeout" class="modal-timeout modal-offer">
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
        
	});

</script>