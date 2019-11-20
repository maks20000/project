<!-- BEGIN: FOLIO -->
<div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-3 uk-margin-large-bottom" data-uk-grid="{gutter: 10}">
<!-- BEGIN: PRD_ROWS -->
<div>
    <figure class="uk-overlay uk-overlay-hover">
        <!-- IF {PRD_ROW_MAVATAR.1} -->
        <img class="uk-overlay-scale" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 370, 188, crop)}" width="370" height="188" alt="">
        <!-- ELSE -->
        <img class="uk-overlay-scale" src="themes/{PHP.theme}/img/no-img.png" width="600" height="400" alt="">
        <!-- ENDIF -->
        <figcaption class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
            {PRD_ROW_SHORTTITLE|cot_uk_heading(5, "$this", "uk-text-truncate uk-margin-bottom-remove")}
            {PRD_ROW_CATTITLE|cot_uk_bold("$this", "uk-h6 uk-text-muted")}
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
</div>
<!-- END: FOLIO -->