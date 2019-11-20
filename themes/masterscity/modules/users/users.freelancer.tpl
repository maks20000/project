<!-- BEGIN: MAIN -->
<div style="min-height:300px; position: relative; background-image: url('themes/{PHP.theme}/img/tp-users-bg.png'); background-attachment: fixed;">
    <div class="uk-margin uk-container uk-container-center">
    <div class="uk-margin-large-top" data-uk-scrollspy="{cls:'uk-animation-fade', repeat: true}">
    <!-- IF {PHP.cot_plugins_active.locationselector} -->
    <ul class="uk-tab">
        <li class="uk-active"><a class="uk-text-contrast uk-text-bold" data-uk-toggle="{target:'#Location'}">{PHP.L.Location}</a></li>
    </ul>
    <!-- ENDIF -->
    <div class="uk-panel uk-panel-box uk-margin-bottom">
        <div class="tp-panel-body">
            <form class="uk-form uk-form-stacked" action="{SEARCH_ACTION_URL}" method="get">

            <input type="hidden" name="f" value="search" />
            <input type="hidden" name="e" value="users" />
            <input type="hidden" name="group" value="{PHP.group}" />
            <input type="hidden" name="cat" value="{PHP.cat}" />
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
                                    <input type="text" name="sq" value="{PHP.sq|htmlspecialchars($this)}" class="uk-width-1-1 uk-form-large"/>
                                </div>
                            </div>
                        </div>
                        <!-- IF {PHP.cot_plugins_active.catbox} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-form-label">{PHP.L.Category}</label>
                                <div class="uk-form-controls">
                                    {PHP.c|cot_catbox('usercategories', $this, 'rcat', '0', '', 'uk-column-medium-1-2')}
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
                <h1 class="uk-text-contrast uk-h2"><!-- IF {PHP.cat} -->{CATTITLE}<!-- ELSE -->{USERS_TITLE}<!-- ENDIF -->
                </h1>
                <!-- IF {PHP.env.ext} == 'projects' AND {PHP.c} == '' --> 
                <p class="uk-text-contrast uk-text-large">   
                {PHP.L.Projects_description_list}
                </p>
                <!-- ENDIF -->
                <!-- IF {CATDESC} -->
                <p class="uk-text-contrast uk-text-large">
                    {CATDESC}
                </p>
                <!-- ENDIF -->
            </div>
            <!-- IF {PHP.usr.id} == 0 -->
            <div class="uk-width-medium-1-4 uk-margin-small-top">
                <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-width-1-1" href="{PHP.cot_groups.4.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.L.I_am_an_freelancer}</a>
                <p><a class="tp-button uk-button tp-text-transform uk-width-1-1" href="{PHP.cot_groups.7.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.L.I_am_an_employer}</a></p>
            </div>
            <!-- ENDIF -->
        </div>
    </div>
</div>

<!-- IF {PHP.cot_plugins_active.usercategories} -->
<div class="uk-container uk-container-center uk-margin-large-top">
    <ul class="tp-list uk-list uk-column-1-1 uk-column-medium-1-3" data-uk-nav="{multiple:true}">
        {USERCATEGORIES_CATALOG}
    </ul>
</div> 
<!-- ENDIF -->

<div class="uk-block uk-block-muted uk-margin-top">
    <div class="uk-container uk-container-center uk-margin-large-top">
        <div class="uk-grid-width-small-1-1 uk-grid-width-medium-1-2" data-uk-grid="{gutter: 30}">
        <!-- BEGIN: USERS_ROW -->
        <div>
            <div class="uk-panel uk-panel-box">
                <div class="tp-panel-body">
                    <div class="uk-grid">
                        <div class="uk-width-1-4">
                            <!-- IF {USERS_ROW_AVATAR_SRC} -->
                            <img class="avatar uk-border-circle" width="100" height="100" alt="{USERS_ROW_OWNER_NICKNAME}" src="{USERS_ROW_AVATAR_SRC}">
                            <!-- ELSE -->
                            <img class="avatar uk-border-circle" width="100" height="100" alt="{USERS_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                            <!-- ENDIF -->
					<!-- IF {PHP.usr.auth.plug.loginAsUser} AND {USERS_ROW_ID} != {PHP.usr.id} AND {PHP.usr.maingrp} == 5 -->
                        <a href="{USERS_ROW_ID|cot_url('loginAsUser', 'uid=$this')}" class="uk-text-small "><span class="">Войти как {USERS_ROW_NICKNAME}</span></a>
                    <!-- ENDIF -->
                        </div>
                        <div class="uk-width-3-4">
                            <h5 class="uk-text-truncate uk-margin-bottom-remove"><a class="tp-color-ts" href="{USERS_ROW_DETAILSLINK}">
								<!-- IF {USERS_ROW_PERS_FIRSTNAME} AND {USERS_ROW_PERS_SURNAME} -->
								<span class="uk-text-bold">{USERS_ROW_PERS_FIRSTNAME} {USERS_ROW_PERS_SURNAME}</span>
								<!-- ELSE -->
								{USERS_ROW_NICKNAME}
								<!-- ENDIF -->
							</a></h5>

                            <span class="uk-text-small uk-text-muted tp-text-transform">{USERS_ROW_REGDATE_STAMP|cot_date('j M Y', $this)}</span> 
                            <!-- IF {USERS_ROW_ISPRO} -->
                            <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                            <!-- ENDIF -->
                            <p>
                       <!-- IF {USERS_ROW_TEXT} -->
                       <p class="uk-text-primary">{USERS_ROW_TEXT|cot_string_truncate($this,170)}</p>
                       <!-- ELSE -->
                       <p class="uk-text-muted">{PHP.cfg.maintitle} - {PHP.cfg.subtitle} ( в настройках профиля смените текст на свой)</p>
                       <!-- ENDIF -->
                            </p>
                            </p>
                            <hr />
                            <div class="uk-grid">
                                <!-- IF {PHP.cot_plugins_active.userpoints} AND {PHP.cot_plugins_active.pointstostars} -->
                                <div class="uk-width-1-4 uk-text-warning uk-hidden-small">
                                    <div data-uk-tooltip="{pos:'left'}" title="{USERS_ROW_USERPOINTS}">{USERS_ROW_USERPOINTS|cot_pointstostars($this)}</div>
                                </div>
                                <!-- ENDIF -->

                                <div class="uk-width-3-4">
                                    <div class="uk-grid">
                                        <!-- IF {PHP.cot_plugins_active.reviews} -->
                                        <div class="uk-width-medium-1-2 uk-text-right">
                                             {PHP|cot_uk_icon("uk-icon-thumbs-o-down uk-text-danger")} &nbsp;{USERS_ROW_REVIEWS_NEGATIVE_SUMM} &nbsp;&nbsp;
                                             {PHP|cot_uk_icon("uk-icon-thumbs-o-up uk-text-success")}&nbsp; {USERS_ROW_REVIEWS_POZITIVE_SUMM}
                                        </div>
                                        <!-- ENDIF -->
                                        <!-- IF {PHP.cot_plugins_active.whosonline} -->
                                        <div class="uk-width-medium-1-2 uk-text-right uk-hidden-small">
                                            <!-- IF {USERS_ROW_ONLINE} > 0 -->
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
            </div>
        </div> 
        <!-- END: USERS_ROW -->
        </div>
        <!-- IF {USERS_TOP_TOTALUSERS} > 0 -->
        <ul class="uk-pagination">
            {USERS_TOP_PAGNAV}
        </ul>
        <!-- ELSE -->
        <div class="uk-alert">{PHP.L.Noitemsfound}</div>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->