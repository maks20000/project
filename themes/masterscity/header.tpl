<!-- BEGIN: HEADER -->
<!DOCTYPE HTML>
<html lang="ru">
    <head>
        <meta charset="utf-8" />
        <title>{HEADER_TITLE}</title>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="shortcut icon" href="favicon.ico" />
        <!-- IF {HEADER_META_DESCRIPTION} -->
        <meta name="description" content="{HEADER_META_DESCRIPTION}" />
        <!-- ENDIF -->
        <!-- IF {HEADER_META_KEYWORDS} -->
        <meta name="keywords" content="{HEADER_META_KEYWORDS}" />
        <!-- ENDIF -->
        <link rel="canonical" href="{HEADER_CANONICAL_URL}" />
        
        {HEADER_BASEHREF} 
        {HEADER_HEAD}
        
    </head>
    <body>
        <!-- IF {PHP.usr.id} == 0 -->
        <!-- LOG -->
        <div id="log" class="uk-modal">
            <div class="tp-modal-dialog uk-modal-dialog uk-animation-scale-up">
                <div class="uk-text-center uk-margin-large-bottom">
                    <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
                </div>
                <!-- IF !{PHP.msg} -->
                <form class="uk-form" action="{HEADER_GUEST_SEND}" method="post">
                    <div class="uk-form-row">
                        <div class="uk-form-icon">
                            {PHP|cot_uk_icon("uk-icon-user")}
                            <input class="uk-form-large uk-width-1-1" name="rusername" type="text" required="" placeholder="{PHP.L.users_nameormail}">
                        </div>
                    </div>
                    <div class="uk-form-row">
                        <div class="uk-form-icon">
                            {PHP|cot_uk_icon("uk-icon-unlock-alt")}
                            <input class="uk-form-large uk-width-1-1" name="rpassword" type="password" required="" placeholder="{PHP.L.Password}">
                        </div>
                    </div>
                    <div class="uk-grid uk-margin-top" data-uk-grid-margin="">
                        <div class="uk-width-medium-1-2">
                            <label class="tp-color">
                                {HEADER_GUEST_COOKIETTL} {PHP.L.users_rememberme}
                            </label>
                        </div>
                    </div>
                    <button class="uk-margin-top tp-text-transform uk-button uk-button-primary uk-button-large uk-width-1-1" type="">{PHP.L.Login}</button>
                    <div class="uk-modal-footer">
					<hr class="uk-divider">
                        <div class="uk-grid" data-uk-grid-margin="">
                            <div class="uk-width-medium-1-2 uk-margin-small-top">
                                <a class=" uk-width-1-1 uk-button uk-button-success tp-text-transform" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a>
                            </div>
                            <div class="uk-width-medium-1-2 uk-margin-small-top">
                                <a class=" uk-width-1-1 uk-button tp-text-transform" data-uk-modal="" href="#hellp">{PHP.L.users_lostpass}?</a>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- ENDIF --> 
            </div>
        </div>
        <!--/ LOG -->

        <!-- HELLP -->
        <div id="hellp" class="uk-modal">
            <div class="tp-modal-dialog-rigis uk-modal-dialog uk-animation-scale">
                <div class="uk-modal-header uk-float-left">
                    {PHP.L.pasrec_title|cot_uk_heading(2, "$this")}
                </div>
                <div class="uk-text-right">
                    <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
                </div>
                <ul class="uk-list">
                    <li>1. {PHP.L.pasrec_explain1}</li>
                    <li>2. {PHP.L.pasrec_explain2}</li>
                    <li>3. {PHP.L.pasrec_explain3}</li>
                </ul>
                <form class="uk-form" method="post" action="{PHP|cot_url('users', 'm=passrecover&a=request')}" name="reqauth">
                    <div class="uk-form-row uk-form uk-form-stacked">
                        <div class="uk-form-icon">
                            {PHP|cot_uk_icon("uk-icon-envelope")}
                            <input class="uk-form-large uk-width-1-1" type="text" required="" value="" name="email" maxlength="64" placeholder="{PHP.L.pasrec_youremail}">
                        </div>
                    </div>
                    <p class="uk-text-primary">
                        {PHP.L.pasrec_explain4}
                    </p>
                    <div class="uk-modal-footer">
                        <div class="uk-float-left">
                            <a class="tp-color-ts uk-button uk-button-large uk-button-link" data-uk-modal="" href="#log">{PHP.L.Login}</a>
                            <a class="tp-color-ts uk-button uk-button-large uk-button-link" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a>
                        </div>
                        <div class="uk-text-right">
                            <button class="uk-button uk-button-large uk-button-success" type="submit">{PHP.L.Send_inquiry}</button>
                        </div>
                    </div>
                </form>
            </div>
        </div>
        <!-- /HELLP -->


        <!-- ENDIF -->

        <!-- IF {PHP.env.ext} == 'users' ! {PHP.m} == 'passrecover' -->    
        <!-- IF {PHP.env.ext} == 'users' ! {PHP.m} == 'register' -->
        <!-- IF {PHP._SERVER.REQUEST_URI|substr($this, 0, 6)} != '/login --> 
        <nav class="uk-hidden-small tp-navbar uk-navbar" id="tp-top-smooth-scroll" <!-- IF {PHP.usr.id} > 0 -->data-uk-sticky="{top:-200, animation: 'uk-animation-slide-top'}"<!-- ENDIF -->>
        <div class="uk-container uk-container-center">
            <div class="uk-animation-slide-left">
                <div class="uk-navbar-content">
                    <a target="_blank" class="uk-text-contrast" data-uk-tooltip="{pos:'bottom'}" title="Odnoklassniki" href="{PHP.L.Twitter_url}">
                         {PHP|cot_uk_icon("uk-icon-odnoklassniki")}
                    </a>
                </div>
                <div class="uk-navbar-content">
                    <a target="_blank" class="uk-text-contrast" data-uk-tooltip="{pos:'bottom'}" title="Vk" href="{PHP.L.Vk_url}">
                         {PHP|cot_uk_icon("uk-icon-vk")}
                    </a>
                </div>
            </div>

            <!-- BEGIN: GUEST -->
            <ul class="uk-navbar-nav uk-hidden-small uk-navbar-flip">
			{PHP.box2}
			
			    <li class="uk-parent">
                    <a data-uk-offcanvas class="uk-margin-right" href="#offcanvas-menu-left"><i class="uk-icon-exclamation-circle"></i> &nbsp;{PHP|cot_uk_icon("uk-icon-angle-down")}</a> 
                </li>
			    
                <li><a class="tp-text-transform" data-uk-modal="" href="#log">{PHP.L.Login}</a></li>
                <!-- <li><a class="tp-text-transform" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a></li> -->
                <li class="uk-parent" data-uk-dropdown="">
                    <a data-uk-offcanvas class="tp-text-transform" href="#offcanvas-menu-right">{PHP.L.Register}<i class="uk-icon-angle-down uk-margin-left"></i> </a>
                </li>
            </ul>
            
    <div id="offcanvas-menu-left" class="uk-offcanvas">
      <div class="uk-offcanvas-bar uk-offcanvas-bar-show">
        <ul class="uk-nav-info uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="">
            <li><a class="tp-text-transform" href="index.php"><i class="uk-icon-home"></i> Главная</a></li>
            <li><a class="tp-text-transform" href="{HEADER_FIND_SERVICE}"><i class="uk-icon-star"></i> Найти услугу</a></li>
            <li><a class="tp-text-transform" href="{HEADER_FIND_TURNS}"><i class="uk-icon-users"></i> Найти очередь</a></li>
			<!-- IF {PHP.usr.id} == 0 -->
			 <li><a class="tp-text-transform" href="{HEADER_AM_FREELANCER}"><i class="uk-icon-user"></i> Я исполнитель</a></li>
			<!-- ENDIF -->
           <!-- IF {PHP.usr.id} > 0 -->
			 <li><a class="tp-text-transform" href="{HEADER_PROJECT_ADD}"><i class="uk-icon-plus-circle"></i> Создать заказ</a></li>
			 <li><a class="tp-text-transform" href="{HEADER_PROJECT_MYPROJECTS}"><i class="uk-icon-bookmark"></i> Мои заказы</a></li>
			<!-- ENDIF -->
            <li><a class="tp-text-transform" href="{HEADER_INFO}"><i class="uk-icon-life-ring"></i> Инфо - центр</a></li>
            <li><a class="tp-text-transform" href="{HEADER_SERVICES}"><i class="uk-icon-credit-card"></i> Платные услуги</a></li>
        </ul>
      </div>
    </div>
       
