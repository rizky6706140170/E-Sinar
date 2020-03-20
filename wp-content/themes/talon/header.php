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
<link rel="stylesheet" type="text/css" href="<?php echo get_template_directory_uri(); ?>/font-awesome/css/all.css">
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
			<?php 
				global $current_user;
				global $wpdb;
     			get_currentuserinfo();

     			$ceknama=$wpdb->get_var("SELECT user_nicename from wp_users where id='$current_user->id'");
     			$namauser = $ceknama;
			?>
	<div class="row-btn-login" style="">
				<div class="row-left" style="width: 59%;float: left;">
					<img src=" <?php echo get_template_directory_uri().'/images/images.jpg'; ?>" style="width: 100%;">
				</div>
				<div class="row-right" style="width: 40%;float: right;">
					<div class="row row-btn-reglog">
						<div class="col-md-12" style="text-align: center;">
						<?php  if(is_user_logged_in()): ?>
							<?php 
								global $current_user;
		     					get_currentuserinfo();
		     					$current_user = wp_get_current_user();
		     					$id_user = $current_user->id;
		                		$logout_redirect = (empty($wpcrl_redirect_settings['wpcrl_logout_redirect']) || $wpcrl_redirect_settings['wpcrl_logout_redirect'] == '-1') ? '' : $wpcrl_redirect_settings['wpcrl_logout_redirect'];
		     					if($current_user->ID == 1):
		     				?>
		     					<span> hello <?php echo ucfirst($current_user->user_login); ?></span>
		     					<?php else : ?>
		     					<span> hello  <?php echo ucfirst($namauser); ?></span> <br>
		     					<div>
		     						<span><a href="<?php echo wp_logout_url(get_permalink($logout_redirect)) ?>" style="color: red;">Logout</a></span>
		     					</div>
		     					<div class="row" style="margin-top: 20px;">
		     						<div class="col-md-6" style="text-align: right;">
		     							<a href="<?php echo home_url().'/profile?'.'id_user='.$id_user?>" class="button" style="background: #0733f3;">Lihat Profil</a>
		     						</div>
		     						<div class="col-md-6" style="text-align: left;">
		     							<a href="<?php echo home_url().'/history?'.'id_user='.$id_user?>" class="button" style="background: #0733f3;">History Seminar</a>
		     						</div>
		     					</div>
		     					<?php endif;?>
		     			<?php else : ?>
		     				<span style="font-size: 30px;display: inline-block;padding: 10px;">Daftar sekarang untuk bisa mengikuti kelas seminar yang ada!</span>
								<button type="button" class="btn btn-primary" id="btn-register">Register</button>
								<button type="button" class="btn btn-primary" id="btn-login">Login</button>
							
		     			<?php endif;?>
		     			</div>
					</div>
				</div>

	</div>
	<div id="content" class="site-content">
		<div class="container">
			