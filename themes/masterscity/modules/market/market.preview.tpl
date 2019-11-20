<!-- BEGIN: MAIN -->
<div class="uk-block" style="position: relative; background-image: url('themes/{PHP.theme}/img/tp-header-marget-bg.png'); background-attachment: fixed;">
    <div class="uk-container uk-container-center"> 
        <h1 class="uk-text-bold">{PRD_SHORTTITLE}</h1>
        <ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {PRD_TITLE|ul_transform($this)}
        </ul>
    </div>
</div>
<!-- IF {PRD_STATE} == 2 -->
<div class="uk-width-1-4 tp-here">
<div class="tp-panel-border tp-panel-box" data-uk-alert="">
    <div class="uk-grid">
        <div class="uk-width-1-4 uk-text-center">
            <div class="uk-panel-body">
                <i class="uk-icon-bell tp-icon-warning"></i>
            </div>
        </div>
        <div class="uk-width-3-4">
            <a class="uk-alert-close uk-close" href=""></a>
            <div class="uk-panel-body">
                <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.L.Warning}</h4>
                <p class="uk-margin-top-remove">
                {PHP.L.market_forreview}
                </p>
            </div>
        </div>
    </div>
</div>
</div>  
<!-- ENDIF -->
<!-- IF {PRD_STATE} == 1 -->
<div class="uk-width-1-4 tp-here">
<div class="tp-panel-border tp-panel-box" data-uk-alert="">
    <div class="uk-grid">
        <div class="uk-width-1-4 uk-text-center">
            <div class="uk-panel-body">
                <i class="uk-icon-bell tp-icon-warning"></i>
            </div>
        </div>
        <div class="uk-width-3-4">
            <a class="uk-alert-close uk-close" href=""></a>
            <div class="uk-panel-body">
                <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.L.Warning}</h4>
                <p class="uk-margin-top-remove">
                {PHP.L.market_hidden}
                </p>
            </div>
        </div>
        <div class="uk-width-1-2">
            <a class="uk-width-1-1 uk-button" href="{PRD_ID|cot_url('market','m=edit&id='$this)}">{PHP.L.Edit}</a>
        </div>
        <div class="uk-width-1-2">
            <a class="uk-width-1-1 uk-button uk-button-success" href="{PRD_HIDEPRODUCT_URL}">{PRD_HIDEPRODUCT_TITLE}</a>
        </div>
    </div>
