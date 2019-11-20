<!-- BEGIN: MAIN -->

<!-- BEGIN: TOP_ROW -->
<div>
    <div class="uk-panel uk-panel-box">
        <div class="tp-panel-body uk-hidden-small">
            <div class="uk-grid">
                <div class="uk-width-1-4">
                    <!-- IF {TOP_ROW_AVATAR_SRC} -->
                    <img class="avatar uk-border-circle" width="100" height="100" alt="{TOP_ROW_OWNER_NICKNAME}" src="{TOP_ROW_AVATAR_SRC}">
                    <!-- ELSE -->
                    <img class="avatar uk-border-circle" width="100" height="100" alt="{TOP_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                    <!-- ENDIF -->
                </div>
                <div class="uk-width-3-4">
                    <h5 class="uk-text-truncate uk-margin-bottom-remove">
					<a class="tp-color-ts" href="{TOP_ROW_DETAILSLINK}">
						<!-- IF {TOP_ROW_PERS_FIRSTNAME} AND {TOP_ROW_PERS_SURNAME} -->
						<span class="uk-text-bold">{TOP_ROW_PERS_FIRSTNAME} {TOP_ROW_PERS_SURNAME}</span>
						<!-- ELSE -->
						{TOP_ROW_NICKNAME}
						<!-- ENDIF -->
					</a>
					<!-- IF {PHP.usr.id} > 0  -->
				
<!--                 <ul class="tp-navbar-nav">
                    <li data-uk-dropdown="{mode:'click'}" >
                        <a class="tp-hover-icons uk-text-success" data-uk-tooltip="{pos:'top'}" title="Изменить профиль" href="#"><i class="uk-icon-edit uk-icon-medium"></i></a>
                        <div class="uk-dropdown uk-dropdown-small uk-dropdown-flip uk-dropdown-bottom">
                            <ul class="uk-nav uk-nav-navbar">
                                <li><a href="{PHP|cot_url('users', 'm=profile')}" class="">{PHP.L.Edit_my_profile}</a></li>
                            </ul>
                        </div>
                    </li>
                </ul> -->
                
                <!-- IF {PHP.usr.maingrp} == 5 -->
                <ul class="tp-navbar-nav">
                    <li data-uk-dropdown="{mode:'click'}" >
                        <a class="tp-hover-icons uk-text-success" data-uk-tooltip="{pos:'top'}" title="Изменить профиль" href="#"><i class="uk-icon-edit uk-icon-medium"></i></a>
                        <div class="uk-dropdown uk-dropdown-small uk-dropdown-flip uk-dropdown-bottom">
                            <ul class="uk-nav uk-nav-navbar">
                                <li><a class="" href="{TOP_ROW_ID|cot_url('users','m=edit&id='$this)}">{PHP.L.Edit_as_admin}</a></li> 
                            </ul>
                        </div>
                    </li>
                </ul>
                <!-- ENDIF -->
				<!-- ENDIF -->
					</h5>
                    <span class="uk-text-small uk-text-muted tp-text-transform">{TOP_ROW_REGDATE_STAMP|cot_date('j F Y', $this)}</span> 
                    <!-- IF {TOP_ROW_ISPRO} -->
                    <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                    <!-- ENDIF -->
                    <p class="uk-text-muted">
                       <!-- IF {TOP_ROW_TEXT} -->
                       <p class="uk-text uk-text-uppercase uk-text-nowrap">{TOP_ROW_TEXT|cot_string_truncate($this,50)} ... </p>
                       <!-- ELSE -->
                       <p class="uk-textuk-text-uppercase uk-text-nowrap">{PHP.cfg.maintitle} - {PHP.cfg.subtitle|cot_string_truncate($this,20)}</p>
                       <!-- ENDIF -->
                    </p>
                    <hr />
                    <div class="uk-grid">
                        <!-- IF {PHP.cot_plugins_active.userpoints} AND {PHP.cot_plugins_active.pointstostars} -->
                        <div class="uk-width-1-4 uk-text-warning uk-hidden-small">
                            <div data-uk-tooltip="{pos:'left'}" title="{TOP_ROW_USERPOINTS}">{TOP_ROW_USERPOINTS|cot_pointstostars($this)}</div>
                        </div>
                        <!-- ENDIF -->
                        <div class="uk-width-3-4">
                            <div class="uk-grid">
                                
                                <!-- IF {PHP.cot_plugins_active.reviews} -->
                                <div class="uk-width-medium-1-2 uk-text-right">
                                    <!-- IF {PHP.usr.id} > 0 -->
                                    {PHP|cot_uk_icon("uk-icon-thumbs-o-down uk-text-danger")} &nbsp;{TOP_ROW_REVIEWS_NEGATIVE_SUMM} &nbsp;&nbsp;
                                    {PHP|cot_uk_icon("uk-icon-thumbs-o-up uk-text-success")} &nbsp; {TOP_ROW_REVIEWS_POZITIVE_SUMM}
                                    <!-- ENDIF -->
                                </div>
                                <!-- ENDIF -->
                                
                                <!-- IF {PHP.cot_plugins_active.whosonline} -->
                                <div class="uk-width-medium-1-2 uk-text-right uk-hidden-small">
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
        </div>
        <div class="tp-panel-body uk-visible-small">
            <div class="uk-grid">
                <div class="uk-width-medium-1-1 uk-text-center">
                    <!-- IF {TOP_ROW_AVATAR_SRC} -->
                    <img class="avatar uk-border-circle" width="100" height="100" alt="{TOP_ROW_OWNER_NICKNAME}" src="{TOP_ROW_AVATAR_SRC}">
                    <!-- ELSE -->
                    <img class="avatar uk-border-circle" width="100" height="100" alt="{TOP_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                    <!-- ENDIF -->
					<p><h5 class="uk-text-truncate uk-margin-top-remove uk-margin-bottom-remove"><a class="tp-color-ts" href="{TOP_ROW_DETAILSLINK}">{TOP_ROW_NICKNAME}</a></h5><span class="uk-margin-top-remove uk-text-warning ">{TOP_ROW_USERPOINTS|cot_pointstostars($this)}</span></p>
                </div>
                <div class="uk-width-medium-1-1">

                    <!-- IF {TOP_ROW_ISPRO} -->
                    <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                    <!-- ENDIF -->
                    <p class="uk-text-muted">
                       <!-- IF {TOP_ROW_TEXT} -->
                       <p class="uk-text uk-text-uppercase uk-text-nowrap">{TOP_ROW_TEXT|cot_string_truncate($this,50)} ... </p>
                       <!-- ELSE -->
                       <p class="uk-textuk-text-uppercase uk-text-nowrap">{PHP.cfg.maintitle} - {PHP.cfg.subtitle|cot_string_truncate($this,20)}</p>
                       <!-- ENDIF -->
                    </p>
                    <hr />

                </div>
            </div>
        </div>
    </div>
</div> 
<!-- END: TOP_ROW -->

<!-- END: MAIN -->