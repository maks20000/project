<!-- BEGIN: MAIN -->

<!-- ENDIF -->
<div class="uk-container uk-container-center uk-margin-top">
    <ul class="uk-breadcrumb">
    {BREADCRUMBS|ul_transform($this)}
    </ul>
</div>
<div class="uk-block uk-block-muted">
<div class="uk-container uk-container-center uk-margin-top">
<div class="uk-grid" data-uk-grid-margin>
    <div class="uk-width-medium-3-4">
        <!-- BEGIN: OFFER_ROWS -->
        <div class="tp-box">
        <div class="uk-panel-body">
        <div class="tp-block-background-white uk-margin-bottom tp-padding-small uk-hidden-small<!-- IF {OFFER_ROW_PROJECT_ISBOLD} --> tp-prjbold<!-- ENDIF --> <!-- IF {OFFER_ROW_PROJECT_ISTOP} --> tp-prjtop<!-- ENDIF -->">
            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-medium-1-2">
                    <div class="uk-grid">
                        <div class="uk-width-medium-1-1">
                            <h4 class="uk-margin-small-top uk-text-truncate"><a href="{OFFER_ROW_PROJECT_URL}">{OFFER_ROW_PROJECT_SHORTTITLE}</a></h4>
                        </div>
                    </div>
                </div>
                <div class="uk-width-medium-1-2">
                    <div class="uk-grid">
                        <div class="uk-width-medium-1-4">
                            {OFFER_ROW_PROJECT_OWNER_NAME|cot_uk_heading(5, "$this", "uk-text-muted uk-text-truncate uk-margin-small-top")}
                        </div>
                        <div class="uk-width-medium-1-4 uk-margin-small-top">
                            <span class="uk-text-muted tp-family-poiret uk-text-small uk-text-truncate">{OFFER_ROW_PROJECT_DATE_STAMP|cot_date('j M Y', $this)}</span>
                        </div>
                        <div class="uk-width-medium-1-4 uk-margin-small-top">
                            <!-- IF {OFFER_ROW_PROJECT_COST} > 0 -->
                            <span class="uk-text-bold uk-text-small uk-text-truncate">{OFFER_ROW_PROJECT_COST} {PHP.cfg.payments.valuta}</span>
                            <!-- ELSE -->
                            <span class="uk-text-bold uk-text-small uk-text-truncate">{PHP.L.Agreed}</span>
                            <!-- ENDIF -->
                        </div>
                        <div class="uk-width-medium-1-4">
                            <a class="uk-button uk-button-primary uk-button-mini uk-margin-small-top uk-width-1-1" href="{OFFER_ROW_PROJECT_OFFERS_ADDOFFER_URL}">{PHP.L.Reply}</a>
                        </div>
                    </div>
                </div>
            </div>
            <hr />
            {OFFER_ROW_PROJECT_SHORTTEXT}
            <hr />
            <div class="uk-grid uk-text-small" data-uk-grid-margin>
                <div class="uk-width-medium-1-3 uk-text-truncate">
                    {PHP.L.Date}: {OFFER_ROW_DATE}
                    <!-- IF {OFFER_ROW_CHOISE} -->
                    <!-- IF {OFFER_ROW_CHOISE} == 'performer' -->
                    <p class="uk-margin-top"><span class="uk-badge uk-badge-success">{PHP.L.offers_vibran_ispolnitel}</span></p>
                    <!-- ELSE -->
                    <p class="uk-margin-top"><span class="uk-badge uk-badge-warning">{PHP.L.offers_otkazali}</span></p>
                    <!-- ENDIF -->
                    <!-- ELSE -->
                    <p class="uk-margin-top"><span class="uk-badge">{PHP.L.offers_useroffers_none}</span></p>
                    <!-- ENDIF -->    
                </div>
                <div class="uk-width-medium-1-3 uk-text-break">
                    {OFFER_ROW_TEXT}
                </div>
                
                <div class="uk-width-medium-1-3 uk-text-truncate">
                    <p class="uk-text-success">
                    <!-- IF {OFFER_ROW_COSTMAX} > {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 -->
                    {PHP.L.offers_budget}: {PHP.L.offers_ot} {OFFER_ROW_COSTMIN}
                    {PHP.L.offers_do} {OFFER_ROW_COSTMAX} {PHP.cfg.payments.valuta}
                    <!-- ENDIF -->
                    <!-- IF {OFFER_ROW_COSTMAX} == {OFFER_ROW_COSTMIN} AND {OFFER_ROW_COSTMIN} != 0 OR {OFFER_ROW_COSTMAX} == 0 AND {OFFER_ROW_COSTMIN} != 0 -->
                    {PHP.L.offers_budget}: {OFFER_ROW_COSTMIN} {PHP.cfg.payments.valuta}
                    <!-- ENDIF -->
                    </p>
                    <p class="uk-text-warning">
                    <!-- IF {OFFER_ROW_TIMEMAX} > {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 -->
                    {PHP.L.offers_sroki}: {PHP.L.offers_ot} 
                    {OFFER_ROW_TIMEMIN} {PHP.L.offers_do} {OFFER_ROW_TIMEMAX} {OFFER_ROW_TIMETYPE}
                    <!-- ENDIF -->
                    <!-- IF {OFFER_ROW_TIMEMAX} == {OFFER_ROW_TIMEMIN} AND {OFFER_ROW_TIMEMIN} != 0 OR {OFFER_ROW_TIMEMAX} == 0 AND {OFFER_ROW_TIMEMIN} != 0 -->
                    {PHP.L.offers_sroki}: {OFFER_ROW_TIMEMIN} {OFFER_ROW_TIMETYPE}
                    <!-- ENDIF -->
                    </p>
                </div>
                <!-- ENDIF -->
            </div>
            <hr />  
            <div class="uk-grid uk-text-small" data-uk-grid-margin>
            <!-- IF {OFFER_ROW_PROJECT_TYPE} -->
            <div class="uk-width-medium-1-2 uk-text-truncate">
            {OFFER_ROW_PROJECT_TYPE} / 
            </div>
            <!-- ENDIF -->
            <div class="uk-width-medium-1-2 uk-text-truncate">
            <a href="{OFFER_ROW_PROJECT_CATURL}">{OFFER_ROW_PROJECT_CATTITLE}</a>
            </div>
            </div> 
        </div>
        </div>
        </div>
        <!-- END: OFFER_ROWS -->
        <ul class="uk-pagination">{PAGENAV_PAGES}</ul>
    </div>

    <div class="uk-width-medium-1-4">
        <div class="uk tp-block-background-white tp-padding-small">
            <ul class="uk-tab uk-tab-right tp-tab">
                <li<!-- IF !{PHP.choise} --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('projects', 'm=useroffers')}">{PHP.L.All}</a></li>
                <li<!-- IF {PHP.choise} == 'none' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('projects', 'm=useroffers&choise=none')}">{PHP.L.offers_useroffers_none}</a></li>
                <li<!-- IF {PHP.choise} == 'performer' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('projects', 'm=useroffers&choise=performer')}">{PHP.L.offers_useroffers_performer}</a></li>
                <li<!-- IF {PHP.choise} == 'refuse' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('projects', 'm=useroffers&choise=refuse')}">{PHP.L.offers_useroffers_refuse}</a></li>
            </ul>
        </div>
    </div>

</div>
</div>
</div>
<!-- END: MAIN -->


