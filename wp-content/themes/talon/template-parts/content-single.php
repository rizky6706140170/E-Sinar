<?php
/**
 * Template part for displaying posts.
 *
 * @link https://codex.wordpress.org/Template_Hierarchy
 *
 * @package Talon
 */

?>

<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

	<header class="entry-header">
		<?php
		the_title( '<h1 class="entry-title">', '</h1>' );
		if ( 'post' === get_post_type() && get_theme_mod( 'hide_meta_singles' ) != 1) : ?>
		<div class="entry-meta">
			<?php talon_posted_on(); ?>
		</div><!-- .entry-meta -->
		<?php
		endif; ?>
	</header><!-- .entry-header -->

	<div class="row">
		<div class="col-md-4">
			<?php if ( has_post_thumbnail() && ( get_theme_mod( 'hide_featured_singles' ) != 1 ) ) : ?>
			<div class="single-thumb">
				<a href="<?php the_permalink(); ?>" title="<?php the_title(); ?>"><?php the_post_thumbnail('talon-blog-image'); ?></a>
			</div>
			<?php endif; ?>
			<div class="detail-post" style="margin-bottom: 5px;">
				<div class="blok-tempat">
					<span class="tempat-lokasi"><i class="fas fa-map-marker-alt"> <?php echo get_field('tempat') ?></i></span>
				</div>
				<div class="date_sm">
					<span><i class="far fa-calendar-alt"> <?php echo get_field('date') ?></i></span>
				</div>
				<div class="waktu_sm">
					<span><i class="far fa-clock"> <?php echo get_field('waktu_mulai') .'-'.get_field('waktu_selesai') ?></i></span>
				</div>
				<div class="harga_sm">
					<span><i class="fas fa-money-bill-wave-alt"> Rp. <?php echo get_field('harga') ?></i></span>
				</div>
			</div>
			<?php 
				global $current_user;
				global $wpdb;
				get_currentuserinfo();
				session_start();
				$id_user = $current_user->id;
				$id_author = get_the_author_ID();
				$id_post = get_the_ID();
				// $tgl_sm = get_field('date');

				$_SESSION['login'] = $id_user;
				$_SESSION['id_post'] = $id_post;

				$query_cek = "SELECT * FROM daftar_seminar where id_user ='$id_user' and id_post = '$id_post'";
				$cek =  $wpdb->get_results($query_cek);
				$tgl_now = date("d/m/Y");

				$tgl_sm=$wpdb->get_var("SELECT meta_value from wp_postmeta where post_id='$id_post' and meta_key = 'date'");
				 	$tanggal = substr($tgl_sm, 6);
				    $bulan = substr($tgl_sm, 4,-2);
				    $tahun = substr($tgl_sm, 0,4);
				    $tanggal_seminar = $tanggal .'-'. $bulan .'-'. $tahun;

				$time = strtotime($tanggal_seminar);
				 $mydate=strtotime('now');
				$newformat = date("Y/m/d",strtotime("30/04/2020"));

				// echo $tgl_now .'---' .$newformat .'----' . $tanggal_seminar;
			?>
			<?php if($time >= $mydate) : ?>
				<?php if(!is_user_logged_in()): ?>
						<div class="daftar-seminar-nonlogin alert alert-danger" style="text-align: center;">
							<span>Silahkan login terlebih dahulu untuk bisa mendaftar ke seminar ini</span>
						</div>
				<?php else: ?>
						<?php if(empty($cek)): ?>	
						<div class="daftar-seminar" style="text-align: center;">
							<a href="<?php echo home_url().'/daftar_sm'; ?>" target="_blank" class="btn btn-success" style="background: #0733f3;">Daftar Seminar</a>
						</div>
						<?php else: ?>
							<div class="alert alert-danger" style="text-align: center;">
								<span>Anda Sudah Mendaftar Seminar ini</span>
							</div>
						<?php endif; ?>
				<?php endif; ?>
			<?php else: ?>
				<div class="alert alert-danger" style="text-align: center;">
					<span>Tanggal Seminar sudah lewat</span>
				</div>
			<?php endif;?>
			
						
		</div>
		<div class="col-md-8">
			
			<div class="entry-content">
				<?php
					the_content( sprintf(
						/* translators: %s: Name of current post. */
						wp_kses( __( 'Continue reading %s <span class="meta-nav">&rarr;</span>', 'talon' ), array( 'span' => array( 'class' => array() ) ) ),
						the_title( '<span class="screen-reader-text">"', '"</span>', false )
					) );

					wp_link_pages( array(
						'before' => '<div class="page-links">' . esc_html__( 'Pages:', 'talon' ),
						'after'  => '</div>',
					) );
				?>
			</div><!-- .entry-content -->
		</div>
	</div>




	<footer class="entry-footer">
		<?php talon_entry_footer(); ?>
	</footer><!-- .entry-footer -->
</article><!-- #post-## -->
