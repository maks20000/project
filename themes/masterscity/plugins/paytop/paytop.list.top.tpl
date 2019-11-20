<!-- BEGIN: MAIN -->
<div class="uk-slidenav-position" data-uk-slider="{infinite: false}">
    <div class="uk-slider-container uk-margin-left uk-margin-right">
        <ul class="uk-slider uk-grid uk-grid-width-medium-1-4">
            <!-- BEGIN: TOP_ROW -->
            <li>
                <div class="uk-panel uk-panel-box tp-box-card-top">
                    <div class="tp-panel-body">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-4 uk-text-center">
                                <!-- IF {TOP_ROW_AVATAR_SRC} -->
                                <img class="uk-border-rounded" width="" height="" alt="{TOP_ROW_OWNER_NICKNAME}" src="{TOP_ROW_AVATAR_SRC}">
                                <!-- ELSE -->
                                <img class="uk-border-rounded" width="" height="" alt="{TOP_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                                <!-- ENDIF -->
                                
                                <!-- IF {TOP_ROW_ISPRO} -->
                                <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                                <!-- ENDIF -->
                            </div>
                            <div class="uk-width-medium-3-4">
                                <h5 class="uk-text-truncate uk-margin-bottom-remove">
								<a class="tp-color-ts" href="{TOP_ROW_DETAILSLINK}">
						<!-- IF {TOP_ROW_PERS_FIRSTNAME} AND {TOP_ROW_PERS_SURNAME} -->
						<span class="uk-text-bold">{TOP_ROW_PERS_FIRSTNAME} {TOP_ROW_PERS_SURNAME}</span>
						<!-- ELSE -->
						{TOP_ROW_NICKNAME}
						<!-- ENDIF -->
								</a>
								</h5>


                                <div class="uk-text-small">
                       <!-- IF {TOP_ROW_TEXT} -->
                       <p class="uk-text uk-text-break">{TOP_ROW_TEXT|cot_string_truncate($this,135)}...</p>
                       <!-- ELSE -->
                       <p class="uk-text uk-text-muted ">{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)</p>
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
            
            <!-- IF {PAYTOP_COUNT} <= 4 -->
            <!-- FOR {INDEX} IN {PHP|range(1, 4)} -->
            <!-- IF 4 - {INDEX} >= {PAYTOP_COUNT} -->
            <li>
                <div class="uk-panel uk-panel-box tp-panel-border">
                    <div class="tp-panel-body">
                        <div class="uk-grid">
                            <div class="uk-width-1-4">
                                <img class="avatar uk-border-circle" width="100" height="100" alt="Ник" src="themes/{PHP.theme}/img/avatar.png">
                            </div>
                            <div class="uk-width-3-4">
                                <h5 class="uk-text-truncate uk-margin-bottom-remove"><a class="tp-color-ts" href="">Рекламное место</a></h5>
                                <span class="uk-text-small uk-text-muted tp-text-transform">12 января 2016</span> 
                                <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                                <div class="uk-text-muted uk-text-small">
                                   {PHP.cfg.maintitle} - {PHP.cfg.subtitle}
                                </div>
                                <hr />
                                <div class="uk-grid" data-uk-grid-margin="">
                                    <div class="uk-width-1-2 uk-text-warning">
                                        <div data-uk-tooltip="{pos:'left'}" title="100">
                                            <i class="uk-icon-star "></i>
                                            <i class="uk-icon-star-o "></i>
                                            <i class="uk-icon-star-o "></i>
                                            <i class="uk-icon-star-o "></i>
                                            <i class="uk-icon-star-o "></i>
                                        </div>
                                    </div>
                                    <div class="uk-width-1-2 uk-text-right">
                                        <img width="18" height="18" alt="" src="themes/{PHP.theme}/img/onli.png">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
            <!-- ENDIF -->
            <!-- ENDFOR -->
            <!-- ENDIF -->
        </ul>
    </div>
    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slider-item="previous"></a>
    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slider-item="next"></a>
</div>
<!-- IF {PHP.usr.id} > 0 -->
<div class="uk-container uk-container-center uk-margin-large-top">
    <div class="uk-panel uk-panel-box uk-text-center">
        <p>
            {PHP.L.Advertising_space_description_lincks}
            <a class="uk-button uk-button-success uk-margin-left" href="{PAYTOP_BUY_URL}">{PHP.L.paytop_how}</a>
        </p>
    </div>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->