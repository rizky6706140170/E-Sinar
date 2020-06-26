	<form class="form" method='post' action='' style="width: 50%;margin:0 auto;" enctype="multipart/form-data">
		<input type="hidden" name="idForm" id="idForm" value="5">
		  <input class="form-control"  name='test_nama' type='text' value='' style="width:100%;text-align: center;"/>
		  <?php echo wp_nonce_field('handle_custom_form', 'submit_form'); ?>
		  <input class="btn btn-danger" type='submit' value='submit' style="background: #0733f3;"/>
	</form>