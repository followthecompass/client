<?php

/**
 * Add filter to change locale
 */
add_filter( 'pll_custom_flag', 'pll_custom_flag', 10, 2 );

function pll_custom_flag( $flag, $code ) {
    $flag['url']    = "https://followthecompass.ru/wp-content/themes/ftc/polylang/{$code}.svg";
    $flag['width']  = 36;
    $flag['height'] = 36;
    return $flag;
}
