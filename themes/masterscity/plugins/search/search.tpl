<!-- BEGIN: MAIN -->
<div class="uk-flex uk-flex-center uk-flex-middle" style="min-height: 230px; background-image: url('themes/{PHP.theme}/img/tp-header-bg3.jpg');" data-uk-parallax="{bg: '-100'}">
    <div class="uk-width-medium-1-2">
        <h1 class="tp-text-m uk-margin-bottom  uk-text-contrast tp-text-shadow uk-text-center">
            {PHP.L.Search} {PHP.cfg.maintitle}
        </h1>
        <hr class="uk-divider-icon uk-width-1-2" style="margin: auto;">
        <form id="search" name="search" action="{PLUGIN_SEARCH_ACTION}" method="get" class="uk-form">
            <input type="hidden" name="e" value="search" />
            <div class="uk-panel-box tp-card-default uk-margin-top">
                <div class="uk-grid" data-uk-grid-margin>
                    <div class="uk-width-medium-3-4 uk-padding-right-remove">
                        <div class="uk-form-row">
                            {PHP.L.plu_search_req|cot_uk_label("$this", "uk-form-label")}
                            <div class="uk-form-controls">
                                <input class="uk-form-large uk-width-1-1" type="text" name="sq" value="{PHP.sq|htmlspecialchars($this)}" />
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-4 uk-text-right uk-text-left-small">
                        <button class="uk-button uk-button-success uk-button-large uk-width-1-1" style="margin-top: 20px;" type="submit">{PHP.L.plu_search_key}</button>
                    </div>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="uk-block-muted tp-height">
    <div class="uk-container uk-container-center">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="uk-margin-large-top">
            <!-- BEGIN: RESULTS -->
            
            <!-- BEGIN: PROJECTS -->
			<div class="tp-box uk-margin-top">
			<h3 class="uk-margin-bottom uk-margin-top tp-text-transform uk-text-center uk-text-bold">Раздел: <span class="uk-text-success">{PHP.L.projects_projects}</span></h3>
            
            <hr class="uk-divider-icon uk-width-1-2" style="margin: auto;">    
            <div class="uk-panel-box tp-card-default uk-margin-top">
            
            <div class="uk-overflow-container">
                <table class="uk-table">
                    <tr>
                        <th>{PHP.L.plu_result}:</th>
                        <th>{PHP.L.projects_projects}</th>
                    </tr>
                    <!-- BEGIN: ITEM -->
                    <tr>
                        <td colspan="2" class="{PLUGIN_PROJECTSRES_ODDEVEN}">{PLUGIN_PROJECTSRES_TITLE}</td>
                    </tr>
                    <tr>
                        <td colspan="2" class="{PLUGIN_PROJECTSRES_ODDEVEN} uk-text-muted">{PLUGIN_PROJECTSRES_TEXT}</td>
                    </tr>
                    <tr>
                        <td class="{PLUGIN_PROJECTSRES_ODDEVEN}">
                            <p class="uk-text-small">{PHP.L.plu_last_date}: {PLUGIN_PROJECTSRES_TIME}</p>
                        </td>
                        <td class="{PLUGIN_PROJECTSRES_ODDEVEN} uk-text-right">
                            <p class="uk-text-small">{PHP.L.plu_section}: {PLUGIN_PROJECTSRES_CATEGORY}</p>
                        </td>
                    </tr>
                    <!-- END: ITEM -->
                </table>
            </div>
            </div>
			</div>
            <!-- END: PROJECTS -->
            
            
            <!-- BEGIN: MARKET -->
            {PHP.L.market|cot_uk_heading(3, "$this", "tp-text-m uk-margin-bottom tp-text-shadow uk-text-center")}
            <hr class="uk-divider-icon uk-width-1-2" style="margin: auto;">    
            <div class="uk-panel-box tp-card-default uk-margin-top">
                <div class="uk-overflow-container">
                <table class="uk-table">
                    <tr>
                        <th>{PHP.L.plu_result}</th>
                        <th>{PHP.L.market}</th>
                    </tr>
                    <!-- BEGIN: ITEM -->
                    <tr>
                        <td colspan="2" class="{PLUGIN_MARKETRES_ODDEVEN}">{PLUGIN_MARKETRES_TITLE}</td>
                    </tr>
                    <tr>
                        <td colspan="2" class="{PLUGIN_MARKETRES_ODDEVEN} uk-text-muted">{PLUGIN_MARKETRES_TEXT}</td>
                    </tr>
                    <tr>
                        <td class="{PLUGIN_MARKETRES_ODDEVEN}">
                            <p class="uk-text-small">{PHP.L.plu_last_date}: {PLUGIN_MARKETRES_TIME}</p>
                        </td>
                        <td class="{PLUGIN_MARKETRES_ODDEVEN} uk-text-right">
                            <p class="uk-text-small">{PHP.L.plu_section}: {PLUGIN_MARKETRES_CATEGORY}</p>
                        </td>
                    </tr>
                    <!-- END: ITEM -->
                </table>
                </div>
            </div>
            <!-- END: MARKET -->
            
            <!-- BEGIN: FOLIO -->
            {PHP.L.folio|cot_uk_heading(3, "$this", "tp-text-m uk-margin-bottom tp-text-shadow uk-text-center")}
            <hr class="uk-divider-icon uk-width-1-2" style="margin: auto;">    
            <div class="uk-panel-box tp-card-default uk-margin-top">
                <div class="uk-overflow-container">
                    <table class="uk-table">
                        <tr>
                            <th>{PHP.L.plu_result}</th>
                            <th>{PHP.L.folio}</th>
                        </tr>
                        <!-- BEGIN: ITEM -->
                        <tr>
                            <td colspan="2" class="{PLUGIN_FOLIORES_ODDEVEN}">{PLUGIN_FOLIORES_TITLE}</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="{PLUGIN_FOLIORES_ODDEVEN} uk-text-muted">{PLUGIN_FOLIORES_TEXT}</td>
                        </tr>
                        <tr>
                            <td class="{PLUGIN_FOLIORES_ODDEVEN}">
                                <p class="uk-text-small">{PHP.L.plu_last_date}: {PLUGIN_FOLIORES_TIME}</p>
                            </td>
                            <td class="{PLUGIN_FOLIORES_ODDEVEN} uk-text-right">
                                <p class="uk-text-small">{PHP.L.plu_section}: {PLUGIN_FOLIORES_CATEGORY}</p>
                            </td>
                        </tr>
                        <!-- END: ITEM -->
                    </table>
                </div>    
            </div>
            <!-- END: FOLIO -->
            
            <!-- BEGIN: PAGES -->
            {PHP.L.Pages|cot_uk_heading(3, "$this", "tp-text-m uk-margin-bottom tp-text-shadow uk-text-center")}
            <hr class="uk-divider-icon uk-width-1-2" style="margin: auto;">    
            <div class="uk-panel-box tp-card-default uk-margin-top">
                <div class="uk-overflow-container">
                    <table class="uk-table">
                        <tr>
                            <th>{PHP.L.plu_result}</th>
                            <th>{PHP.L.plu_tabs_pag}</th>
                        </tr>
                        <!-- BEGIN: ITEM -->
                        <tr>
                            <td colspan="2" class="{PLUGIN_PR_ODDEVEN}">{PLUGIN_PR_TITLE}</td>
                        </tr>
                        <tr>
                            <td colspan="2" class="{PLUGIN_PR_ODDEVEN} uk-text-muted">{PLUGIN_PR_TEXT}</td>
                        </tr>
                        <tr>
                            <td class="{PLUGIN_PR_ODDEVEN}">
                                <p class="uk-text-small">{PHP.L.plu_last_date}: {PLUGIN_PR_TIME}</p>
                            </td>
                            <td class="{PLUGIN_PR_ODDEVEN} uk-text-right">
                                <p class="uk-text-small">{PHP.L.plu_section}: {PLUGIN_PR_CATEGORY}</p>
                            </td>
                        </tr>
                        <!-- END: ITEM -->
                    </table>
                </div>
            </div>
            <!-- END: PAGES -->
            
            <!-- BEGIN: FORUMS -->
            {PHP.L.Forums|cot_uk_heading(3, "$this", "tp-text-m uk-margin-bottom tp-text-shadow uk-text-center")}
            <hr class="uk-divider-icon uk-width-1-2" style="margin: auto;">    
            <div class="uk-panel-box tp-card-default uk-margin-top">
                <div class="uk-overflow-container">
                    <table class="uk-table">
                        <tr>
                            <th>{PHP.L.plu_result}</th>
                            <th>{PHP.L.plu_tabs_frm}</th>
                        </tr>
                        <!-- BEGIN: ITEM -->
                        <tr>
                            <td colspan="2" class="{PLUGIN_FR_ODDEVEN}">{PLUGIN_FR_TITLE}</td>
                        </tr>
                        <!-- IF {PLUGIN_FR_TEXT} -->
                        <tr>
                            <td colspan="2" class="{PLUGIN_FR_ODDEVEN} uk-text-muted">{PLUGIN_FR_TEXT}</td>
                        </tr>
                        <!-- ENDIF -->
                        <tr>
                            <td class="{PLUGIN_FR_ODDEVEN}">
                                <p class="uk-text-small">{PHP.L.plu_last_date}: {PLUGIN_FR_TIME}</p>
                            </td>
                            <td class="{PLUGIN_FR_ODDEVEN} uk-text-right">
                                <p class="uk-text-small">{PHP.L.plu_section}: {PLUGIN_FR_CATEGORY}</p>
                            </td>
                        </tr>
                        <!-- END: ITEM -->
                    </table>
                </div>
            </div>
            <!-- END: FORUMS -->
            
            <!-- END: RESULTS -->
        </div>
        <!-- IF {PLUGIN_PAGENAV} -->              
        <ul class="uk-pagination uk-pagination-left">
            {PLUGIN_PAGENAV}
        </ul>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->



				
