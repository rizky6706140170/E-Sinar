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
		<div class="col-md-3">
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
			</div>
			<?php 
				global $current_user;
				global $wpdb;
				get_currentuserinfo();
				$id_user = $current_user->id;
				$id_author = get_the_author_ID();
				$id_post = get_the_ID();

				$query_cek = "SELECT * FROM seminar where id_user ='$id_user' and id_post = '$id_post'";
				$cek =  $wpdb->get_results($query_cek);
			?>

			<?php if(!is_user_logged_in()): ?>
			<div class="daftar-seminar-nonlogin alert alert-danger" style="text-align: center;">
				<span>Silahkan login terlebih dahulu untuk bisa mendaftar ke seminar ini</span>
			</div>
			<?php else: ?>
				<?php if(empty($cek)): ?>	
				<div class="daftar-seminar" style="text-align: center;">
					<a href="<?php echo home_url().'/daftar?'.'id_user='.$id_user.'&id_post='.$id_post.'&id_author='.$id_author; ?>" class="btn btn-success">Daftar Seminar</a>
				</div>
				<?php else: ?>
					<div class="alert alert-danger" style="text-align: center;">
						<span>Anda Sudah Mendaftar Seminar ini</span>
					</div>
				<?php endif; ?>
			<?php endif; ?>	
		</div>
		<div class="col-md-9">
			
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
