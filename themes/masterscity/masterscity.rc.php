<?php
/**
 * JavaScript and CSS loader for news theme
 * @Site https://mydomain.com/
 * @package Cotonti
 * @version 0.9.19 FL 2.7.0
 * @author XyZ
 * @copyright Copyright (c) Cotonti Team 2016
 * @license https://mydomain.com/license
 */

defined('COT_CODE') or die('Wrong URL.');

cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/styles.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/animate.min.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/components/pace.min.js'); 

cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/fadeInScroll.jQuery.js'); 
 #Раскоментировать если хотите сделать эффект загрузки страниц сайта
#cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/css/materialize/css/materialize.css');
cot_rc_add_file($cfg['themes_dir'].'/'.$usr['theme'].'/js/aos/sass/aos.css');
cot_rc_link_footer('https://unpkg.com/scrollreveal');
cot_rc_link_footer($cfg['themes_dir'].'/'.$usr['theme'].'/js/custom.js');

if(function_exists("uk_com")){
    uk_com("uikit");
    uk_com("lightbox");
    uk_com("sticky");
    uk_com("tooltip");
    uk_com("grid");
    uk_com("slider");
    uk_com("scrollspy"); 
    uk_com("slideshow");
    uk_com("slidenav"); 
    uk_com("progress"); #Раскоментировать если включен модуль polls опросы на сайте
    uk_com("accordion");
    //uk_com("");
    //uk_com("");
    //uk_com("");
    //uk_com("");
    
    
}

function dd($v, $e = 0) {
    print "\r\n<pre>\r\n";
    print_r($v);
    print "\r\n</pre>\r\n";
    if ($e)
        exit;
}
function ul_transform($code) {
    $code = str_replace("<a", "<li><a", $code);
    $code = str_replace("</a>", "</a></li>", $code);
    $code = str_replace("<span", "<li><span", $code);
    $code = str_replace("</span>", "</span></li>", $code);
    $code = str_replace("</li>  /", "</li>", $code);
    return $code;
}
function users_code_grplist_item($code) {
    $code = str_replace("<a", "<label", $code);
    $code = str_replace("</a>", "</label>", $code);
    $code = str_replace("href", "for", $code);
    return $code;
}
function cot_uk_heading($h = 1, $text = "", $class = ""){
    if(!empty($class)){
      $cls = " class='{$class}'"; 
    }
    return "<h{$h}{$cls}>{$text}</h{$h}>";
}
function cot_theme_list() {
    global $cfg;
    $ts = cot_themes_info();
    $arr = array();
    foreach ($ts as $id => $t) {
        $arr[$id] = $t["Name"];
    }
    return $arr;
}
function cot_uk_link($href = "#", $text = "", $class = ""){
    if(!empty($class)){
      $cls = " class='{$class}'";
    }
    return "<a href='{$href}'{$cls}>{$text}</a>";
}
function cot_uk_link_data($href = "#", $class = "", $data_uk = ""){
    if(!empty($class)){
      $cls = " class='{$class}'";
    }
    return "<a href='{$href}'{$cls}{$data_uk}></a>";
}
function cot_uk_label($text = "", $class = ""){
    if(!empty($class)){
      $cls = " class='{$class}'";
      $colon = " :";   
    }
    return "<label {$cls}>{$text}{$colon}</label>";
}
function cot_uk_bold($text = "", $class = ""){
    if(!empty($class)){
      $cls = " class='{$class}'";;   
    }
    return "<b {$cls}>{$text}</b>";
}
function cot_uk_icon($class = ""){
    if(!empty($class)){
      $cls = " class='{$class}'";;   
    }
    return "<i {$cls}></i>";
}
function cot_material_select(){
    cot_rc_embed_footer("
        $(document).ready(function () {
        $('select').material_select();
        });
    
        var slider = document.getElementById('');
        noUiSlider.create(slider, {
            start: [20, 80],
            connect: true,
            step: 1,
            range: {
                'min': 0,
                'max': 100
            },
            format: wNumb({
                decimals: 0
            })
        });
    ");
}
function theme_log($c, $m) {
    if (!is_dir("./datas/logs")) {
        mkdir("./datas/logs/", 0777);
        theme_log($c, $m);
    } else {
        $file = "./datas/logs/{$m}.log";
        if (!file_exists("./datas/logs/{$m}.log")) {
            $myfile = fopen($file, "w");
            fwrite($myfile, time() . "|");
            fclose($myfile);
        } else {
            $current = file_get_contents($file);
            $items = explode("|", substr($current, 0, -1));
            $c = count($items);
            $n = $items[$c - 1];
            $t = time() - $n;
            /* $ed = 60 * 60 * 24 * 7; */
            $ed = 60 * 60 * 24 * 7;
            if ($t <= $ed && $c <= 2) {
                return false;
            } elseif ($c <= 1) {
                $current .= time() . "|";
                file_put_contents($file, $current);
            } else {
                return true;
            }
            return false;
        }
    }
}