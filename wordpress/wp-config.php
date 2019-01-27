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
define('DB_NAME', 'proyecto final');

/** MySQL database username */
define('DB_USER', 'root');

/** MySQL database password */
define('DB_PASSWORD', 'root');

/** MySQL hostname */
define('DB_HOST', 'localhost');

/** Database Charset to use in creating database tables. */
define('DB_CHARSET', 'utf8mb4');

/** The Database Collate type. Don't change this if in doubt. */
define('DB_COLLATE', '');

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define('AUTH_KEY',         '@(|h>ukRPY>fnfF%m=yJ`1&N9ExvNP8b[*CwTSQO[;e<qU4}OC?xp-l`<*O}awNk');
define('SECURE_AUTH_KEY',  '4&2B<cr?7O0l3JML=Cahf(%r~9SLS(YtI6El:Lns{.$-3aNT8g u9:^sO1vuIUF|');
define('LOGGED_IN_KEY',    '@0&6/Y~{L`P(*!uU|Bw)0L&)8?PG!kP>!/BM-^/K#8U3Y6Ic:vF^&1vH/$&5$HB.');
define('NONCE_KEY',        'I`u$=r]mNfAx9*#Hv.+td#[[[sOFHz^fjUWCGYC>M16BV)c+!zPVAm&,pX_.-`l4');
define('AUTH_SALT',        'Do6!moS:TZA{s*mg@4|n9I$L1k3.iU.X7*`Eq#A[/?AcLTVVQOT__L+$3{cOc^i}');
define('SECURE_AUTH_SALT', '.ocC5Do2c`;%.=SL9>*@QelU]tNVW#mWQUe7VC3.[f?t{]:&$}7Iyu6vmc|-pA D');
define('LOGGED_IN_SALT',   '?ls)CGLx{rVL[=0v%sw=,b(nNW {,fa:3F)cjDuc/K02WF;U%| b>FlMV(F0.{vZ');
define('NONCE_SALT',       'f5sgMdde#i}y?v(v(hAtjNC0s(bY>U,lN5P!_Mgj]9ZeW_Y-xMs:jPKrqMHREV(w');

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix  = 'mc_';

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
define('WP_DEBUG', true);

/* That's all, stop editing! Happy blogging. */

/** Absolute path to the WordPress directory. */
if ( !defined('ABSPATH') )
	define('ABSPATH', dirname(__FILE__) . '/');

/** Sets up WordPress vars and included files. */
require_once(ABSPATH . 'wp-settings.php');
