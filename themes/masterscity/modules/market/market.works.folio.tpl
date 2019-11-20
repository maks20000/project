<!-- BEGIN: MARKET -->
<div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-3 uk-margin-large-bottom" data-uk-grid="{gutter: 30}">
<!-- BEGIN: PRD_ROWS -->
<div>
    <div class="uk-panel uk-panel-box tp-panel-border">
        <div class="uk-panel-teaser uk-margin-bottom-remove uk-position-relative">
            
            <figure class="uk-overlay uk-overlay-hover">
            <!-- IF {PRD_ROW_MAVATAR.1} -->
            <img width="355" height="176" alt="{PRD_ROW_SHORTTITLE}" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 355, 176, crop)}" />   
            <!-- ELSE -->
            <img width="664" height="330" alt="" src="themes/{PHP.theme}/img/no-img.png">
            <!-- ENDIF -->    
            <figcaption class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                <h5 class="uk-text-truncate uk-margin-bottom-remove uk-text-bold">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</h5>
                <b class="uk-h6 uk-text-muted">{PRD_ROW_CATTITLE}</b>
            </figcaption>
            </figure>
            
            <div class="tp-bg-bloc tp-padd tp-text-transform uk-hidden-small uk-text-center">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-medium-1-3 uk-text-truncate">
                        <i class="uk-icon-user tp-icon-color"></i> <span class="uk-text-contrast uk-text-small">{PRD_ROW_OWNER_NICKNAME}</span>
                    </div>
                    <div class="uk-width-medium-1-3">
                        <i class="uk tp-icon-color"></i> <span class="uk-text-contrast uk-text-small">{PRD_ROW_DATE_STAMP|cot_date('M', $this)}  {PRD_ROW_DATE_STAMP|cot_date('j', $this)}</span>
                    </div>
                    <!-- IF {PRD_ROW_COST} > 0 -->
                    <div class="uk-width-medium-1-3">
                         <span class="uk-text-contrast uk-text-small uk-text-bold">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
                    </div>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
        <div class="tp-panel-body">
            <h4 class="uk-h3 uk-text-truncate uk-margin-bottom-remove uk-margin-top">
                <a class="ti-linck-black uk-text-bold" href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a>
            </h4>
            {PRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 160, 'UTF-8')}...
        </div>
    </div>
</div>
<!-- END: PRD_ROWS -->
</div>
<!-- END: MARKET -->