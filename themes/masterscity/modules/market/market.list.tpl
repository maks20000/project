<!-- BEGIN: MAIN -->
<div style="min-height:300px; position: relative; background-image: url('themes/{PHP.theme}/img/tp-bg-market.png'); background-attachment: fixed;">
    <div class="uk-margin uk-container uk-container-center">
    <div class="uk-margin-large-top" data-uk-scrollspy="{cls:'uk-animation-fade', repeat: true}">
    
    <ul class="uk-tab">
        <li><a class="uk-text-contrast uk-text-bold" href="{PHP|cot_url('market')}">{PHP.L.All}</a></li>
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <li><a class="uk-text-contrast uk-text-bold" data-uk-toggle="{target:'#Location'}">{PHP.L.Location}</a></li>
        <!-- ENDIF -->
    </ul>
    
    <div class="uk-panel uk-panel-box uk-margin-bottom">
        <div class="tp-panel-body">
            <form class="uk-form uk-form-stacked" action="{SEARCH_ACTION_URL}" method="get">
            <input type="hidden" name="e" value="market" />
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
                                    {PHP.c|cot_catbox('market', $this, 'rcat', '0', '', 'uk-column-medium-1-2')}
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
                <h1 class="uk-text-contrast uk-h2"><!-- IF {PHP.c} -->{CATTITLE}<!-- ELSE -->{PHP.L.market}<!-- ENDIF -->
                </h1>
                <!-- IF {PHP.env.ext} == 'market' AND {PHP.c} == '' --> 
                <p class="uk-text-contrast uk-text-large">   
                {PHP.L.Market_description_list}
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
                <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-width-1-1" href="{PHP.cot_groups.4.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.L.I_am_an_freelancer}</a>
                <p><a class="tp-button uk-button tp-text-transform uk-width-1-1" href="{PHP.cot_groups.7.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.L.I_am_an_employer}</a></p>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.auth_write} -->
                <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-button-large uk-width-1-1" href="{PHP|cot_url('market', 'm=add')}">{PHP.L.market_add_product}</a>
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
    
<div class="uk-block-muted">
    <div class="uk-container uk-container-center">
        <ul class="uk-breadcrumb uk-margin-top">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {BREADCRUMBS|ul_transform($this)}
        </ul>
        
        <div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-3" data-uk-grid="{gutter: 30}">
            <!-- BEGIN: PRD_ROWS -->
            <div>
                <div class="uk-panel uk-panel-box tp-panel-border<!-- IF {PRD_ROW_ISTOP} --> prdtop <!-- ELSE --><!-- IF {PRD_ROW_ISBOLD} --> prdbold<!-- ENDIF --><!-- ENDIF -->" data-uk-scrollspy="{cls:'uk-animation-slide-bottom', repeat: true}">
                    <div class="uk-panel-teaser uk-margin-bottom-remove uk-position-relative">
                        <figure class="uk-overlay uk-overlay-hover">
                        
                        <!-- IF {PRD_ROW_MAVATAR.1} -->
                        <div class="uk-margin-bottom-remove">
                            <img width="664" height="330" alt="{PRD_ROW_SHORTTITLE}" src="{PRD_ROW_MAVATAR.1|cot_mav_thumb($this, 664, 330, crop)}" />
                        </div>
                        <!-- ELSE -->
                        <img width="664" height="330" alt="" src="themes/{PHP.theme}/img/no-img.png">
                        <!-- ENDIF -->

                        <figcaption class="uk-overlay-panel uk-overlay-background uk-overlay-bottom uk-overlay-slide-bottom">
                            <h5 class="uk-text-truncate uk-margin-bottom-remove uk-text-bold">{PRD_ROW_COST} {PHP.cfg.payments.valuta}</h5>
                            <b class="uk-h6 uk-text-muted">{PRD_ROW_CATTITLE}</b>
                            <div class="uk-position-relative">
                                <div class="tp-block-linck-overlay uk-text-center">
                                    <a href="{PRD_ROW_URL}" class="uk-icon-button uk-icon-link"></a>
                                    <!-- IF {PRD_ROW_MAVATAR.1} -->
                                    <a href="{PRD_ROW_MAVATAR.1.FILE}" title="{PRD_ROW_SHORTTITLE}" class="uk-icon-button uk-icon-search" data-uk-lightbox="{group:'market'}"></a>
                                    <!-- ELSE -->
                                    <a href="themes/{PHP.theme}/img/no-img.png" title="{PRD_ROW_SHORTTITLE}" class="uk-icon-button uk-icon-search" data-uk-lightbox="{group:'market'}"></a>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </figcaption>

                        </figure>
                        <div class="tp-bg-bloc tp-padd tp-text-transform uk-hidden-small uk-text-center">
                            <div class="uk-grid" data-uk-grid-margin="">
                                <div class="uk-width-medium-1-4 uk-text-truncate">
                                    <i class="uk-icon-user tp-icon-color"></i> <span class="uk-text-contrast uk-text-small">{PRD_ROW_OWNER_NICKNAME}</span>
                                </div>
                                <div class="uk-width-medium-1-4">
                                    <i class="uk tp-icon-color"></i> <span class="uk-text-contrast uk-text-small">{PRD_ROW_DATE_STAMP|cot_date('M', $this)}  {PRD_ROW_DATE_STAMP|cot_date('j', $this)}</span>
                                </div>
                                <div class="uk-width-medium-1-4">
                                    <i class="uk-icon-comment tp-icon-color"></i> <span class="uk-text-contrast uk-text-small">{LIST_ROW_COMMENTS_COUNT} </span>
                                </div>
                                <div class="uk-width-medium-1-4">
                                    <i class="uk-icon-eye tp-icon-color"></i> <span class="uk-text-contrast uk-text-small">{PRD_ROW_COUNT}</span>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="uk-panel-body">
                        <h4 class="uk-h3 uk-text-truncate uk-margin-bottom-remove"><a class="ti-linck-black uk-text-bold" href="{PRD_ROW_URL}">{PRD_ROW_SHORTTITLE}</a></h4>
                        {PRD_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 150, 'UTF-8')}...
                        <div class="uk-grid uk-margin-top" data-uk-grid-margin="">
                            <div class="uk-width-medium-1-2 uk-text-truncate">
                            <a href="{PRD_ROW_CATURL}">{PRD_ROW_CATTITLE}</a>
                            </div>
                            <div class="uk-width-medium-1-2 uk-text-right uk-text-left-small">
                                <a href="{PRD_ROW_URL}">{PHP.L.ReadMore}</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: PRD_ROWS -->
        </div>
        <!-- IF {PAGENAV_COUNT} > 0 -->
        <ul class="uk-pagination">
            {PAGENAV_PAGES}
        </ul>
        <!-- ELSE -->
        <div class="uk-alert">{PHP.L.market_notfound}</div>
        <!-- ENDIF -->
    </div> 
    <!-- IF {PHP.usr.auth_write} -->
    <a class="tp-add tp-add-market" href="{PHP|cot_url('market', 'm=add')}"><i class="uk-icon-pencil"></i></a>
    <!-- ENDIF -->
</div>
<!-- END: MAIN -->