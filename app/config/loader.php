<?php

use Phalcon\Loader;

$loader = new Loader();

/**
 * Register Namespaces
 */
$loader->registerNamespaces([
    'Common\Models' => APP_PATH . '/common/models/',
    'Common\Library' => APP_PATH . '/common/library/',
]);

/**
 * Register module classes
 */
$loader->registerClasses([
    'App\Frontend\Module' => APP_PATH . '/modules/frontend/Module.php',
    'App\Learn\Module' => APP_PATH . '/modules/learn/Module.php',
    'App\Cli\Module' => APP_PATH . '/modules/cli/Module.php'
]);

$loader->register();
