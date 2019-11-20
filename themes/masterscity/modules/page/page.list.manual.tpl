<!-- BEGIN: MAIN -->
<div class="uk-text-contrast uk-text-center uk-flex uk-flex-center uk-flex-middle" data-uk-parallax="{bg: '-200'}" style="min-height: 250px; background-image: url('themes/{PHP.theme}/img/tp-header-top.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-2">
		<h1 class="tp-text-transform uk-text-bold uk-text-contrast">{LIST_CATTITLE}</h1>
        <p class="uk-text-large tp-text-transform">{LIST_CATDESC}</p>
    </div>
</div>
<div class="uk-block-muted">
    <div class="uk-container uk-container-center">
        <ul class="uk-breadcrumb uk-margin-top">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {LIST_CATPATH|ul_transform($this)}
        </ul>
        <div class="uk-grid uk-margin-large-bottom uk-margin-top" data-uk-grid-margin="">
            <div class="uk-width-medium-3-4">
                <div class="uk-grid-width-small-1-1" data-uk-grid="{gutter: 30}">
                    <!-- BEGIN: LIST_ROW -->
                    <div>
                        <div data-uk-scrollspy="{cls:'uk-animation-slide-left', repeat: true}">
                        <div class="uk-panel tp-panel-box">
                            <div class="uk-grid" data-uk-grid-margin=""> 
                                <div class="uk-width-medium-1-2 uk-position-relative">
                                    <div class="tp-position-left-top uk-text-center tp-text-transform uk-text-bold">
                                        {LIST_ROW_DATE_STAMP|cot_date('j', $this)} <br />
                                        {LIST_ROW_DATE_STAMP|cot_date('M', $this)}
                                    </div>
                                    <!-- IF {LIST_ROW_MAVATAR.1} -->    
                                    <img alt="{LIST_ROW_SHORTTITLE}" src="{LIST_ROW_MAVATAR.1|cot_mav_thumb($this, 402, 268, crop)}" width="402" height="268" />
                                    <!-- ELSE -->
                                    <img alt="" src="themes/{PHP.theme}/img/no-img.png">
                                    <!-- ENDIF -->
                                </div>
                                <div class="uk-width-medium-1-2">
                                    <div class="uk-panel-body">
                                        <h2><a class="uk-text-muted" href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a></h2>
                                        <hr />
                                        <div class="uk-grid uk-text-small">
                                            <div class="uk-width-1-2 uk-text-truncate">
                                                <span class="uk-text-muted tp-text-transform">{LIST_ROW_OWNER_NICKNAME}</span>
                                            </div>
                                            <div class="uk-width-1-2 uk-text-truncate">
                                                <span class="uk-text-muted tp-text-transform">{LIST_ROW_CATTITLE}</span>
                                            </div>
                                        </div>
                                        <hr />
                                        {LIST_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this, 0, 285, 'UTF-8')}...
                                        <hr />
                                        <div class="uk-grid">
                                            <div class="uk-width-1-3">
                                                <span class="tp-b1"><i class="uk-icon-comment"></i> {LIST_ROW_COMMENTS_COUNT}</span>
                                            </div>
                                            <div class="uk-width-1-3">
                                                <span class="tp-b2"><i class="uk-icon-bar-chart"></i> {LIST_ROW_COUNT}</span>
                                            </div>
                                            <div class="uk-width-1-3">
                                                <a class="tp-b3" title="{LIST_ROW_SHORTTITLE}" href="{LIST_ROW_URL}"><span class="tp-b3"><i class="uk-icon-share"></i> {PHP.L.ReadMore}</span></a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        </div>
                    </div>
                    <!-- END: LIST_ROW -->
                </div>
            </div>
            <div class="uk-width-medium-1-4">

                    {PHP.L.Cat_title|cot_uk_heading(5, "$this", "tp-text-transform uk-text-bold")}
{FILE "themes/{PHP.theme}/inc/menu.manual.tpl"}
                <!-- IF {PHP.cot_plugins_active.pagelist} -->
                <div class="uk-margin-bottom">
                    {PHP.L.Top_news_title|cot_uk_heading(5, "$this", "tp-text-transform uk-text-bold")}
                    {PHP|pagelist('pagelist.top','10','page_count DESC','page_count != "0"','','system','','')}
                </div>        
                <!-- ENDIF -->
                <div class="uk-margin-top">
				<h5 class="tp-text-transform uk-text-bold">Администрирование</h5>
            <!-- IF {PHP.usr.auth_write} -->
            <ul class="uk-list uk-list-line">
                <!-- IF {PHP.usr.isadmin} -->
                <li><a href="{PHP|cot_url('admin')}">{PHP.L.Adminpanel}</a></li>
                <!-- ENDIF -->
                <li>{LIST_SUBMITNEWPAGE}</li>
            </ul>
            <!-- ENDIF -->
                </div>
            </div>
        </div>
        <!-- IF {LIST_TOP_PAGINATION} -->
        <ul class="uk-pagination uk-margin-large-bottom">
            {LIST_TOP_PAGINATION}
        </ul>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->