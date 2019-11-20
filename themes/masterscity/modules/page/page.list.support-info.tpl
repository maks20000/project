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
                                            <div class="uk-width-medium-1-1 uk-text-truncate">
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
<!--                 <nav>
                    {PHP.L.Cat_title|cot_uk_heading(5, "$this", "tp-text-transform uk-text-bold")}
                    <ul class="tp-list uk-list">
                        {FILE "themes/{PHP.theme}/inc/menu.blogs.tpl"}
                    </ul>
                </nav> -->
                <!-- IF {PHP.cot_plugins_active.pagelist} -->
                <div class="uk-margin-bottom">
                {PAGE_CATTITLE|cot_uk_heading(5, "$this", "tp-text-transform uk-text-bold")}
                {PHP|pagelist('pagelist.list','10','page_date DESC','','support-info','system;archives','','TRUE')}
                </div>        
                <!-- ENDIF -->
				<hr />
            <ul class="uk-list uk-list-line">
        <!-- IF {PHP.usr.id} == 0 -->
        
        <div id="logtosupport" class="uk-modal">
            <div class="tp-modal-dialog-rigis uk-modal-dialog uk-animation-scale-up">
                <div class="uk-text-center uk-margin-bottom">
                    <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
                </div>
                <ul class="uk-list uk-margin-bottom">
                    <li class="uk-text-primary uk-text-break uk-text-bold">1. Вопросы в техподдержку и помощь доступны зарегистрированным пользователям.</li>
                    <li class="uk-text-primary uk-text-bold">2. Если Ваш вопрос общего характера и Вы не желаете регистрироваться, то воспользуйтесь общей формой  <a class="tp-color-ts tp-text-transform" href="{PHP|cot_url('contact')}">Обратной связи</a></li>
                    <li class="uk-text-primary uk-text-bold">3. Вы можете войти на сайт, через форму ниже, - такие запросы обрабатываются в приоритетном порядке.</li>
                </ul>
                <!-- IF !{PHP.msg} -->
                <form class="uk-form" action="login?a=check" method="post">
                    <div class="uk-form-row">
                        <div class="uk-form-icon">
                            {PHP|cot_uk_icon("uk-icon-user")}
                            <input class="uk-form-success uk-form-large uk-width-1-1" name="rusername" type="text" required="" placeholder="{PHP.L.users_nameormail}">
                        </div>
                    </div>
                    <div class="uk-form-row">
                        <div class="uk-form-icon">
                            {PHP|cot_uk_icon("uk-icon-unlock-alt")}
                            <input class="uk-form-success uk-form-large uk-width-1-1" name="rpassword" type="password" required="" placeholder="{PHP.L.Password}">
                        </div>
                    </div>

                    <button class="uk-margin-top tp-text-transform uk-button uk-button-primary uk-button-large uk-width-1-1" type="">{PHP.L.Login}</button>
                    <div class="uk-modal-footer">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-2">
                                <a class="tp-color-ts" href="{PHP|cot_url('users','m=register')}">{PHP.L.Register}</a>
                            </div>
                            <div class="uk-width-medium-1-2">
                                <a class="tp-color-ts" href="{PHP|cot_url('users', 'm=passrecover&a=request')}">{PHP.L.users_lostpass}?</a>
                            </div>
                        </div>
                    </div>
                </form>
                <!-- ENDIF --> 
            </div>
        </div>

							<li><a data-uk-modal="" href="#logtosupport"><i class="uk-icon-cogs"></i>&nbsp;Техподдержка и помощь</a></li>
							<!-- ELSE -->
                           <!-- IF {PHP.cot_plugins_active.support} -->
                           <li><a href="{PHP|cot_url('support')}" title=""><i class="uk-icon-cogs"></i>&nbsp;Техподдержка и помощь</a></li>
                           <!-- ENDIF -->
		<!-- ENDIF -->
            </ul>
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