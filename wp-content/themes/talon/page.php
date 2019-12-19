<?php
/**
 * The template for displaying all pages.
 *
 * This is the template that displays all pages by default.
 * Please note that this is the WordPress construct of pages
 * and that other 'pages' on your WordPress site may use a
 * different template.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Talon
 */
get_header(); ?>

<div class="row">
	<!-- <div id="primary" class="content-area col-md-8"> -->
	<div id="primary" class="content-area">
		<?php if (!is_page("seminar") && !is_page("beranda") ) : ?>
		<main id="main" class="site-main" role="main">
			<?php
			while ( have_posts() ) : the_post();

				get_template_part( 'template-parts/content', 'page' );

				// If comments are open or we have at least one comment, load up the comment template.
				if ( comments_open() || get_comments_number() ) :
					comments_template();
				endif;

			endwhile; // End of the loop.
			?>

		</main><!-- #main -->
		<?php endif; ?>
		
		<?php if(is_page("seminar")): ?>
			<?php echo do_shortcode( ' [seminar_render] ' ); ?>
		<?php endif; ?> 

		<?php if(is_page("daftar_sm") || is_page("history") || is_page("editbukti") || is_page("foto_profile") || is_page("edit_foto_profile")): ?>
			<style type="text/css">
				.entry-header
				{
					display: none;
				}
			</style>
		<?php endif; ?> 
		<?php if(is_page("profile")):?>
			<style type="text/css">
				.row-btn-login , .entry-header
				{
					display: none;
				}
			</style>
		<?php endif; ?>
		<?php if(is_page("sukses_daftar")): ?>
			
			<style type="text/css">
				.entry-header
				{
					display: none;
				}
				.site-main
				{
					border: 1px solid gainsboro;
				}
			</style>
		<?php endif; ?>
		<?php if(is_page("gagal")): ?>
			
			<style type="text/css">
				.entry-header
				{
					display: none;
				}
				.site-main
				{
					border: 1px solid red;
				}
			</style>
		<?php endif; ?>
		<?php if(is_page("about-us")): ?>

			<style type="text/css">
				.entry-header
				{
					display: none;
				}
				.site-main
				{
					display: none;
				}
			</style>
			<div class="row">
				<div class="col-md-12">
					<div class="card">
					  <div class="card-header">
					    E-Sinar
					  </div>
					  <div class="card-body" style="text-align: justify;">
					    <p class="card-text">e-SINAR adalah situs web online yang memberikan informasi seputar daftar event seminar dengan kemudahan fitur seminar sesuai kebutuhan. Dengan menggunakan e-SINAR peserta dapat mencari seminar secara daring dengan lebih mudah dan efisien serta melakukan pendaftaran dengan cepat. Aplikasi e-SINAR juga dapat mempermudah penyaji seminar karena dapat mempromosikan seminar secara luas dan melakukan manajemen daftar peserta dengan sistematis.</p>
					    
					  </div>
					</div>
				</div>
				<div class="col-md-12">
					<h3>THE TEAM</h3>
					<div class="card-group">
						  <div class="card">
						    <img class="card-img-top" src="<?php echo get_template_directory_uri();?>/images/rogape.jpg" alt="Card image cap">
						    <div class="card-body">
						      <h5 class="card-title">Rogape Iansen Euclerr</h5>
						      <p class="card-text">System Analysis</p>
						      <p class="card-text"><small class="text-muted">41818310031</small></p>
						    </div>
						  </div>
						  <div class="card">
						    <img class="card-img-top"src="<?php echo get_template_directory_uri();?>/images/rizky.jpg" alt="Card image cap">
						    <div class="card-body">
						      <h5 class="card-title">Rizky Febryan</h5>
						      <p class="card-text">Programmer</p>
						      <p class="card-text"><small class="text-muted">41818310021</small></p>
						    </div>
						  </div>
						  <div class="card">
						    <img class="card-img-top" src="<?php echo get_template_directory_uri();?>/images/yulia.jpg" alt="Card image cap">
						    <div class="card-body">
						      <h5 class="card-title">Yulia Wardaningsih</h5>
						      <p class="card-text">Web Design</p>
						      <p class="card-text"><small class="text-muted">41818310010</small></p>
						    </div>
						  </div>
						</div>
				</div>
			</div>
		<?php endif;?>
		<?php if(is_page("faq")): ?>
			<style type="text/css">
				.entry-header
				{
					display: none;
				}
				.site-main
				{
					display: none;
				}
			</style>
		<div class="row">
			<div class="col-md-12">
				<div class="accordion" id="accordionExample">
				  <div class="card">
				    <div class="card-header" id="headingOne">
				      <h2 class="mb-0">
				        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
				         Apa itu aplikasi e-SINAR ?
				        </button>
				      </h2>
				    </div>

				    <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
				      <div class="card-body">
				        e-SINAR adalah situs web online yang memberikan informasi seputar daftar event seminar dengan kemudahan fitur seminar sesuai kebutuhan.
				      </div>
				    </div>
				  </div>
				  <div class="card">
				    <div class="card-header" id="headingTwo">
				      <h2 class="mb-0">
				        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
				          Apa saja keuntungan dari penggunaan e-SINAR ?
				        </button>
				      </h2>
				    </div>
				    <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
				      <div class="card-body">
				       Dengan menggunakan e-SINAR user dapat mencari seminar secara daring dengan lebih mudah dan efisien serta melakukan pendaftaran dengan cepat.
				      </div>
				    </div>
				  </div>
				  <div class="card">
				    <div class="card-header" id="headingThree">
				      <h2 class="mb-0">
				        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
				          Bagaimana cara melakukan pendaftaran seminar di e-SINAR ?
				        </button>
				      </h2>
				    </div>
				    <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
				      <div class="card-body">
				       Pendaftaran seminar dapat dilakukan setelah melalui proses login, lalu pilih menu seminar, setelah itu akan tampil berbagai macam pilihan seminar dan pilih seminar yang akan didaftar, lalu pilih Daftar Seminar.
				      </div>
				    </div>
				  </div>
				  <div class="card">
				    <div class="card-header" id="headingFour">
				      <h2 class="mb-0">
				        <button class="btn btn-link collapsed" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
				         Bagaimana cara melakukan pembayaran di e-SINAR ?
				        </button>
				      </h2>
				    </div>
				    <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
				      <div class="card-body">
				       Pembayaran dapat dilakukan melalui transfer bank ke rekening mandiri 127000012345 a/n E-Sinar, dan transfer dengan jumlah uang yang sesuai dengan deskripsi dan ketentuan dari seminar yang akan didaftarkan.
				      </div>
				    </div>
				  </div>
				</div>
				<br><br>
				<a href="<?php echo get_template_directory_uri();?>/images/Buku Panduan E-sinar.pdf"  class="button" target="_blank">Lihat Buku Panduan</a>
			</div>
		</div>
		<?php endif; ?>
	</div><!-- #primary -->

<?php get_sidebar(); ?>
</div>
<?php
get_footer();
