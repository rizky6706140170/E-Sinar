<?php
/**
 * The header for our theme.
 *
 * This is the template that displays all of the <head> section and everything up until <div id="content">
 *
 * @link https://developer.wordpress.org/themes/basics/template-files/#template-partials
 *
 * @package Talon
 */

?><!DOCTYPE html>
<html <?php language_attributes(); ?>>
<head>
<meta charset="<?php bloginfo( 'charset' ); ?>">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="profile" href="http://gmpg.org/xfn/11">
<link rel="pingback" href="<?php bloginfo( 'pingback_url' ); ?>">
<script src="<?php echo get_template_directory_uri(); ?>/js/jquery-3.4.1.min.js"></script>
<script src="<?php echo get_template_directory_uri(); ?>/js/bootstrap/bootstrap.min.js"></script>
<?php wp_head(); ?>
</head>

<body <?php body_class(); ?>>
<?php talon_mobile_menu(); ?>
<div canvas="container" id="page" class="site">
	
	<a class="skip-link screen-reader-text" href="#content"><?php esc_html_e( 'Skip to content', 'talon' ); ?></a>

	<?php //Used for talon_header_bar() 
	do_action('talon_header'); ?>
	
	<?php //Used for talon_header_hero() 
	do_action('talon_after_header'); ?>

	<div id="content" class="site-content">
		<div class="container">
			<div class="row row-btn-reglog">
				<div class="col-md-12">
					<button type="button" class="btn btn-primary" id="btn-register">Register</button>
					<button type="button" class="btn btn-primary" id="btn-login">Login</button>
				</div>
			</div>