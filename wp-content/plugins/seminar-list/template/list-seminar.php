<div id="list-seminar">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12 col-row-seminar">
				<h1>list seminar</h1>
				<?php if ($pageposts): ?>
					<?php global $post; ?>
					<?php 
					$html = '<div ' . ( ! empty( $args['cssID'] ) ? 'id="' . sanitize_html_class( $args['cssID'] ) . '"' : '' ) . ' class="rpwe-block ' . ( ! empty( $args['css_class'] ) ? '' . sanitize_html_class( $args['css_class'] ) . '' : '' ) . '">'; ?>

					<?php $html .= '<ul class="rpwe-ul">'; ?>
						<?php foreach ($pageposts as $post): ?>
							<?php setup_postdata($post); ?>
							<?php
								$thumb_id = get_post_thumbnail_id(); // Get the featured image id.
								$img_url  = wp_get_attachment_url( $thumb_id ); // Get img URL.

								// Display the image url and crop using the resizer.
								$image    = rpwe_resize( $img_url, $args['thumb_width'], $args['thumb_height'], true );

								// Start recent posts markup.
								$html .= '<li class="rpwe-li rpwe-clearfix">';

									if ( $args['thumb'] ) :

										// Check if post has post thumbnail.
										if ( has_post_thumbnail() ) :
											$html .= '<a class="rpwe-img" href="' . esc_url( get_permalink() ) . '"  rel="bookmark">';
												if ( $image ) :
													$html .= '<img class="' . esc_attr( $args['thumb_align'] ) . ' rpwe-thumb" src="' . esc_url( $image ) . '" alt="' . esc_attr( get_the_title() ) . '">';
												else :
													$html .= get_the_post_thumbnail( get_the_ID(),
														array( $args['thumb_width'], $args['thumb_height'] ),
														array(
															'class' => $args['thumb_align'] . ' rpwe-thumb the-post-thumbnail',
															'alt'   => esc_attr( get_the_title() )
														)
													);
												endif;
											$html .= '</a>';

										// If no post thumbnail found, check if Get The Image plugin exist and display the image.
										elseif ( function_exists( 'get_the_image' ) ) :
											$html .= get_the_image( array(
												'height'        => (int) $args['thumb_height'],
												'width'         => (int) $args['thumb_width'],
												'image_class'   => esc_attr( $args['thumb_align'] ) . ' rpwe-thumb get-the-image',
												'image_scan'    => true,
												'echo'          => false,
												'default_image' => esc_url( $args['thumb_default'] )
											) );

										// Display default image.
										elseif ( ! empty( $args['thumb_default'] ) ) :
											$html .= sprintf( '<a class="rpwe-img" href="%1$s" rel="bookmark"><img class="%2$s rpwe-thumb rpwe-default-thumb" src="%3$s" alt="%4$s" width="%5$s" height="%6$s"></a>',
												esc_url( get_permalink() ),
												esc_attr( $args['thumb_align'] ),
												esc_url( $args['thumb_default'] ),
												esc_attr( get_the_title() ),
												(int) $args['thumb_width'],
												(int) $args['thumb_height']
											);

										endif;

									endif;

									$html .= '<h3 class="rpwe-title"><a href="' . esc_url( get_permalink() ) . '" title="' . sprintf( esc_attr__( 'Permalink to %s', 'recent-posts-widget-extended' ), the_title_attribute( 'echo=0' ) ) . '" rel="bookmark">' . esc_attr( get_the_title() ) . '</a></h3>';

										$html .='
											<div class="blok-tempat">
												<span class="tempat-lokasi"><i class="fas fa-map-marker-alt"> '.get_field('tempat').'</i></span>
											</div>
											<div class="date_sm">
												<span><i class="far fa-calendar-alt"> '.get_field('date').'</i></span>
											</div>
											<div class="waktu_sm">
												<span><i class="far fa-clock"> '.get_field('waktu_mulai').' - '.get_field('waktu_selesai').'</i></span>
											</div>

										';


								$html .= '</li>';


							?>
						<?php endforeach;?>
					<?php $html .= '</ul>';?>
				<?php endif; ?>
				<?php $html .= '</div>';?>

				<?php echo $html;?>
			</div>
		</div>
	</div>
</div>