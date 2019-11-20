<?php
/* ====================
[BEGIN_COT_THEME]
Name=masterscity ver. 1
Schemes=default:Default
Code=masterscity
[END_COT_THEME]
==================== */

/**
 * Cotonti Model Theme
 * @Site https://mydomain.com/
 * @package Cotonti
 * @version 0.9.19 FL 2.7.1
 * @author XyZ
 * @copyright Copyright (c) Cotonti Team 2016
 * @license https://mydomain.com/license
 */

defined('COT_CODE') or die('Wrong URL');
$R['input_checkbox'] = '<input type="checkbox" id="{$name}_{$value}" name="{$name}" value="{$value}"{$checked}{$attrs} /><label for="{$name}_{$value}">{$title}</label>';
$R['code_title_page_num'] = ' (' . $L['Page'] . ' {$num})';
$R['link_pagenav_current'] = '<li class="uk-active"><span>{$num}</span></li>';
//$R['link_pagenav_first'] = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_first'].'</a></li>';
$R['link_pagenav_gap'] = '<li cllass="uk-disabled"><span>...</span></li>';
//$R['link_pagenav_last'] = '<li><a href="{$url}"{$event}{$rel}>'.$L['pagenav_last'].'</a></li>';
$R['link_pagenav_main'] = '<li><a href="{$url}"{$event}{$rel}>{$num}</a></li>';
$R['link_pagenav_next'] = '<li class="uk-pagination-next"><a href="{$url}"{$event}{$rel}><i class="uk-icon-chevron-right"></i></a></li>';
$R['link_pagenav_prev'] = '<li class="uk-pagination-previous"><a href="{$url}"{$event}{$rel}><i class="uk-icon-chevron-left"></i></a></li>';
$R['input'] = '<li class="uk-active"><span><a href="{$url}"{$event}{$rel}>{$num}</a></span></li>';
$R['input type'] = '<input type="checkbox" name="{$name}" value="">
  <label>{$title}</label>
  
    {$options}
  </ul>{$error}'; 

/* $R['input'] = '<li class="uk-active"><span><a href="{$url}"{$event}{$rel}>{$num}</a></span></li>';
$R['input_checkbox'] = '<ul class="uk-list uk-list-striped"><label><input name="{$name}" type="checkbox" value="{$value}"{$checked}{$attrs}> {$title}</label>..</ul>'; */
/* $R['input_checkbox'] = '<ul class="uk-list uk-list-striped"><label><input name="{$name}" type="checkbox" value="{$value}"{$checked}{$attrs}> {$title}</label>..</ul>'; */
/* $R['input_checkbox'] = '<ul class="uk-list uk-list-striped"><label><input name="{$name}" type="checkbox" value="{$value}"{$checked}{$attrs}> {$title}</label>..</ul>';
 */
$R['input_text'] = '<input class="uk-width-1-1 uk-form-large" type="text" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_password'] = '<input class="uk-width-1-1 uk-form-large" type="password" name="{$name}" value="{$value}" {$attrs} />{$error}';
$R['input_select'] = '<select class="uk-width-1-1 uk-form-large" name="{$name}" {$attrs}>{$options}</select>{$error}';
$R['input_location'] = '<div class="uk-grid" data-uk-grid-margin><div class="uk-width-medium-1-3 ">{$country}</div><div class="uk-width-medium-1-3">{$region}</div><div class="uk-width-medium-1-3">{$city}</div></div>';
$R['tags_input_editpage'] = '<input type="text" name="rtags" size="56" class="autotags uk-width-1-1 uk-form-large" value="{$tags}" />';
$R['tags_input_editpost'] = '<input type="text" name="rtags" size="56" class="autotags uk-width-1-1 uk-form-large" value="{$tags}" />';
$R['input_textarea'] = '<textarea class="uk-width-1-1" name="{$name}" rows="{$rows}" cols="{$cols}">{$value}</textarea>{$error}';#{$attrs}

$R['input_date_short'] = '<div class="uk-grid" data-uk-grid-margin><div class="uk-width-medium-1-3 ">{$day}</div><div class="uk-width-medium-1-3">{$month}</div><div class="uk-width-medium-1-3">{$year}</div></div>';

?>