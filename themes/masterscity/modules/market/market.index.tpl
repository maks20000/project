<!-- BEGIN: MARKET -->
<div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-3 uk-margin-large-top uk-margin-large-bottom" data-uk-grid="{gutter: 30}">
    <!-- BEGIN: PRD_ROWS -->
    <div>
        <div class="uk-panel tp-card-default tp-card-hover">
            <div class="uk-card-media-top">
                <!-- IF {PRD_ROW_MAVATAR.1} -->
                <div class="uk-margin-bottom-remove">
                    <img width="500" height="350" alt="{PRD_ROW_SHORTTITLE}" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 500, 350, crop)}" />
                </div>
                <!-- ELSE -->
                <img width="500" height="350" alt="" src="themes/{PHP.theme}/img/no-img.png">
                <!-- ENDIF -->
            </div>
            <div class="tp-card-body">
                <h3 class="tp-card-title">{PRD_ROW_SHORTTITLE}</h3>
                <a class="uk-text-success tp-text-transform" href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a>
                {PRD_ROW_TEXT|cot_string_truncate($this, 140, true, false, '...')}
                <div class="uk-grid uk-margin-top" data-uk-grid-margin>
                    <div class="uk-width-medium-1-2 uk-text-truncate uk-text-center-small">
                        <span class="uk-badge uk-badge-warning">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</span>
                    </div>
                    <div class="uk-width-medium-1-2 uk-text-center-small">
                        <a class="uk-button uk-button-success" href="{PRD_ROW_URL}">Подробнее</a>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- END: PRD_ROWS -->
</div>
<!-- END: MARKET -->