<!-- BEGIN: MAIN -->
<div class="uk-text-contrast uk-text-center uk-flex uk-flex-center uk-flex-middle" data-uk-parallax="{bg: '-200'}" style="min-height: 250px; background-image: url('themes/{PHP.theme}/img/tp-header-top.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-3">
        <form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" class="uk-form" method="get">
            <input type="hidden" name="e" value="search" />				
            {PLUGIN_SEARCH_TEXT} 
	</form>
    </div>
</div>

<div class="uk-container uk-container-center uk-margin-large-top">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <!-- BEGIN: RESULTS -->
    <!-- BEGIN: PAGES -->
    <div class="tp-box">    
        <div class="tp-box-header tp-with-border">
            {PHP.L.Pages|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
        </div>
        <ul class="uk-list uk-list-line">
            <!-- BEGIN: ITEM -->
            <li class="uk-panel-body">
                {PLUGIN_PR_TITLE}
                <div class="uk-margin-top-remove">
                {PLUGIN_PR_TEXT}
                </div>
            </li>
            <!-- END: ITEM -->
        </ul>
    </div>
    <!-- END: PAGES -->
    
    
    <!-- BEGIN: FORUMS -->
    <div class="tp-box">    
        <div class="tp-box-header tp-with-border">
            {PHP.L.Forums|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
        </div>
        <ul class="uk-list uk-list-line">
            <!-- BEGIN: ITEM -->
            <li class="uk-panel-body">
                {PLUGIN_FR_TITLE}
                <!-- IF {PLUGIN_FR_TEXT} -->
                <div class="uk-margin-top-remove">
                {PLUGIN_FR_TEXT}
                </div>
                <!-- ENDIF -->
            </li>
            <!-- END: ITEM -->
        </ul>
    </div>
    <!-- END: FORUMS -->
    
    <!-- BEGIN: FOLIO -->
    <div class="tp-box">    
        <div class="tp-box-header tp-with-border">
            {PHP.L.folio|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
        </div>
        <ul class="uk-list uk-list-line">
            <!-- BEGIN: ITEM -->
            <li class="uk-panel-body">
                {PLUGIN_FOLIORES_TITLE}
                <!-- IF {PLUGIN_FOLIORES_TEXT} -->
                <!-- IF {PLUGIN_FOLIORES_COST} > 0 -->
                <span class="uk-badge uk-badge-success uk-float-right">{PLUGIN_FOLIORES_COST} {PHP.cfg.payments.valuta}</span>
                <!-- ENDIF -->
                <div class="uk-margin-top-remove">
                {PLUGIN_FOLIORES_TEXT}
                </div>
                <!-- ENDIF -->
            </li>
            <!-- END: ITEM -->
        </ul>
    </div>
    <!-- END: FOLIO -->
    
    <!-- BEGIN: MARKET -->
    <div class="tp-box">    
        <div class="tp-box-header tp-with-border">
            {PHP.L.market|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
        </div>
        <ul class="uk-list uk-list-line">
            <!-- BEGIN: ITEM -->
            <li class="uk-panel-body">
                {PLUGIN_MARKETRES_TITLE}
                <!-- IF {PLUGIN_MARKETRES_COST} > 0 -->
                <span class="uk-badge uk-badge-success uk-float-right">{PLUGIN_MARKETRES_COST} {PHP.cfg.payments.valuta}</span>
                <!-- ENDIF -->
                <div class="uk-margin-top-remove">
                {PLUGIN_MARKETRES_TEXT}
                </div>
            </li>
            <!-- END: ITEM -->
        </ul>
    </div>
    <!-- END: MARKET -->
    
    <!-- BEGIN: PROJECTS -->
    <div class="tp-box">    
        <div class="tp-box-header tp-with-border">
             {PHP.L.projects_projects|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
        </div>
        <ul class="uk-list uk-list-line">
            <!-- BEGIN: ITEM -->
            <li class="uk-panel-body">
                {PLUGIN_PROJECTSRES_TITLE}
                <!-- IF {PLUGIN_PROJECTSRES_COST} > 0 -->
                <span class="uk-badge uk-badge-success uk-float-right">{PLUGIN_PROJECTSRES_COST} {PHP.cfg.payments.valuta}</span>
                <!-- ENDIF -->
                <div class="uk-margin-top-remove">
                {PLUGIN_PROJECTSRES_TEXT}
                </div>
            </li>
            <!-- END: ITEM -->
        </ul>
    </div>
    <!-- END: PROJECTS -->
    
    <!-- END: RESULTS -->
    <ul class="uk-pagination">
        {PLUGIN_PAGENAV}
    </ul>
</div>
<!-- END: MAIN -->
