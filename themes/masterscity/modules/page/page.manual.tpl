<!-- BEGIN: MAIN -->
<div class="uk-text-contrast uk-text-center uk-flex uk-flex-center uk-flex-middle" data-uk-parallax="{bg: '-200'}" style="min-height: 250px; background-image: url('themes/{PHP.theme}/img/tp-header-top.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-2">
        <h1 class="tp-text-transform uk-text-bold uk-text-contrast">{PAGE_SHORTTITLE}</h1>
        <!-- IF {PAGE_DESC} -->
        <p class="uk-text-large tp-text-transform">{PAGE_DESC}</p>
        <!-- ENDIF -->
    </div>
</div>

<div class="uk-container uk-container-center">
    <ul class="uk-breadcrumb uk-margin-top">
        <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
        <li>{PAGE_CATPATH}</li>
        <li class="uk-active"><span>{PAGE_SHORTTITLE}</span></li>
    </ul>
    <div class="uk-grid uk-margin-large-bottom uk-margin-top" data-uk-grid-margin="">
        <div class="uk-width-medium-3-4">
            <div class="uk-panel uk-panel-box">
                <!-- IF {PAGE_MAVATARCOUNT} -->
                <div class="uk-slidenav-position" data-uk-slideshow="">
                <ul class="uk-slideshow">    
                <!-- FOR {KEY}, {VALUE} IN {PAGE_MAVATAR} -->
                    <li><img width="840" height="330" src="{VALUE|cot_mav_thumb($this, 840, 330, crop)}" alt="" /></li>
                <!-- ENDFOR -->
                </ul>
                {PHP|cot_uk_link_data("#", "uk-slidenav uk-slidenav-contrast uk-slidenav-previous", "data-uk-slideshow-item="previous"")}
                {PHP|cot_uk_link_data("#", "uk-slidenav uk-slidenav-contrast uk-slidenav-next", "data-uk-slideshow-item="next"")}
                </div>
                <!-- ENDIF -->
                {PAGE_SHORTTITLE|cot_uk_heading(1, "$this", "uk-h1")}
                {PAGE_TEXT}
            </div>
            <div class="uk-block-muted uk-panel-body uk-margin-large-top">
                <div class="uk-grid" data-uk-grid-margin="" >
                    <div class="uk-width-medium-1-4">
                        <!-- IF {PAGE_OWNER_AVATAR_SRC} -->
                        <img src="{PAGE_OWNER_AVATAR_SRC}" height="120" width="120" alt="" />
                        <!-- ELSE -->
                        <img src="themes/{PHP.theme}/img/avatar.png" height="120" alt="" width="120" />
                        <!-- ENDIF -->
                    </div>
                    <div class="uk-width-medium-3-4 uk-padding-remove">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-2">  
                                <p class="tp-text-italic uk-text-muted uk-margin-remove uk-text-small uk-text-bold">{PHP.L.Author}</p>
                                {PAGE_OWNER_NICKNAME|cot_uk_heading(3, "$this", "uk-h4 tp-text-transform uk-margin-remove uk-text-bold uk-text-truncate")}
                            </div>
                            <div class="uk-width-medium-1-2 uk-text-right">
                                {FILE "themes/{PHP.theme}/inc/share.tpl"}
                            </div>
                        </div>
                        <div class="uk-margin-top">
                        <!-- IF {PAGE_OWNER_TEXT} -->
                        {PAGE_OWNER_TEXT|strip_tags($this)|mb_substr($this, 0, 115, 'UTF-8')}
                        <!-- ELSE -->
                        {PHP.L.Users_signature_description}
                        <!-- ENDIF -->
                        </div>
                    </div>
                </div>
            </div>
            <!-- IF {PHP.cot_plugins_active.comments} -->
            <div class="uk-margin-top">
                <h3 class="uk-text-bold tp-text-transform">{PHP.L.Coment_title} ({PAGE_COMMENTS_COUNT})</h3>
                {PAGE_COMMENTS_DISPLAY}
            </div>
            <!-- ENDIF -->
        </div>
        <div class="uk-width-medium-1-4">
		{FILE "themes/{PHP.theme}/inc/menu.manual.tpl"}


            <!-- IF {PHP.cot_plugins_active.pagelist} -->    
            <nav>
                {PHP.L.Enum_pages_title|cot_uk_heading(5, "$this", "tp-text-transform uk-text-bold")}
                {PHP|pagelist('pagelist.list','10','page_date DESC','','','system;archives','','TRUE')}
            </nav>
            <!-- ENDIF -->
            <!-- BEGIN: PAGE_ADMIN -->
            <ul class="uk-list uk-list-line">
                <li><a href="{PAGE_CAT|cot_url('page','m=add&c=$this')}">{PHP.L.page_addtitle}</a></li>
                <li>{PAGE_ADMIN_UNVALIDATE}</li>
                <li>{PAGE_ADMIN_EDIT}</li>
                <li>{PAGE_ADMIN_CLONE}</li>
                <li>{PAGE_ADMIN_DELETE}</li>
            </ul>
            <!-- END: PAGE_ADMIN -->
        </div>
    </div>
</div>
<!-- END: MAIN -->