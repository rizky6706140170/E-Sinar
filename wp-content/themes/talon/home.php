<?php
/**
 * The home template file.
 *
 * @package Talon
 */

get_header(); ?>

<div class="row">
	<div id="primary" class="content-area <?php echo esc_attr(talon_blog_layout()); ?>">
		<main id="main" class="site-main" role="main">

			<h1>list seminar home</h1>

		</main><!-- #main -->
	</div><!-- #primary -->

<?php 
	
		get_sidebar();
?>

</div>
<?php get_footer(); ?>
