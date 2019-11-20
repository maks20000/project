<!-- BEGIN: MAIN -->
<div class="uk-block uk-block-muted">
<div class="uk-container-center uk-width-1-1 tp-padd-large">
    <h4 class="tp-text-transform"><span class="uk-text-success uk-text-bold" data-uk-tooltip="{pos:'bottom'}" title="Никнейм на сайте">{USERS_DETAILS_NICKNAME}</span> - <span class="uk-text-primary uk-text-bold" data-uk-tooltip="{pos:'bottom'}" title="Группа пользователя">{USERS_DETAILS_MAINGRPNAME}</span></h4>
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-1-4">
            <div class="tp-box uk-panel">
                <!-- IF {PHP.usr.id} == {PHP.urr.user_id} OR {PHP.usr.isadmin} -->
                <ul class="tp-navbar-nav">
                    <li data-uk-dropdown="{mode:'click'}" >
                        <a class="tp-hover-icons uk-text-success" data-uk-tooltip="{pos:'top'}" title="Изменить профиль" href="#"><i class="uk-icon-edit uk-icon-medium"></i></a>
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
                <!-- ENDIF -->\                    <!-- IF {PHP.usr.auth.plug.loginAsUser} AND {USERS_DETAILS_ID} != {PHP.usr.id} AND {PHP.usr.maingrp} == 5 -->
                    <span class="uk-margin-cenrer">
                        <a href="{USERS_DETAILS_ID|cot_url("loginAsUser", "uid=$this")}" class="uk-text-small uk-button uk-button-primary">Войти как {USERS_DETAILS_NICKNAME}</a>
                    </span>
                    <!-- ENDIF -->
                </div>
                        <!-- IF {PHP.cot_plugins_active.userpoints} AND {PHP.cot_plugins_active.pointstostars} -->
                        <div class="uk-text-warning uk-text-center uk-margin-remove-top">
                            <div data-uk-tooltip="{pos:'top'}" title="{USERS_DETAILS_USERPOINTS}">{USERS_DETAILS_USERPOINTS|cot_pointstostars($this)}</div>
                        </div>
                        <!-- ENDIF -->
                <div class="uk-text-center">
                    <h1 class="ti-linck-black uk-text-bold uk-margin-remove">
						<!-- IF {USERS_DETAILS_PERS_FIRSTNAME} AND {USERS_DETAILS_PERS_SURNAME} -->
						<span class="uk-text-bold">{USERS_DETAILS_PERS_FIRSTNAME} {USERS_DETAILS_PERS_SURNAME}</span>
						<!-- ELSE -->
						{USERS_DETAILS_NICKNAME}
						<!-- ENDIF -->
					
					</h1>
                
				<div class="uk-text-small uk-text-success">{PHP.L.Build_timeago_title}: <span class="uk-text-bold">{USERS_DETAILS_LASTLOG_STAMP|cot_build_timeago()}</span></div>
				</div>
				
                <div class="uk-panel-body">
                    <hr />

                    <ul class="uk-list uk-list-line uk-margin-remove">
                        <li><span class="uk-text-bold ti-linck-black"><i class="uk-icon-bar-chart"></i> {PHP.L.Rating_title} :</span> <span class="uk-float-right uk-text-primary">{USERS_DETAILS_USERPOINTS}</span></li>
						<li><span class="uk-text-bold ti-linck-black"><i class="uk-icon-users"></i> Группа: </span><span class="uk-float-right uk-text-bold uk-text-primary">{USERS_DETAILS_MAINGRP}</span></li>
						<!-- IF {PHP.cot_plugins_active.verification} -->
						<!-- IF {USERS_DETAILS_VERIFICATION_STATUS} -->
						<li><span class="uk-text-bold ti-linck-black"></span><span class="uk-margin uk-text-bold uk-text-success">{USERS_DETAILS_VRF_STATUS}</span></li>
						<!-- ELSE -->
						<li><span class="uk-text-bold uk-text-warning"><i class="uk-icon-exclamation-triangle uk-icon-small uk-margin-right"></i>  Пользователь не верифицирован</span>
						</li>
						<li>
						<!-- IF {PHP.usr.id} == {USERS_DETAILS_ID} -->
						<a class="uk-width-medium-1-1 uk-button uk-button-success" href="{PHP|cot_url('verification')}">Пройти верификацию</a>
						<!-- ENDIF -->
						</li>
						<!-- ENDIF -->
						<!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_ISPRO} -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Account_title} :</span> <span class="uk-float-right uk-text-danger uk-text-bold">{PHP.L.Ak_pro}</span></li>
                        <!-- ENDIF -->

                        


                        <!-- IF {USERS_DETAILS_REGDATE} -->
                        <li><span class="uk-text-bold ti-linck-black">{PHP.L.Registered} :</span> <span class="uk-float-right">{USERS_DETAILS_REGDATE_STAMP|cot_date('j M Y', $this)}</span></li>
                        <!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_LASTLOG} -->
                        <li><span class="uk-text-bold ti-linck-black">Последний визит:</span> <span class="uk-float-right">{USERS_DETAILS_LASTLOG}</span></li>
                        <!-- ENDIF -->

                    </ul>
				<div class="uk-margin-top">
				<!-- IF {PHP.cot_plugins_active.sbr} -->
					<!-- IF {PHP.usr.id} > 0  -->
						<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
						<a class="uk-width-medium-1-1 uk-button uk-button-success" href="{PHP|cot_url('sbr')}">{PHP.L.sbr_mydeals}</a>
						<!-- ELSE -->
						<a class="uk-width-medium-1-1 uk-button uk-button-success" href="{USERS_DETAILS_ID|cot_url('sbr', 'm=add&uid='$this)}">{PHP.L.sbr_createlink}</a>
						<!-- ENDIF -->
					<!-- ENDIF -->
					<!-- IF {PHP.usr.id} == 0 -->
					<a class="uk-button uk-button-primary uk-width-medium-1-1" data-uk-modal="{target:'#log'}" href="#">{PHP.L.sbr_createlink}</a>
					<!-- ENDIF -->	
				<!-- ENDIF -->
				</div>
				<div class="uk-margin-top">
				<!-- IF {PHP.cot_modules.pm} && {PHP.usr.id} > 0 AND {PHP.usr.id} != {USERS_DETAILS_ID} -->
				<a class="uk-button uk-button-primary uk-width-medium-1-1" href="{USERS_DETAILS_ID|cot_url('pm', 'm=send&to=$this')}">Написать сообщение</a>
				<!-- ENDIF -->
				<!-- IF {PHP.usr.id} == 0 -->
				<a class="uk-button uk-button-primary uk-width-medium-1-1" data-uk-modal="{target:'#log'}" href="#">Войти и написать</a>
				<!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.paytop} -->
					<!-- IF {PHP.usr.id} > 0  -->
						<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
						<a class="uk-width-medium-1-1 uk-button uk-button-success" href="{USERS_DETAILS_ID|cot_url('paytop', 'id='$this)}">{PHP.L.paytop_userpage}</a>
						<!-- ENDIF -->
						<!-- IF {PHP.usr.isadmin} -->
						<a class="uk-width-medium-1-1 uk-button uk-button-success" href="{USERS_DETAILS_ID|cot_url('admin', 'm=other&p=paytop&id='$this)}">{PHP.L.paytop_userpage}</a>
						<!-- ENDIF -->
					<!-- ENDIF -->
				<!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.paypro} -->
					<!-- IF {PHP.usr.id} > 0  -->
						<!-- IF {PHP.usr.id} == {PHP.urr.user_id} -->
						<a class="uk-width-medium-1-1 uk-button uk-button-success" href="{PHP|cot_url('plug', 'e=paypro')}">Купить ПРО</a>
						<!-- ENDIF -->
						<!-- IF {PHP.usr.isadmin} -->
						<a class="uk-width-medium-1-1 uk-button uk-button-success" href="{USERS_DETAILS_ID|cot_url('admin', 'm=other&p=paypro&id='$this)}">{PHP.L.paypro_giftpro}</a>
						<!-- ENDIF -->
					<!-- ENDIF -->
				<!-- ENDIF -->
				</div>

                </div>
            </div>
        </div>
        <div class="uk-width-medium-3-4">
            <div class="tp-box uk-panel">
                <div class="uk-panel-body">
                    
                    <ul class="uk-tab" data-uk-tab="{connect:'#IdUsers', animation: 'slide-left'}">
					<li><a href="">{PHP.L.Main}</a></li>
                        <!-- IF {PHP.cot_modules.folio} -->
                        <li<!-- IF {PHP.tab} == 'portfolio' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_FOLIO_URL}#tab_portfolio" data-toggle="tab">{PHP.L.folio} {USERS_DETAILS_FOLIO_COUNT}</a></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_modules.market} -->
                        <li<!-- IF {PHP.tab} == 'market' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_MARKET_URL}#tab_market" data-toggle="tab">{PHP.L.market} {USERS_DETAILS_MARKET_COUNT}</a></li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_plugins_active.reviews} -->
                        <li<!-- IF {PHP.tab} == 'reviews' --> class="active"<!-- ENDIF -->><a href="{USERS_DETAILS_REVIEWS_URL}#tab_reviews" data-toggle="tab">{PHP.L.reviews_reviews} {USERS_DETAILS_REVIEWS_COUNT}</a></li>
                        <!-- ENDIF -->
						<!-- <li><a href="">Категории работ</a></li> -->
                        <!-- IF {USERS_DETAILS_CATS} -->
                        <li><a href="">Категории работ</a></li>
                        <!-- ENDIF -->
                    </ul>

                    <ul id="IdUsers" class="uk-switcher uk-margin-top">
                <li>
					

						<span class="uk-text-bold ti-linck-black">Немного о себе: </span> 
						<div class="tp-box">
						<div class="uk-margin-top">
				        <!-- IF {USERS_DETAILS_TEXT} -->
						 
							<span class="uk-text-bold uk-text-primary">{USERS_DETAILS_TEXT}</span>
                        <!-- ELSE -->
                            {PHP.L.Users_signature_description}
						
                        <!-- ENDIF -->
						</div>
						</div>
					<hr />
					
                            <div class="uk-overflow-container">
                                <table class="uk-table uk-table-striped">
                                    <!-- <thead>
                                        <tr>
                                            <th>Table Heading1</th>
                                            <th>Table Heading2</th>
                                            <th>Table Heading3</th>
                                        </tr>
                                    </thead> -->
                                    <tbody>
									<!-- IF {USERS_DETAILS_FIO_PRIVATE_MASTER} -->
                                        <tr>
											<td><span class="uk-text-bold ti-linck-black">{USERS_DETAILS_FIO_PRIVATE_MASTER_TITLE}:</span></td>
											<td><span class="uk-text-bold uk-text-primary">{USERS_DETAILS_FIO_PRIVATE_MASTER}</span></td>
                                        </tr>
									<!-- ENDIF -->
									<!-- IF  {USERS_DETAILS_AGE} -->
                                        <tr>
											<td><span class="uk-text-bold ti-linck-black">{PHP.L.Age} (полных лет):</span></td>
											<td><span class="uk-text-bold uk-text-primary">{USERS_DETAILS_AGE}</span></td>
                                        </tr>
									<!-- ENDIF -->
									<!-- IF  {USERS_DETAILS_CITY} -->
                                        <tr>
											<td><span class="uk-text-bold ti-linck-black">Город:</span></td>
											<td><span class="uk-text-bold uk-text-primary">{USERS_DETAILS_CITY}</span></td>
                                        </tr>
									<!-- ENDIF -->
									<!-- IF {USERS_DETAILS_REGION} -->
                                        <tr>
											<td><span class="uk-text-bold ti-linck-black">Область:</span></td>
											<td><span class="uk-text-bold uk-text-primary">{USERS_DETAILS_REGION}</span></td>
                                        </tr>
									<!-- ENDIF -->
									<!-- IF {USERS_DETAILS_SITE_ADRESS} -->
                                        <tr>										
											<td><span class="uk-text-bold ti-linck-black">{USERS_DETAILS_SITE_ADRESS_TITLE}</span></td>
											<td><span class="uk-text-bold uk-text-primary">
											<!-- IF {PHP.usr.id} > 0 -->
											{USERS_DETAILS_SITE_ADRESS}
											<!-- ENDIF -->
											<!-- IF {PHP.usr.id} == 0 -->
											Гостям не показывается
											<!-- ENDIF -->

											</span>
											</td>
                                        </tr>
									<!-- ENDIF -->
									<!-- IF {USERS_DETAILS_CODEGOSREG} -->
                                        <tr>										
											<td><span class="uk-text-bold ti-linck-black">{USERS_DETAILS_CODEGOSREG_TITLE}</span></td>
											<td><span class="uk-text-bold uk-text-primary">
											<!-- IF {PHP.usr.id} > 0 -->
											{USERS_DETAILS_CODEGOSREG}
											<!-- ENDIF -->
											<!-- IF {PHP.usr.id} == 0 -->
											Гостям не показывается
											<!-- ENDIF -->

											</span>
											</td>
                                        </tr>
									<!-- ENDIF -->
                                        <tr>
											<!-- IF {USERS_DETAILS_TELEPHONE} -->
											<td><span class="uk-text-bold ti-linck-black">{USERS_DETAILS_TELEPHONE_TITLE}:</span></td>
											<td><span class="uk-text-bold uk-text-primary">
											<!-- IF {PHP.usr.id} > 0 -->
											{USERS_DETAILS_TELEPHONE}
											<!-- ENDIF -->
											<!-- IF {PHP.usr.id} == 0 -->
											Гостям не показывается
											<!-- ENDIF -->
											
											</span>
											</td>
											<!-- ENDIF -->
                                        </tr>
									<!-- IF {USERS_DETAILS_EMAIL} -->
                                        <tr>										
											<td><span class="uk-text-bold ti-linck-black">{PHP.L.Email}</span></td>
											<td><span class="uk-text-bold uk-text-primary">
											{USERS_DETAILS_EMAIL}
											</span>
											</td>
                                        </tr>
									<!-- ENDIF -->
                                    </tbody>
                                </table>
                            </div>
					
                </li>
                        <!-- IF {PHP.cot_modules.folio} -->
                        <li>
                            <div class="uk-grid" data-uk-grid-margin="">
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
                        <!-- IF {PHP.cot_plugins_active.reviews} -->
                        <li>
                            {REVIEWS}
                        </li>
                        <!-- ENDIF -->
                        <!-- IF {USERS_DETAILS_CATS} -->
                        <li>

                            {USERS_DETAILS_CATS|cot_usercategories_tree($this, '', 'list')}
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