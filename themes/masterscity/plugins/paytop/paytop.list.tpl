<!-- BEGIN: MAIN -->
<div class="uk-slidenav-position" data-uk-slider="{infinite: false}">
    <div class="uk-slider-container uk-margin-left uk-margin-right">
        <ul class="uk-slider uk-grid uk-grid-width-medium-1-4">
            <!-- BEGIN: TOP_ROW -->
            <li>
                <div class="uk-panel uk-panel-box">
                    <div class="tp-panel-body">
                        <div class="uk-grid">
                            <div class="uk-width-1-4">
                                <!-- IF {TOP_ROW_AVATAR_SRC} -->
                                <img class="avatar uk-border-circle" width="100" height="100" alt="{TOP_ROW_OWNER_NICKNAME}" src="{TOP_ROW_AVATAR_SRC}">
                                <!-- ELSE -->
                                <img class="avatar uk-border-circle" width="100" height="100" alt="{TOP_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                                <!-- ENDIF -->
                            </div>
                            <div class="uk-width-3-4">
                                <h5 class="uk-text-truncate uk-margin-bottom-remove"><a class="tp-color-ts" href="{TOP_ROW_DETAILSLINK}">{TOP_ROW_NICKNAME}</a></h5>
                                <span class="uk-text-small uk-text-muted tp-text-transform">{TOP_ROW_REGDATE_STAMP|cot_date('j F Y', $this)}</span> 
                                <!-- IF {TOP_ROW_ISPRO} -->
                                <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                                <!-- ENDIF -->
                                <div class="uk-text-muted uk-text-small">
                       <!-- IF {TOP_ROW_TEXT} -->
                       <p class="uk-text">{TOP_ROW_TEXT|cot_string_truncate($this,300)}</p>
                       <!-- ELSE -->
                       <p class="uk-text">{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)</p>
                       <!-- ENDIF -->
                                </div>
                                <hr />
                                <div class="uk-grid" data-uk-grid-margin="">
                                    <!-- IF {PHP.cot_plugins_active.userpoints} AND {PHP.cot_plugins_active.pointstostars} -->
                                    <div class="uk-width-1-2 uk-text-warning">
                                        <div data-uk-tooltip="{pos:'left'}" title="{TOP_ROW_USERPOINTS}">{TOP_ROW_USERPOINTS|cot_pointstostars($this)}</div>
                                    </div>
                                    <!-- ENDIF -->
                                    <!-- IF {PHP.cot_plugins_active.whosonline} -->
                                    <div class="uk-width-medium-1-2 uk-text-right">
                                        <!-- IF {TOP_ROW_ONLINE} > 0 -->
                                        <img width="18" height="18" alt="" src="themes/{PHP.theme}/img/onli.png">
                                        <!-- ELSE -->
                                        <img width="18" height="18" alt="" src="themes/{PHP.theme}/img/offlajn.png">
                                        <!-- ENDIF -->
                                    </div>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <!-- END: TOP_ROW -->
        </ul>
    </div>
    {PHP|cot_uk_link_data("#", "uk-slidenav uk-slidenav-contrast uk-slidenav-previous", "data-uk-slideshow-item="previous"")}
    {PHP|cot_uk_link_data("#", "uk-slidenav uk-slidenav-contrast uk-slidenav-next", "data-uk-slideshow-item="next"")}
</div>

<div class="uk-container uk-container-center uk-margin-large-top">
    <div class="uk-panel uk-panel-box uk-text-center">
        <p>
            {PHP.L.Advertising_space_description_lincks}
            <a class="uk-button uk-button-success uk-margin-left" href="{PAYTOP_BUY_URL}">{PHP.L.paytop_how}</a>
        </p>
    </div>
</div>

<!-- END: MAIN -->