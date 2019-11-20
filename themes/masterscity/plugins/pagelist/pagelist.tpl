<!-- BEGIN: MAIN -->

<!-- BEGIN: PAGE_ROW -->
<li>
<div class="uk-grid" data-uk-grid-margin="">
    <div class="uk-width-2-6">
        <!-- IF {PAGE_ROW_MAVATAR.1} -->    
        <img alt="{PAGE_ROW_SHORTTITLE}" src="{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 120, 80, crop)}" width="120" height="80" />
        <!-- ELSE -->
        <img alt="" src="themes/{PHP.theme}/img/no-img.png">
        <!-- ENDIF -->
    </div>
    <div class="uk-width-4-6">
        <h4 class="uk-text-truncate uk-margin-bottom-remove"><a title="{PAGE_ROW_SHORTTITLE}" href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a></h4>
        <div class="uk-margin-top-remove">
            
            <!-- {PAGE_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 100, 'UTF-8')}... -->
        
        <span class="uk-text-small uk-text-right uk-text-bold">{PAGE_ROW_DATE_STAMP|cot_date('j M Y', $this)}</span>
        </div>
    </div>
</div>
</li>
<!-- END: PAGE_ROW -->

<!-- END: MAIN -->   
