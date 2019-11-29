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

		
	</div><!-- #primary -->

<?php get_sidebar(); ?>
</div>
<?php
get_footer();