<div id="offcanvas-menu-right" class="uk-offcanvas">
      <div class="uk-offcanvas-bar uk-offcanvas-bar-flip">
        <ul class="uk-nav-info uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="">
            <li><a class="tp-text-transform" href="{PHP.cot_groups.7.alias|cot_url('users', 'm=register&usergroup='$this)}"> {PHP.cot_groups.7.title}</a></li>
            <li><a class="tp-text-transform" href="{PHP.cot_groups.4.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.cot_groups.4.title}</a></li>
            <li><a class="tp-text-transform" href="{PHP.cot_groups.8.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.cot_groups.8.title}</a></li>
        </ul>
      </div>
    </div>
       
            
            <!-- END: GUEST -->

            <!-- BEGIN: USER -->
            <ul class="uk-navbar-nav uk-navbar-flip uk-hidden-small">
			{PHP.box2}
			    <li class="uk-parent" data-uk-dropdown="">
                    <a data-uk-offcanvas class="uk-margin-right" href="#offcanvas-menu-left"><i class="uk-icon-exclamation-circle"></i> &nbsp;{PHP|cot_uk_icon("uk-icon-angle-down")}</a>
                </li>
                <!-- IF {PHP.cot_modules.payments} -->
                <li><a href="{HEADER_USER_BALANCE_URL}"> {PHP.L.payments_mybalance}: {HEADER_USER_BALANCE|number_format($this, '2', '.', '')} {PHP.cfg.payments.valuta}</a></li>
                <!-- ENDIF -->

                <!-- IF {PHP.cot_modules.projects} AND {PHP.usr.maingrp} == 4 OR {PHP.usr.maingrp} == 8 OR {PHP.usr.maingrp} == 5  -->
                <li class="uk-parent" data-uk-dropdown="">
                    <a href="">{PHP.L.projects_projects} &nbsp;{PHP|cot_uk_icon("uk-icon-angle-down")}</a> 
                    <div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top">
                        <ul class="uk-nav uk-nav-navbar">
                            <!-- IF {PHP.cot_plugins_active.sbr} -->
                            <li><a href="{PHP|cot_url('sbr')}">{PHP.L.sbr_mydeals}</a></li>
                            <!-- ENDIF -->
                            <!-- IF {PHP|cot_auth('projects', 'any', '1')} -->
                            <li><a href="{PHP|cot_url('projects', 'm=useroffers')}">{PHP.L.offers_useroffers}: {HEADER_USER_PRJ_OFFERS_PUBLISHED}</a></li>
                            <!-- ENDIF -->
                        </ul>
                    </div>
                </li>
                <!-- ENDIF -->
                <!-- IF {PHP.cot_modules.projects} AND {PHP.usr.maingrp} == 7 -->
                <li class="uk-parent" data-uk-dropdown="">
                    <a href="">{PHP.L.projects_projects} &nbsp;{PHP|cot_uk_icon("uk-icon-angle-down")}</a> 
                    <div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top">
                        <ul class="uk-nav uk-nav-navbar">
							<!-- IF {PHP.usr.maingrp} == 7 -->
                            <li><a href="{PHP|cot_url('projects', 'm=add')}">{PHP.L.projects_add_to_catalog}</a></li>
                            <!-- ENDIF -->
                            <!-- IF {PHP.cot_plugins_active.sbr} -->
							
                            <li><a href="{PHP|cot_url('sbr')}">{PHP.L.sbr_mydeals}</a></li>
                            <!-- ENDIF -->
                           


                        </ul>
                    </div>
                </li>
                <!-- ENDIF -->

                <!-- IF {PHP.cot_plugins_active.marketorders} -->
                <li class="uk-parent" data-uk-dropdown="">
                    <a href="">{PHP.L.market} &nbsp;{PHP|cot_uk_icon("uk-icon-angle-down")}</a> 
                    <div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top">
                        <ul class="uk-nav uk-nav-navbar">
						<!-- IF {PHP.usr.maingrp} == 4 OR {PHP.usr.maingrp} == 5 OR {PHP.usr.maingrp} == 8 -->
                            <li><a href="{PHP|cot_url('marketorders', 'm=sales')}">{PHP.L.marketorders_mysales}</a></li>
							<!-- IF {PHP.cot_modules.market} -->
							<li><a href="{PHP|cot_url('market', 'm=add')}">{PHP.L.market_add_product}</a></li>
							<!-- ENDIF -->
							<!-- ELSE -->
                            <li><a href="{PHP|cot_url('marketorders', 'm=purchases')}">{PHP.L.marketorders_mypurchases}</a></li>
						<!-- ENDIF -->
                        </ul>
                    </div>
                </li>
                <!-- ENDIF -->
				<!-- IF {PHP.cot_plugins_active.paypro} -->
                <!-- IF {HEADER_USER_PROEXPIRE} -->
                <li><a href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_extend}" data-uk-tooltip="{pos:'bottom'}">{PHP.L.paypro_header_expire_short} {HEADER_USER_PROEXPIRE|cot_date('d.m.Y', $this)}</a></li>
                <!-- ELSE -->
                <li><a href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_buy}" data-uk-tooltip="{pos:'bottom'}">{PHP.L.paypro_header_buy}</a></li>
                <!-- ENDIF -->
				<!-- ENDIF -->
                <!-- IF {PHP.cot_modules.pm} -->
                <li class="uk-position-relative" data-uk-dropdown="{mode:'click'}">
                    <a class="tp-hover-avatar" href="<!-- IF {PHP.cot_plugins_active.pmlist} -->#<!-- ENDIF --><!-- IF !{PHP.cot_plugins_active.pmlist} -->{PHP|cot_url('pm')}<!-- ENDIF -->">{PHP|cot_uk_icon("uk-icon-envelope")} <span class="tp-coun-pm">{PHP.usr.messages}</span></a>
                    <div class="uk-dropdown uk-dropdown-xlarge uk-dropdown-flip uk-dropdown-navbar uk-dropdown-top uk-padding-left-remove uk-padding-right-remove">
                        <!-- IF {PHP.cot_plugins_active.pmlist} -->
                        <ul class="uk-list uk-list-striped tp-pmlist">
                            {PHP|cot_pmlist(15)}
                        </ul>
                        <!-- ENDIF -->
                        <a class="tp-color-ts tp-text-transform uk-text-bold uk-button uk-button-link uk-button-small uk-width-1-1" href="{PHP|cot_url('pm')}">{PHP.L.All_posts_pmlist}</a>
                    </div>
                </li>
                <!-- ENDIF -->


                <li data-uk-dropdown="{mode:'click'}">
                    <a class="tp-hover-avatar" href="#">
                        <!-- IF {PHP.usr.profile.user_avatar} -->
                        <img class="tp-user-image" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" />  &nbsp; {PHP|cot_uk_icon("uk-icon-angle-down uk-text-contrast")}
                        <!-- ELSE -->
                        <img class="tp-user-image" src="themes/{PHP.theme}/img/avatar.png" alt="{PHP.usr.name}" />  &nbsp;{PHP|cot_uk_icon("uk-icon-angle-down uk-text-contrast")}
                        <!-- ENDIF -->{HEADER_USER_VRF_ICON} &nbsp;
                        <!-- IF {PHP.usr.profile.user_pers_firstname} AND {PHP.usr.profile.user_pers_surname} -->
                        {PHP.usr.profile.user_pers_firstname}&nbsp;{PHP.usr.profile.user_pers_surname}
                        <!-- ELSE -->
                        {PHP.usr.name}
                        <!-- ENDIF -->
                    </a> 
                    <div class="uk-dropdown uk-dropdown-navbar uk-dropdown-top">
                        <ul class="uk-nav uk-nav-navbar">
						<!-- IF {PHP.usr.maingrp} == 7 -->
						<li class="uk-active"><a href="#" title="Вы в группе">{PHP.cot_groups.7.name}</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP.usr.maingrp} == 4 -->
						<li class="uk-active"><a href="#" title="Вы в группе">{PHP.cot_groups.4.name}</a></li>
						<!-- ENDIF -->
						<!-- IF {PHP.usr.maingrp} == 8 -->
						<li><a href="#" title="Вы в группе">{PHP.cot_groups.8.name}</a></li>
						<!-- ENDIF -->
						<li class="uk-nav-divider"></li>
                            <li><a href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{PHP|cot_uk_icon("uk-icon-user")} Моя страница</a></li>
                            <li><a href="{PHP|cot_url('users', 'm=profile')}">{PHP|cot_uk_icon("uk-icon-edit")} {PHP.L.Profile}</a></li>
                            <!-- IF {PHP.usr.maingrp} == 7 -->
                            <!-- IF {PHP.cot_plugins_active.sbr} -->
                            <li><a href="{PHP|cot_url('sbr')}">{PHP|cot_uk_icon("uk-icon-hospital-o")} {PHP.L.sbr_mydeals}</a></li>
                            <!-- ENDIF -->
                            <!-- ENDIF -->
                           <!-- IF {PHP.usr.isadmin} -->
                           <li><a href="{PHP|cot_url('admin')}" target="_blank">{PHP|cot_uk_icon("uk-icon-cog")} {PHP.L.Administrator_title}</a></li>
                           <li>{PHP.glb_vrf_link_admin}</li>
                           <!-- IF {PHP.cot_plugins_active.sbr} -->
                           <li><a href="{PHP|cot_url('admin', 'm=other&p=sbr')}" target="_blank">Адм. "Безопасных сделок"</a></li>
                           <!-- ENDIF -->
                           <!-- ENDIF -->
                           <!-- IF {PHP.cot_plugins_active.support} -->
                           <li><a href="{PHP|cot_url('support')}" title=""><i class="uk-icon-cogs"></i>&nbsp;Техподдержка и помощь</a></li>

                           <!-- ENDIF -->
                           <!-- IF {PHP.out.notices} -->
                           <li>{PHP.out.notices}</li>
                           <!-- ENDIF -->
						   <!-- IF {PHP.cot_plugins_active.ads} -->
						   <li class="nav-item"><a href="{PHP|cot_url('plug', 'e=ads')}">Banners</a></li>
						   <!-- ENDIF -->
                            <li><a href="{PHP.out.loginout_url}">{PHP|cot_uk_icon("uk-icon-power-off")} {PHP.L.Logout}</a></li>
                        </ul>
                    </div>
                </li>
            </ul>
            
            <div id="offcanvas-menu-left" class="uk-offcanvas">
      <div class="uk-offcanvas-bar uk-offcanvas-bar-show">
        <ul class="uk-nav-info uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="">
            <li><a class="tp-text-transform" href="index.php"><i class="uk-icon-home"></i> Главная</a></li>
            <li><a class="tp-text-transform" href="{HEADER_FIND_SERVICE}"><i class="uk-icon-star"></i> Найти услугу</a></li>
            <li><a class="tp-text-transform" href="{HEADER_FIND_TURNS}"><i class="uk-icon-users"></i> Найти очередь</a></li>
			<!-- IF {PHP.usr.id} == 0 -->
			 <li><a class="tp-text-transform" href="{HEADER_AM_FREELANCER}"><i class="uk-icon-user"></i> Я исполнитель</a></li>
			<!-- ENDIF -->
           <!-- IF {PHP.usr.id} > 0 -->
			 <li><a class="tp-text-transform" href="{HEADER_PROJECT_ADD}"><i class="uk-icon-plus-circle"></i> Создать заказ</a></li>
			 <li><a class="tp-text-transform" href="{HEADER_PROJECT_MYPROJECTS}"><i class="uk-icon-bookmark"></i> Мои заказы</a></li>
			<!-- ENDIF -->
            <li><a class="tp-text-transform" href="{HEADER_INFO}"><i class="uk-icon-life-ring"></i> Инфо - центр</a></li>
            <li><a class="tp-text-transform" href="{HEADER_SERVICES}"><i class="uk-icon-credit-card"></i> Платные услуги</a></li>
        </ul>
      </div>
    </div>
       
