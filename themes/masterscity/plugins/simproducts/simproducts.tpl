<!-- BEGIN: MAIN -->
<div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-2" data-uk-grid="{gutter: 30}">
<!-- BEGIN: SIMPRD_ROW -->
<div>
    <div class="uk-panel uk-block-muted tp-panel-border">
        <div class="uk-panel-teaser uk-margin-bottom-remove uk-position-relative">
            <!-- IF {SIMPRD_ROW_MAVATAR.1} -->
            <img width="664" height="330" alt="{SIMPRD_ROW_SHORTTITLE}" src="{SIMPRD_ROW_MAVATAR.1|cot_mav_thumb($this, 315, 157, crop)}" width="315" height="157" />   
            <!-- ELSE -->
            <img width="664" height="330" alt="" src="themes/{PHP.theme}/img/no-img.png">
            <!-- ENDIF -->  
            <div class="tp-bg-bloc tp-padd tp-text-transform uk-text-center uk-hidden-small">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-medium-1-3 uk-text-truncate">
                        {PHP|cot_uk_icon("uk-icon-user tp-icon-color")} <span class="uk-text-contrast uk-text-small">{SIMPRD_ROW_OWNER_NICKNAME}</span>
                    </div>
                    <div class="uk-width-medium-1-3">
                    {PHP|cot_uk_icon("uk tp-icon-color")} <span class="uk-text-contrast uk-text-small">{SIMPRD_ROW_DATE_STAMP|cot_date('M', $this)}  {SIMPRD_ROW_DATE_STAMP|cot_date('j', $this)}</span>
                    </div>
                    <!-- IF {SIMPRD_ROW_COST} > 0 -->
                    <div class="uk-width-medium-1-3">
                         <span class="uk-text-contrast uk-text-small uk-text-bold">{SIMPRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
        <div class="uk-panel-body">
            <h4 class="uk-h3 uk-text-truncate uk-margin-bottom-remove uk-margin-top">
                <a class="ti-linck-black uk-text-bold" href="{SIMPRD_ROW_URL}">{SIMPRD_ROW_SHORTTITLE}</a>
            </h4>
            {SIMPRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 140, 'UTF-8')}...
        </div>
    </div>
</div>
<!-- END: SIMPRD_ROW -->
</div>
<!-- END: MAIN -->