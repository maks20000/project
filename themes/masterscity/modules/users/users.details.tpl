<!-- BEGIN: MAIN -->
<div class="uk-block uk-block-muted">
<div class="uk-container-center uk-width-1-1 tp-padd-large">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-1-4">
            <div class="tp-box uk-panel">
                <!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.isadmin} -->
                <ul class="tp-navbar-nav">
                    <li data-uk-dropdown="{mode:'click'}" >
                        <a class="tp-hover-icons uk-text-muted" href="#"><i class="uk-icon-pencil uk-text-large"></i></a>
                        <div class="uk-dropdown uk-dropdown-small uk-dropdown-flip uk-dropdown-bottom">
                            <ul class="uk-nav uk-nav-navbar">
                                <!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
                                <li><a href="{PHP|cot_url('users', 'm=profile')}" class="btn btn-info btn-block">{PHP.L.Edit_own_profile}</a></li>
                                <!-- ENDIF -->
                                
                                <!-- BEGIN: USERS_DETAILS_ADMIN -->
                                <li>{USERS_DETAILS_ADMIN_EDIT}</li>
                                <!-- END: USERS_DETAILS_ADMIN -->
                            </ul>
                        </div>
                    </li>
                </ul>
                <!-- ENDIF -->
                 
                <div class="uk-panel-body uk-text-center">
                <!-- IF {USERS_DETAILS_AVATAR_SRC} -->
                <img class="tp-profile-user-img uk-border-circle" width="100" height="100" alt="{USERS_DETAILS_NICKNAME}" src="{USERS_DETAILS_AVATAR_SRC}">
                <!-- ELSE -->
                <img class="tp-profile-user-img uk-border-circle" width="100" height="100" alt="{USERS_DETAILS_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                <!-- ENDIF -->
                </div>
                <div class="uk-text-center">
                    <h1 class="ti-linck-black uk-text-bold uk-margin-remove">{USERS_DETAILS_NICKNAME}</h1>
                </div>
                <div class="uk-panel-body">
                    <hr />

                    <ul class="uk-list uk-list-line uk-margin-remove">
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Rating_title} :</span> <span class="uk-float-right uk-text-primary">{USERS_DETAILS_USERPOINTS}</span></li>
                        <!-- IF {USERS_DETAILS_ISPRO} -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Account_title} :</span> <span class="uk-float-right uk-text-danger uk-text-bold">{PHP.L.Ak_pro}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_REGION} {USERS_DETAILS_CITY} OR {USERS_DETAILS_REGION} OR {USERS_DETAILS_CITY} -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Location} :</span> <span class="uk-float-right"> {USERS_DETAILS_REGION} {USERS_DETAILS_CITY}</span></li>
                        <!-- ENDIF -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Country} :</span> <span class="uk-float-right">{USERS_DETAILS_COUNTRYFLAG}</span></li>
                        <!-- IF {PHP.cot_modules.pm} -->
                        <!-- {PHP.usr.id} > 0 -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.To_send_a_letter} :</span> <span class="uk-float-right">{USERS_DETAILS_PM}</span></li>
                        <!-- ENDIF -->
                        <!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_BIRTHDATE} -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Birthdate} :</span> <span class="uk-float-right">{USERS_DETAILS_BIRTHDATE}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_AGE} -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Age} :</span> <span class="uk-float-right">{USERS_DETAILS_AGE}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_REGDATE} -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Registered} :</span> <span class="uk-float-right">{USERS_DETAILS_REGDATE_STAMP|cot_date('j M Y', $this)}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_CATS} -->
                        <li>
                            <span class="uk-text-bold ti-linck-black">{PHP.L.Skills_title}</span>
                            <br />
                            {USERS_DETAILS_CATS|cot_usercategories_tree($this, '', 'list')}
                        </li>
                        <!-- ENDIF -->
                    </ul>

                    <!-- IF {PHP.cot_plugins_active.paypro} && {PHP.usr.id} > 0 AND {PHP.usr.id} != {USERS_DETAILS_ID} -->
                    <p>
                    <a class="uk-button uk-button-danger uk-width-1-1" href="<!-- IF {PHP.usr.isadmin} -->{USERS_DETAILS_ID|cot_url('admin', 'm=other&p=paypro&id='$this)}<!-- ELSE -->{USERS_DETAILS_ID|cot_url('paypro', 'id='$this)}<!-- ENDIF -->">{PHP.L.paypro_giftpro}</a>
                    </p>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
        <div class="uk-width-medium-3-4">
            <div class="tp-box uk-panel">
                <div class="uk-panel-body">
                    
                    <ul class="uk-tab" data-uk-tab="{connect:'#IdUsers', animation: 'slide-bottom'}">
                        <!-- IF {PHP.cot_modules.folio} -->
                        <li<!-- IF {PHP.tab} == 'portfolio' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_FOLIO_URL}#tab_portfolio" data-toggle="tab">{PHP.L.folio} {USERS_DETAILS_FOLIO_COUNT}</a></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.market} -->
                        <li<!-- IF {PHP.tab} == 'market' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_MARKET_URL}#tab_market" data-toggle="tab">{PHP.L.market} {USERS_DETAILS_MARKET_COUNT}</a></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.projects} -->
                        <li<!-- IF {PHP.tab} == 'projects' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_PROJECTS_URL}#tab_projects" data-toggle="tab">{PHP.L.projects_projects} {USERS_DETAILS_PROJECTS_COUNT}</a></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_plugins_active.reviews} -->
                        <li<!-- IF {PHP.tab} == 'reviews' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_REVIEWS_URL}#tab_reviews" data-toggle="tab">{PHP.L.reviews_reviews} {USERS_DETAILS_REVIEWS_COUNT}</a></li>
                        <!-- ENDIF -->
                    </ul>

                    <ul id="IdUsers" class="uk-switcher uk-margin-top">
                        <!-- IF {PHP.cot_modules.folio} -->
                        <li>
                            <div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-4" data-uk-grid="">
                            {PORTFOLIO}
                            </div>
                        </li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.market} -->
                        <li>
                            <div class="uk-grid" data-uk-grid-margin="">
                            {MARKET}
                            </div>
                        </li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.projects} -->
                        <li>
                            {PROJECTS}
                        </li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_plugins_active.reviews} -->
                        <li>
                            {REVIEWS}
                        </li>
                        <!-- ENDIF -->
                    </ul>
   
                </div>
            </div>
        </div>
    </div>
</div>
</div>
<!-- END: MAIN -->