<div id="offcanvas-menu-right" class="uk-offcanvas">
      <div class="uk-offcanvas-bar uk-offcanvas-bar-flip">
        <ul class="uk-nav-info uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="">
            <li><a class="tp-text-transform" href="{PHP.cot_groups.7.alias|cot_url('users', 'm=register&usergroup='$this)}"> {PHP.cot_groups.7.title}</a></li>
            <li><a class="tp-text-transform" href="{PHP.cot_groups.4.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.cot_groups.4.title}</a></li>
            <li><a class="tp-text-transform" href="{PHP.cot_groups.8.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.cot_groups.8.title}</a></li>
        </ul>
      </div>
    </div> 
            
            
            
            <!-- END: USER -->
        </div>
        </nav>
    <div class="tp-block-small" data-uk-sticky="{top:-300, animation: 'uk-animation-slide-top'}">
    <div class="uk-container uk-container-center">
        <div class="uk-navbar-content uk-hidden-small">
            <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}" title="{PHP.cfg.maintitle} - {PHP.cfg.subtitle}"></a>
        </div>



     
        <div class="uk-navbar-flip animated bounceInLeft slow">
            <div class="uk-navbar-content">
            <span class="uk-number-tel ">+7 567 456 677</span> 
            </div>
        </div>
      

        <a class="uk-navbar-toggle uk-visible-small" data-uk-offcanvas="" href="#tp-offcanvas"></a>
        <div class="uk-navbar-center uk-visible-small">
            <a href=""><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
        </div>
    </div>
    </div>

