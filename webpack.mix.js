const mix = require('laravel-mix');

/*
 |--------------------------------------------------------------------------
 | Mix Asset Management
 |--------------------------------------------------------------------------
 |
 | Mix provides a clean, fluent API for defining some Webpack build steps
 | for your Laravel applications. By default, we are compiling the CSS
 | file for the application as well as bundling up all the JS files.
 |
 */

mix
    .styles([
        'resources/views/site/css/styles.css'
    ], 'public/site/css/styles.css')
    .styles('node_modules/bootstrap/dist/css/bootstrap.css', 'public/site/css/bootstrap.css')
    .scripts('node_modules/jquery/dist/jquery.js', 'public/site/js/jquery.js')
    .scripts('node_modules/bootstrap/dist/js/bootstrap.bundle.js', 'public/site/js/bootstrap.js')
    .scripts('resources/views/site/js/script.js', 'public/site/js/script.js');