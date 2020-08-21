<?php
/**
 * The template for displaying the footer.
 *
 * Contains the closing of the #content div and all content after.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Talon
 */

?>

		</div>
	</div><!-- #content -->

	<footer id="colophon" class="site-footer" role="contentinfo">
		<div class="container">
			<div class="row">	
			   <div class="col-md-12 footer-1">
            <span>Information E-SINAR : </span><br>
            <span>+62 - 82211993471</span><br>
            <span>JL. Bomber No A-8 Halim P.K Jakarta Timur</span> 
            <hr class="garis">          
         </div>
			</div>
      <div class="row">
        <div class="col-md-12 footer-2">
          <span>
            <i class="fab fa-facebook"></i>
          </span>
           <span>
            <i class="fab fa-instagram"></i>
          </span>
           <span>
            <i class="fas fa-at"></i>
          </span>
        </div>
      </div>
      <div class="row">
        <div class="col-md-12 footer-3"> 
          <span>&copy; <?php echo date('Y'); ?> E-Sinar</span>
        </div>
      </div>
		</div>
	</footer><!-- #colophon -->
</div><!-- #page -->

<!-- Modal Register -->
<div class="modal fade" id="myModalRegister" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <span>Register Akun E-Sinar</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" style="color: whitesmoke;">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php echo do_shortcode('[wpcrl_register_form]');?>
      </div>
      <div class="modal-footer" style="border-top:0;">
      
      </div>
    </div>
  </div>
</div>

<!-- Modal Login -->
<div class="modal fade" id="myModalLogin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
       <span>Login</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" style="color: whitesmoke;">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <?php echo do_shortcode('[wpcrl_login_form]');?>
      </div>
      <div class="modal-footer" style="border-top:0;">
      
      </div>
    </div>
  </div>
</div>

<!-- Modal Cara Bayar -->
<div class="modal fade" id="myModalCaraBayar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
       <span>Cara Pembayaran</span>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true" style="color: whitesmoke;">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        Cara Melakukan Pembayaran di E-Sinar adalah sebagai berikut:
        <ul>
          <li>Kunjungi website kami di www.e-sinar.com</li>
          <li>Lakukan registrasi diri</li>
          <li>Pilih jenis seminar yang diinginkan</li>
          <li>Lakukan pembayaran ke nomor rekening 123456789 atas nama PT.E-SINAR, sesuai dengan jumlah biaya pendaftaran seminar yang anda pilih</li>
          <li>Upload bukti pembayaran pada saat mendaftar seminar</li>
          <li>Ikuti kegiatan seminarnya sesuai dengan jadwal yang telah ditentukan</li>
        </ul>
      </div>
      <div class="modal-footer" style="border-top:0;">
      
      </div>
    </div>
  </div>
</div>

<?php wp_footer(); ?>

</body>
</html>