<div id="tp-offcanvas" class="uk-offcanvas">
    <div class="uk-offcanvas-bar uk-offcanvas-bar-show">
        <ul class="uk-nav uk-nav-offcanvas uk-nav-parent-icon" data-uk-nav="">
            <!-- IF {PHP.usr.id} > 0 -->
            <li class="uk-parent">
                <a href="#">
                        <!-- IF {PHP.usr.profile.user_avatar} -->
                        <img class="tp-user-image" src="{PHP.usr.profile.user_avatar}" alt="{PHP.usr.name}" />  &nbsp; 
                        <!-- ELSE -->
                        <img class="tp-user-image" src="themes/{PHP.theme}/img/avatar.png" alt="{PHP.usr.name}" />  &nbsp;
                        <!-- ENDIF -->{HEADER_USER_VRF_ICON} &nbsp;
                        <!-- IF {PHP.usr.profile.user_pers_firstname} AND {PHP.usr.profile.user_pers_surname} -->
                        {PHP.usr.profile.user_pers_firstname}&nbsp;{PHP.usr.profile.user_pers_surname}
                        <!-- ELSE -->
                        {PHP.usr.name}
                        <!-- ENDIF -->
				</a> 
                <ul class="uk-nav-sub">
                    <!-- IF {PHP.cot_modules.payments} -->
                    <li><a href="{HEADER_USER_BALANCE_URL}"> {PHP.L.payments_mybalance}: {HEADER_USER_BALANCE|number_format($this, '2', '.', '')} {PHP.cfg.payments.valuta}</a></li>
                    <!-- ENDIF -->
					<!-- IF {PHP.cot_plugins_active.paypro} -->
                    <!-- IF {HEADER_USER_PROEXPIRE} -->
                    <li><a class="uk-text-success" href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_extend}" data-uk-tooltip="{pos:'bottom'}">{PHP.L.paypro_header_expire_short} {HEADER_USER_PROEXPIRE|cot_date('d.m.Y', $this)}</a></li>
                    <!-- ELSE -->
                    <li><a href="{PHP|cot_url('plug', 'e=paypro')}" title="{PHP.L.paypro_header_buy}" data-uk-tooltip="{pos:'bottom'}">{PHP.L.paypro_header_buy}</a></li>
                    <!-- ENDIF -->
					<!-- ENDIF -->
                    <!-- IF {PHP.cot_modules.projects} -->
                    <!-- IF {PHP.cot_plugins_active.sbr} -->
                    <li><a href="{PHP|cot_url('sbr')}">{PHP.L.sbr_mydeals}</a></li>
                    <!-- ENDIF -->
                    <!-- IF {PHP|cot_auth('projects', 'any', '1')} -->
                    <li><a href="{PHP|cot_url('projects', 'm=useroffers')}">{PHP.L.offers_useroffers}</a></li>
                    <!-- ENDIF -->
                    <!-- ENDIF -->
                    <!-- IF {PHP.cot_plugins_active.marketorders} -->
                    <li><a href="{PHP|cot_url('marketorders', 'm=sales')}">{PHP.L.marketorders_mysales}</a></li>
                    <li><a href="{PHP|cot_url('marketorders', 'm=purchases')}">{PHP.L.marketorders_mypurchases}</a></li>
                    <!-- ENDIF -->
                    <!-- IF {HEADER_USER_PMREMINDER} -->
                    <li>{HEADER_USER_PMREMINDER}</li>
                    <!-- ENDIF -->
                    <!-- IF {PHP.out.notices} -->
                    <li>{PHP.out.notices}</li>
                    <!-- ENDIF -->
                    <li><a href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">Моя страница</a></li>
                    <li><a href="{PHP|cot_url('users', 'm=profile')}">{PHP.L.Profile}</a></li>
                    <!-- IF {PHP.usr.maingrp} == 5 -->
                    <li><a href="{PHP|cot_url('admin')}" target="_blank">{PHP.L.Administrator_title}</a></li>
                    <!-- ENDIF -->
                    <li>{PHP.out.loginout}</li>
                </ul>
            </li>
            <!-- ENDIF -->
         
       
			
            <!-- IF {PHP.usr.id} == 0 -->
            <li class="uk-nav-divider"></li>
            <li><a href="{PHP|cot_url('login')}">{PHP|cot_uk_icon("uk-icon-caret-square-o-down")} {PHP.L.Login}</a></li>
            <li><a href="{PHP|cot_url('users','m=register')}">{PHP|cot_uk_icon("uk-icon-pencil-square-o")} {PHP.L.Register}</a></li>
            <!-- ENDIF -->
        </ul>
    </div>
</div>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- ENDIF -->

<!-- END: HEADER -->