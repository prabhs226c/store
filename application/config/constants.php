<?php
defined('BASEPATH') or exit('No direct script access allowed');

/*
|--------------------------------------------------------------------------
| Display Debug backtrace
|--------------------------------------------------------------------------
|
| If set to TRUE, a backtrace will be displayed along with php errors. If
| error_reporting is disabled, the backtrace will not display, regardless
| of this setting
|
*/
defined('SHOW_DEBUG_BACKTRACE') or define('SHOW_DEBUG_BACKTRACE', TRUE);

/*
|--------------------------------------------------------------------------
| File and Directory Modes
|--------------------------------------------------------------------------
|
| These prefs are used when checking and setting modes when working
| with the file system.  The defaults are fine on servers with proper
| security, but you may wish (or even need) to change the values in
| certain environments (Apache running a separate process for each
| user, PHP under CGI with Apache suEXEC, etc.).  Octal values should
| always be used to set the mode correctly.
|
*/
defined('FILE_READ_MODE')  or define('FILE_READ_MODE', 0644);
defined('FILE_WRITE_MODE') or define('FILE_WRITE_MODE', 0666);
defined('DIR_READ_MODE')   or define('DIR_READ_MODE', 0755);
defined('DIR_WRITE_MODE')  or define('DIR_WRITE_MODE', 0755);

/*
|--------------------------------------------------------------------------
| File Stream Modes
|--------------------------------------------------------------------------
|
| These modes are used when working with fopen()/popen()
|
*/
defined('FOPEN_READ')                           or define('FOPEN_READ', 'rb');
defined('FOPEN_READ_WRITE')                     or define('FOPEN_READ_WRITE', 'r+b');
defined('FOPEN_WRITE_CREATE_DESTRUCTIVE')       or define('FOPEN_WRITE_CREATE_DESTRUCTIVE', 'wb'); // truncates existing file data, use with care
defined('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE')  or define('FOPEN_READ_WRITE_CREATE_DESTRUCTIVE', 'w+b'); // truncates existing file data, use with care
defined('FOPEN_WRITE_CREATE')                   or define('FOPEN_WRITE_CREATE', 'ab');
defined('FOPEN_READ_WRITE_CREATE')              or define('FOPEN_READ_WRITE_CREATE', 'a+b');
defined('FOPEN_WRITE_CREATE_STRICT')            or define('FOPEN_WRITE_CREATE_STRICT', 'xb');
defined('FOPEN_READ_WRITE_CREATE_STRICT')       or define('FOPEN_READ_WRITE_CREATE_STRICT', 'x+b');
date_default_timezone_set('Asia/kolkata');
define('DATE', date('Y-m-d'));
define('DATE_TIME', date('Y-m-d H:i:s'));

defined('NO_DATA')        or define('NO_DATA', 0); // no errors
defined('SUCCESS')          or define('SUCCESS', 1); // generic error
defined('INACTIVE_ACCOUNT')         or define('INACTIVE_ACCOUNT', 2); // configuration error
defined('EMAIL_EXIST')   or define('EMAIL_EXIST', 4); // file not found
defined('FAILURE')  or define('FAILURE', 5); // unknown class
defined('EXIT_UNKNOWN_METHOD') or define('EXIT_UNKNOWN_METHOD', 6); // unknown class member
defined('EXIT_USER_INPUT')     or define('EXIT_USER_INPUT', 7); // invalid user input
defined('EXIT_DATABASE')       or define('EXIT_DATABASE', 8); // database error
defined('EXIT__AUTO_MIN')      or define('EXIT__AUTO_MIN', 9); // lowest automatically-assigned error code
defined('EXIT__AUTO_MAX')      or define('EXIT__AUTO_MAX', 125); // highest automatically-assigned error code



define('DB_SERVER', 'localhost:3306');
define('DB_USER', 'root');
define('DB_PASS', 'prabhs226');
define('DB_DATABASE', 'delivery_eztakeout');
define('DOMAIN_URL', 'http://localhost/deliveryripple/');
define('DOMAIN_BASE_URL', $_SERVER['DOCUMENT_ROOT'] . '/deliveryripple/');
define('SITE_URL', DOMAIN_URL);
define('BASE_URL', $_SERVER['DOCUMENT_ROOT'] . '/deliveryripple/');
define('PHP_PATH', 'php');
define("ADMIN_INCLUDE_PATH", BASE_URL . 'include');


define('UPLOAD_PATH', DOMAIN_BASE_URL . 'upload/');
define('UPLOAD_URL', DOMAIN_URL . 'upload/');


define("TBL_PREFIX", "tbl_");
define("TBL_CUISINE", TBL_PREFIX . "cuisine");
define("TBL_CATEGORIES", TBL_PREFIX . "categories");
define("TBL_SUBCATEGORIES", TBL_PREFIX . "subcategories");
define("TBL_SIDES", TBL_PREFIX . "sides");
define("TBL_ADDON", TBL_PREFIX . "addon");
define("TBL_CITY", TBL_PREFIX . 'city');
define("TBL_STATE", TBL_PREFIX . 'state');
define("TBL_COUNTRY", TBL_PREFIX . 'country');
define("TBL_USERS", TBL_PREFIX . 'users');
define("TBL_DEVICE_TOKENS", TBL_PREFIX . 'device_token');
define("TBL_OWNERS", TBL_PREFIX . 'owner');
define("TBL_RESTAURANTS", TBL_PREFIX . 'restaurants');
define("TBL_ADDRESS", TBL_PREFIX . 'user_addresses');
define("TBL_ORDERS", TBL_PREFIX . 'orders');
define("TBL_ORDERDETAIL", TBL_PREFIX . 'order_details');
define("TBL_NOTIFICATIONS", TBL_PREFIX . 'notification');
define("TBL_TRANSACTION", TBL_PREFIX . 'transaction');
define("TBL_SETTINGS", TBL_PREFIX . 'settings');
define("TBL_EARNINGS", TBL_PREFIX . 'earnings');
define("TBL_ORDER_DRIVERS", TBL_PREFIX . 'driver_orders');
define("TBL_DRIVER_REVIEW", TBL_PREFIX . 'drivers_review');
define("TBL_RESTAURANT_REVIEW", TBL_PREFIX . 'restaurants_review');
define("TBL_COUPONS", TBL_PREFIX . 'coupons');