</div>
</div>  
<!-- ENDIF -->
<div class="uk-container uk-container-center uk-margin-large-top">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-4-10">
            <!-- IF {PRD_COST} > 0 -->
            <div class="uk-grid uk-h1" data-uk-grid-margin="">
                <div class="uk-width-1-2">
                    Цена: 
                </div>
                <div class="uk-width-1-2">
                    {PRD_COST} {PHP.cfg.payments.valuta}
                </div>
            </div> 
            <hr />
            <!-- ENDIF -->
            <div class="uk-panel uk-block-muted">
                <div class="uk-panel-body">
                    <div class="uk-grid">
                        <div class="uk-width-1-4">
                            <!-- IF {PRD_OWNER_AVATAR_SRC} -->
                            <img class="avatar uk-border-circle" width="100" height="100" alt="{PRD_OWNER_NICKNAME}" src="{PRD_OWNER_AVATAR_SRC}">
                            <!-- ELSE -->
                            <img class="avatar uk-border-circle" width="100" height="100" alt="{PRD_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                            <!-- ENDIF -->
                        </div>
                        <div class="uk-width-3-4">
                            <h5 class="uk-text-truncate uk-margin-bottom-remove">
                                <a class="uk-text-bold tp-text-transform ti-linck-black" href="{PRD_OWNER_DETAILSLINK}">{PRD_OWNER_NICKNAME}</a>
                            </h5>
                                <div class="uk-text-small uk-text-success">{PHP.L.Build_timeago_title}: <span class="uk-text-bold">{PRD_OWNER_LASTLOG_STAMP|cot_build_timeago()}</span></div> 
                            <!-- IF {PRD_OWNER_ISPRO} -->
                            <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                            <!-- ENDIF -->
                            <div class="uk-text-muted uk-text-small">
                               <!-- IF {PRD_OWNER_TEXT} -->
                               {PRD_OWNER_TEXT|cot_string_truncate($this, 120, true, false, '...'}
                               <!-- ELSE -->
                               {PHP.L.Users_signature_description}
                               <!-- ENDIF -->
                            </div>
                            <hr />
                            <div class="uk-grid" data-uk-grid-margin="">
                                <!-- IF {PHP.cot_plugins_active.userpoints} AND {PHP.cot_plugins_active.pointstostars} -->
                                <div class="uk-width-3-4 uk-text-warning">
                                    <div data-uk-tooltip="{pos:'left'}" title="{PRD_OWNER_USERPOINTS}">{PRD_OWNER_USERPOINTS|cot_pointstostars($this)}</div>
                                </div>
                                <!-- ENDIF -->
                                <div class="uk-width-1-4">
                                    <!-- IF {PHP.cot_plugins_active.whosonline} -->
                                        <!-- IF {PRD_OWNER_ONLINE} > 0 -->
                                        <img width="18" height="18" alt="" src="themes/{PHP.theme}/img/onli.png">
                                        <!-- ELSE -->
                                        <img width="18" height="18" alt="" src="themes/{PHP.theme}/img/offlajn.png">
                                        <!-- ENDIF -->
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- IF {PHP.cot_plugins_active.pagelist} -->
            <hr />
            <h5 class="tp-text-transform uk-text-bold">{PHP.L.Enum_pages_market_title}</h5>
            <ul class="uk-list uk-list-line">
            {PHP|pagelist('pagelist','10','page_date DESC','','','system;archives','','TRUE')}
            </ul>    
            <!-- ENDIF -->
           
        </div>
        <div class="uk-width-medium-3-5 uk-margin-large-bottom">
            <div class="uk-panel">
                <!-- IF {PRD_MAVATARCOUNT} -->
                <div class="uk-slidenav-position" data-uk-slideshow="{animation: 'scale'}">
                <ul class="uk-slideshow">    
                <!-- FOR {KEY}, {VALUE} IN {PRD_MAVATAR} -->
                    <li><img width="664" height="330" src="{VALUE|cot_mav_thumb($this, 664, 330, crop)}" alt="" /></li>
                <!-- ENDFOR -->
                </ul>
                <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slideshow-item="previous"></a>
                <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slideshow-item="next"></a>
                </div>
                <!-- ENDIF -->
                <hr />
                <div class="uk-grid uk-margin-top" data-uk-grid-margin="">
                    <div class="uk-width-medium-1-2 uk-text-center">
                        {FILE "themes/{PHP.theme}/inc/share.tpl"}
                    </div>
                    <div class="uk-width-medium-1-2 uk-text-center">
                        <div class="uk-grid uk-text-muted uk-text-large">
                            <div class="uk-width-1-3">
                                <i class="uk-icon-comment"></i> 0
                            </div>
                            <div class="uk-width-1-3">
                                <i class="uk-icon-bar-chart"></i> {PRD_COUNT}
                            </div>
                            <div class="uk-width-1-3">
                                
                            </div>
                        </div>
                    </div>
                </div>
                <hr />
                <div class="uk-margin-top">
                {PRD_SHORTTITLE|cot_uk_heading(2, "$this")}
                {PRD_TEXT}
                </div>
            </div>
            <hr />    
        </div>
    </div>
    <ul class="uk-tab uk-margin-large-top" data-uk-tab="{connect:'#MarKet'}">
        <li class="uk-active"><a href=""><i class="uk-icon-navicon uk-text-success"></i> {PHP.L.All_works_market_title} ({PRD_OWNER_NICKNAME})</a></li>
    </ul>
</div>

<div class="uk-block-muted">
    <div class="uk-container uk-container-center">
        <ul id="MarKet" class="uk-switcher uk-margin-top">
            <li>
                {PRD_OWNER_ID|cot_getmarketlist('works.folio', 30, 'item_userid='$this, "item_date DESC")}
            </li>
        </ul>
    </div>
</div>

<!-- END: MAIN -->