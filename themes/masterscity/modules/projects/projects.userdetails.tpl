<!-- BEGIN: MAIN -->
<div class="uk-width-medium-1-1">
<!-- IF {PHP.usr.id} == {PHP.urr.user_id} AND {ADDPRJ_SHOWBUTTON} -->
<a class="uk-button uk-button-success" href="{PHP|cot_url('projects', 'm=add')}">{PHP.L.projects_add_to_catalog}</a>
<!-- ENDIF -->
<hr />
</div>
<!-- BEGIN: PRJ_ROWS -->
<div class="uk-panel tp-panel-border uk-block-muted uk-margin-bottom uk-position-relative <!-- IF {PRJ_ROW_ISBOLD} --> tp-prjbold<!-- ENDIF --> <!-- IF {PRJ_ROW_ISTOP} --> tp-prjtop<!-- ENDIF -->">
    <div class="uk-panel-body">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-3-4">
                <h4 class="uk-margin-bottom-remove uk-text-truncate">
                    <a class="ti-linck-black uk-button uk-button-link" href="{PRJ_ROW_URL}">{PRJ_ROW_SHORTTITLE}</a>
                </h4>
                <b class="uk-text-muted"><a class="tp-color-ts" href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a></b>
                <div class="uk-margin-top">
                    {PRJ_ROW_SHORTTEXT}
                </div>
            </div>
            <div class="uk-width-1-4 uk-position-relative">

                <!-- IF {PHP.usr.id} == {PRJ_ROW_OWNER_ID} OR {PHP.usr.isadmin}  -->
                <ul class="tp-navbar-nav">
                    <li data-uk-dropdown="{mode:'click'}" >
                        <a class="tp-hover-icons uk-text-muted" href="#"><i class="uk-icon-pencil uk-text-large"></i></a>
                        <div class="uk-dropdown uk-dropdown-small uk-dropdown-flip uk-dropdown-bottom">
                            <ul class="uk-nav uk-nav-navbar">
                                <!-- IF {PHP.cot_plugins_active.payprjtop} AND {PHP.usr.id} == {PHP.urr.user_id} -->
                                <li>{PRJ_ROW_PAYTOP}</li>
                                <!-- ENDIF -->
                                <!-- IF {PHP.cot_plugins_active.payprjbold} AND {PHP.usr.id} == {PHP.urr.user_id} -->
                                <li>{PRJ_ROW_PAYBOLD}</li>
                                <!-- ENDIF -->
                                <li><a href="{PRJ_ROW_ID|cot_url('projects','m=edit&id='$this)}">{PHP.L.Edit}</a></li>
                            </ul>
                        </div>
                    </li>
                </ul>
                <!-- ENDIF -->

                <!-- IF {PRJ_ROW_COST} > 0 -->
                <p class="uk-text-bold uk-text-large uk-text-success">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</p>
                <!-- ENDIF -->
                <p class="uk-grid" data-uk-grid-margin="">
                    <span class="uk-width-medium-1-3"><i class="uk-icon-bar-chart uk-text-large" data-uk-tooltip="{pos:'top'}" title="{PHP.L.Proposals_title}"></i> {PRJ_ROW_OFFERS_COUNT}</span>
                    <span class="uk-width-medium-1-3"><i class="uk-icon-eye uk-text-large" data-uk-tooltip="{pos:'top'}" title="{PHP.L.Views_title}"></i> {PRJ_ROW_COUNT}</span>
                    <span class="uk-width-medium-1-3"><i class="uk-icon-" data-uk-tooltip="{pos:'top'}"></i></span>
                </p>
                <!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->
                <p>
                    <span class="uk-badge uk-badge-danger">{PHP.L.paypro_forpro}</span> 
                </p>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>
<!-- END: PRJ_ROWS -->

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
                    {PHP.L.projects_empty}
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>  
<!-- ENDIF -->
<!-- END: MAIN -->