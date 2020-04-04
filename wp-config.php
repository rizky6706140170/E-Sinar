<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'esinar' );

/** MySQL database username */
define( 'DB_USER', 'root' );

/** MySQL database password */
define( 'DB_PASSWORD', '' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '+DSiFvo%Z0V>2$s? 2K+lo|!=?6j-r-d?)EP/u:T}*Bpa^jUhpE[`6&:_M!v^lx)' );
define( 'SECURE_AUTH_KEY',  'K0xs/f]VQZ-~A#~GiY2:G5]Y8=~vz{5rGdj*vn=0x.tIQNC$s(AV3%E/~MCI0g.`' );
define( 'LOGGED_IN_KEY',    '+i9seg^n5wgT_9dq$FfT5ddky3%8)}Sb+k{ZMh|M{dj:IEB9O!&gD>1Bmi8P[;tW' );
define( 'NONCE_KEY',        '-qGohv#2m]S_u<v{NgwRz`P7s?8qyYar|:0HCcn-e$Tf]EwGnKF)rV$2f4$0dKpX' );
define( 'AUTH_SALT',        '_:&ayR~}lqr Yek2KMRui1^brihnU_+9rpn,#&,WWr)Y.7@nYh8J#N,}Bji1V}p7' );
define( 'SECURE_AUTH_SALT', '4vKWlY<Eb 9x_p74v-o!_.ocbf)/S~,BJ!$#j1FN7*W-FG)adzu8P8S[=74m,t~l' );
define( 'LOGGED_IN_SALT',   'hjCC{l03Zw&A[NC?2#D}w*2D:W>s/JF/TH,q3>Zyn4H% Xi,!Nzuz.fDG$dat+3P' );
define( 'NONCE_SALT',       ':QsQFjh/!Zm#A?s{4lU-XLlYW8VM/]7 ?P(yA3wu*{W& D>Nux^7]#i{>e}~U^i~' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
