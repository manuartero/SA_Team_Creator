<?php
/** 
 * Gets the jpeg image from http://soul-arena.com/game/images/characters/{num}/large.jpg 
 *
 * Stack Overflow: http://stackoverflow.com/questions/724391/saving-image-from-php-url-using-php
 *
 * Created on july 2013
 */

// allow url fopen flag must be TRUE
ini_set("allow_url_fopen", true);

// num €[1, 160]
$num = 1;
$max_num = 160;

$destination_folder = dirname(__FILE__)."/images";
$url = "";
$img = "";
$file = NULL;

while ($num <= $max_num){
    // complete URL - img
    $url = "http://soul-arena.com/game/images/characters/$num/large.jpg";
    $img = "$destination_folder"."/sa_$num.jpg";  
    
    // get and save
    echo "</br> Trying to copy $url into $img </br>";
    file_put_contents($img, file_get_contents($url));

    // next image
    $num++;
}

?>