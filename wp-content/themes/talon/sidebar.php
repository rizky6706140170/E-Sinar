<?php
/**
 * The sidebar containing the main widget area.
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Talon
 */

if ( ! is_active_sidebar( 'sidebar-1' )) {
	return;
}
?>

<?php if(is_page("beranda")): ?>
<aside id="secondary" class="widget-area" role="complementary">
	<!-- dynamic_sidebar( 'sidebar-1' );  function get sidebar awal -->
	<?php echo do_shortcode( ' [seminar_render] ' ); ?>
</aside><!-- #secondary -->
<?php endif; ?>
