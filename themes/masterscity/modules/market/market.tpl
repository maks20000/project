<!-- BEGIN: MAIN -->
<div class="uk-block" style="position: relative; background-image: url('themes/{PHP.theme}/img/tp-header-marget-bg.png'); background-attachment: fixed;">
    <div class="uk-container uk-container-center"> 
        {PRD_SHORTTITLE|cot_uk_heading(1, "$this", "uk-text-bold")}
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
                {PHP.L.Warning|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
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
                {PHP.L.Warning|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                <p class="uk-margin-top-remove">
                {PHP.L.market_hidden}
                </p>
            </div>
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
                               {PRD_OWNER_TEXT}
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
            <ul class="uk-list uk-list-line tp-text-transform">
				<!-- IF {PHP.cot_plugins_active.paymarketbold} AND {PHP.usr.id} == {PRD_OWNER_ID} -->
						<li><i class="uk-icon-arrow-circle-up uk-margin-right"></i>{PRD_PAYBOLD}</li>
				<!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.paymarkettop} AND {PHP.usr.id} == {PRD_OWNER_ID} -->
						<li><i class="uk-icon-arrow-circle-up uk-margin-right"></i>{PRD_PAYTOP}</li>
				<!-- ENDIF -->
            </ul>
			<hr />
            <ul class="uk-list uk-list-line tp-text-transform">
                <li class="ti-linck-black"><span class="uk-text-bold">{PHP.L.Date}:</span> {PRD_DATE_STAMP|cot_date('j F Y', $this)}</li>
                <li class="ti-linck-black"><span class="uk-text-bold">{PRD_CATTITLE}</span></li>
                <!-- IF {PRD_COUNTRY} {PRD_REGION} {PRD_CITY} OR {PRD_REGION} {PRD_CITY} OR {PRD_CITY} -->
                <li>{PRD_COUNTRY} {PRD_REGION} {PRD_CITY}</li>
                <!-- ENDIF -->
            </ul>
            <!-- IF {PHP.cot_plugins_active.pagelist} -->
            <hr />
            <h5 class="uk-visible-large tp-text-transform uk-text-bold">{PHP.L.Enum_pages_market_title}</h5>
            <ul class="uk-visible-large uk-list uk-list-line">
            {PHP|pagelist('pagelist','10','page_date DESC','','','system;archives','','TRUE')}
            </ul>    
            <!-- ENDIF -->    
            <!-- ENDIF -->
        </div>
        <div class="uk-width-medium-3-5 uk-margin-large-bottom">
            <div class="uk-panel">
                
                <!-- IF {PRD_MAVATARCOUNT} -->
                <div class="uk-slidenav-position" data-uk-slideshow="{kenburns:true, autoplay:true}">
                <ul class="uk-slideshow">    
                <!-- FOR {KEY}, {VALUE} IN {PRD_MAVATAR} -->
                    <li><img width="664" height="330" src="{VALUE|cot_mav_thumb($this, 664, 330, crop)}" alt="" /></li>
                <!-- ENDFOR -->
                </ul>
                {PHP|cot_uk_link_data("#", "uk-slidenav uk-slidenav-contrast uk-slidenav-previous", "data-uk-slideshow-item="previous"")}
                {PHP|cot_uk_link_data("#", "uk-slidenav uk-slidenav-contrast uk-slidenav-next", "data-uk-slideshow-item="next"")}
                </div>
                <!-- ENDIF -->
                
                <hr />
                <div class="uk-grid uk-margin-top" data-uk-grid-margin="">
                    <div class="uk-width-medium-1-2 uk-text-center">
                        {FILE "themes/{PHP.theme}/inc/share.tpl"}
                    </div>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-grid uk-text-muted uk-text-large">
                            <div class="uk-width-1-3">
                                <i class="uk-icon-comment"></i> {PRD_COMMENTS_COUNT}
                            </div>
                            <div class="uk-width-1-3">
                                <i class="uk-icon-bar-chart"></i> {PRD_COUNT}
                            </div>
                            <!-- IF {PRD_USER_IS_ADMIN} -->
                            <div class="uk-width-1-3">
                                <ul class="tp-navbar-nav-market uk-navbar-nav">
                                    <li data-uk-dropdown="{mode:'click'}" >
                                        <a class="uk-text-muted" href="#"><i class="uk-icon-pencil uk-text-large"></i></a>
                                        <div class="uk-dropdown uk-dropdown-small uk-dropdown-flip uk-dropdown-top">
                                            <ul class="uk-nav uk-nav-navbar">
                                                <li><a href="{PRD_ID|cot_url('market','m=edit&id='$this)}">{PHP.L.Edit}</a></li>
                                                <!-- IF {PRD_STATE} != 2 -->
                                                <li><a href="{PRD_HIDEPRODUCT_URL}">{PRD_HIDEPRODUCT_TITLE}</a></li>
                                                <!-- ENDIF -->
                                            </ul>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <!-- ENDIF -->
                        </div>
                    </div>
                </div>
                <hr />
                
                <div class="uk-margin-top">
                {PRD_SHORTTITLE|cot_uk_heading(2, "$this")} 
                {PRD_TEXT}
                </div>
                <!-- IF {PHP.cot_plugins_active.commentsmarket} -->
                <li>
                    {PRD_COMMENTS_DISPLAY}
                </li>
                <!-- ENDIF -->
            </div>
            <hr />    
            <ul class="uk-tab uk-margin-large-top" data-uk-tab="{connect:'#MarKet'}">
                <li class="uk-active"><a href=""><i class="uk-icon-clipboard uk-text-success"></i> {PHP.L.Sellers_other_items_title}</a></li>
                <!-- IF {PHP.cot_plugins_active.commentsmarket} -->
                <li><a href=""><i class="uk-icon-comment-o uk-text-warning"></i> {PHP.L.Coment_title} {PRD_COMMENTS_COUNT}</a></li>
                <!-- ENDIF -->
                <!-- IF {PHP.cot_plugins_active.simproducts} -->
                <li><a href=""><i class="uk-icon-files-o uk-text-primary"></i> {PHP.L.Similar_items_title}</a></li>
                <!-- ENDIF -->
            </ul>
            
            <ul id="MarKet" class="uk-switcher uk-margin-top">
                <li>
                    {PRD_OWNER_ID|cot_getmarketlist('works', 4, 'item_userid='$this, "item_date DESC")}
                </li>

                <!-- IF {PHP.cot_plugins_active.simproducts} -->
                <li>
                    {PRD_SIMPRODUCTS}
                </li>
                <!-- ENDIF -->
            </ul>

        </div>
    </div>
</div>
<!-- IF {PHP.usr.auth_write} -->
<a class="tp-add tp-add-market" href="{PHP|cot_url('market', 'm=add')}"><i class="uk-icon-pencil"></i></a>
<!-- ENDIF -->

<!-- END: MAIN -->