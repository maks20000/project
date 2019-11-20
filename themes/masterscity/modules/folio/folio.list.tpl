<!-- BEGIN: MAIN -->
<div style="min-height:300px; position: relative; background-image: url('themes/{PHP.theme}/img/tp-bg-folio.png'); background-attachment: fixed;">
    <div class="uk-margin uk-container uk-container-center">
    <div class="uk-margin-large-top">
    
    <ul class="uk-tab">
        <li><a class="uk-text-contrast uk-text-bold" href="{PHP|cot_url('folio')}">{PHP.L.All}</a></li>
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <li><a class="uk-text-contrast uk-text-bold" data-uk-toggle="{target:'#Location'}">{PHP.L.Location}</a></li>
        <!-- ENDIF -->
    </ul>
    
    <div class="uk-panel uk-panel-box uk-margin-bottom">
        <div class="tp-panel-body">
            <form class="uk-form uk-form-stacked" action="{SEARCH_ACTION_URL}" method="get">
            <input type="hidden" name="c" value="{PHP.c}" />
            <input type="hidden" name="type" value="{PHP.type}" />
            <input type="hidden" name="e" value="folio" />
            <input type="hidden" name="l" value="{PHP.lang}" />
            <!-- IF {PHP.cot_plugins_active.locationselector} -->
            <div id="Location" class="uk-hidden">
                <div class="uk-form-row uk-margin-bottom">
                    <div class="uk-form-controls">
                        {SEARCH_LOCATION}
                    </div>
                </div>
            </div>
            <!-- ENDIF -->
            <div class="uk-grid" data-uk-grid-margin="">    
                <div class="uk-width-medium-5-6">
                    <div class="uk-grid" data-uk-grid-margin="">
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-form-label">{PHP.L.Search}</label>
                                <div class="uk-form-controls">
                                    {SEARCH_SQ}
                                </div>
                            </div>
                        </div>
                        <!-- IF {PHP.cot_plugins_active.catbox} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-form-label">{PHP.L.Category}</label>
                                <div class="uk-form-controls">
                                    {PHP.c|cot_catbox('folio', $this, 'rcat', '0', '', 'uk-column-medium-1-2')}
                                </div>
                            </div>
                        </div>
                        <!-- ENDIF -->
                    </div>
                </div>
                <div class="uk-width-medium-1-6">
                    <div style="margin-top: 33px;">
                    <button type="submit" name="search" class="uk-button uk-button-large uk-button-success uk-width-1-1">{PHP.L.Search}</button>
                    </div>
                </div> 
            </div>
            </form>
        </div>
    </div>
    </div>
        <div class="uk-grid uk-margin-bottom" data-uk-grid-margin="">
            <div class="uk-width-medium-3-4">
                <h1 class="uk-text-contrast uk-h2"><!-- IF {PHP.c} -->{CATTITLE}<!-- ELSE -->{PHP.L.folio}<!-- ENDIF -->
                </h1>
                <!-- IF {PHP.env.ext} == 'folio' AND {PHP.c} == '' --> 
                <p class="uk-text-contrast uk-text-large">   
                {PHP.L.Folio_description_list}
                </p>
                <!-- ENDIF -->
                <!-- IF {CATDESC} -->
                <p class="uk-text-contrast uk-text-large">
                    {CATDESC}
                </p>
                <!-- ENDIF -->
            </div>
            <div class="uk-width-medium-1-4 uk-margin-small-top">
                <!-- IF {PHP.usr.id} == 0 -->
                <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-button-large uk-width-1-1" data-uk-modal="" href="#register">{PHP.L.projects_add_to_catalog}</a>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.auth_write} -->
                <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-button-large uk-width-1-1" href="{PHP|cot_url('folio', 'm=add')}">{PHP.L.folio_add_work}</a>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>

<div class="uk-container uk-container-center uk-margin-large-bottom uk-margin-large-top">
    <ul class="tp-list uk-list uk-column-1-1 uk-column-medium-1-3" data-uk-nav="{multiple:true}">
        {CATALOG}
    </ul>
</div>
    
<div class="uk-block uk-block-muted">
    <div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-4" data-uk-grid="">
        <!-- BEGIN: PRD_ROWS -->
        <div>
            <figure class="uk-overlay uk-overlay-hover">
                <!-- IF {PRD_ROW_MAVATAR.1} -->
                <img class="uk-overlay-scale" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 476, 242, crop)}" width="476" height="242" alt="">
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

    <!-- IF {PAGENAV_COUNT} > 0 -->
    <div class="uk-container uk-container-center">
    <ul class="uk-pagination">
        {PAGENAV_PAGES}
    </ul>
    </div>
    <!-- ELSE -->
    <div class="uk-container uk-container-center">
        <div class="uk-alert">{PHP.L.folio_notfound}</div>
    </div>
    <!-- ENDIF -->
    <!-- IF {PHP.usr.auth_write} -->
    <a class="tp-add tp-add-folio" href="{PHP|cot_url('folio', 'm=add')}"><i class="uk-icon-pencil"></i></a>
    <!-- ENDIF -->
</div>
<!-- END: MAIN -->