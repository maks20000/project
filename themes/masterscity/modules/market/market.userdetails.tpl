<!-- BEGIN: MAIN -->
<div class="uk-width-medium-1-1">
<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {RPD_ADDPRD_SHOWBUTTON} -->
<a class="uk-button uk-button-success" href="{PRD_ADDPRD_URL}">Добавить услугу</a>
<!-- ENDIF -->
<hr />
</div>
<!-- BEGIN: PRD_ROWS -->
<div class="uk-width-medium-1-3">
    <figure class="uk-overlay uk-overlay-hover">
        <!-- IF {PRD_ROW_MAVATAR.1} -->
        <img class="uk-overlay-scale" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 476, 242, crop)}" width="476" height="476" alt="" />
        <!-- ELSE -->
        <img class="uk-overlay-scale" src="themes/{PHP.theme}/img/no-img.png" width="600" height="400" alt="">
        <!-- ENDIF -->
        
        <figcaption class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
            <h5 class="uk-text-truncate uk-margin-bottom-remove">{PRD_ROW_SHORTTITLE}</h5>
            <!-- IF {PRD_ROW_COST}  > 0 -->
            <b class="uk-h6 uk-text-muted">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</b>
            <!-- ENDIF -->
            <div class="uk-position-relative">
                <div class="tp-block-linck-overlay uk-text-center">
                    <a href="{PRD_ROW_URL}" class="uk-icon-button uk-icon-link"></a>
                    <a href="{PRD_ROW_MAVATAR.1.FILE}" title="{PRD_ROW_SHORTTITLE}" class="uk-icon-button uk-icon-search" data-uk-lightbox="{group:'folio'}"></a>
                </div>
            </div>
        </figcaption>
        
    </figure>
</div>
<!-- END: PRD_ROWS -->
<!-- IF {PAGENAV_COUNT} > 0 -->	
<ul class="uk-pagination">{PAGENAV_PAGES}</ul>
<!-- ELSE -->
<div class="uk-width-medium-1-3">
    <div class="tp-panel-border tp-panel-box" data-uk-alert="">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
                <div class="uk-panel-body">
                    <i class="uk-icon-bell tp-icon-warning"></i>
                </div>
            </div>
            <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
                <a class="uk-alert-close uk-close" href=""></a>
                <div class="uk-panel-body">
                    {PHP.L.Warning|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                    <p class="uk-list uk-margin-top-remove">
                    {PHP.L.market_empty}
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>  
<!-- ENDIF -->
<!-- END: MAIN -->