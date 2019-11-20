<!-- BEGIN: MAIN -->
<!-- BEGIN: PAGE_ROW -->
<div class="uk-grid" data-uk-grid-margin="">
    <div class="uk-width-2-6">
        <!-- IF {PAGE_ROW_MAVATAR.1} -->    
        <img alt="{PAGE_ROW_SHORTTITLE}" src="{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 62, 41, crop)}" width="62" height="41" />
        <!-- ELSE -->
        <img alt="" src="themes/{PHP.theme}/img/no-img.png">
        <!-- ENDIF -->
    </div>
    <div class="uk-width-4-6 tp-lincks">
        <a title="{PAGE_ROW_SHORTTITLE}" href="{PAGE_ROW_URL}">{PAGE_ROW_SHORTTITLE}</a>
        <br />
        <span class="uk-text-small tp-color">{PAGE_ROW_DATE_STAMP|cot_date('j M Y', $this)}</span>
    </div>
</div>
<!-- END: PAGE_ROW -->

<!-- END: MAIN -->