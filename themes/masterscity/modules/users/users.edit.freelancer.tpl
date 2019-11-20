<!-- BEGIN: MAIN -->
  
<div class="uk-block-muted">
<div class="uk-container uk-container-center">
            <div class="uk-text-center uk-margin-top">
                <h3 class="tp-text-transform">Администрирование профиля <span class="uk-text-danger uk-text-bold">{PHP.urr.user_name} - {USERS_EDIT_MAINGRP}</span></h3>
            </div>
<div class="tp-box">
    <div class="uk-panel-body">
	 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
	 <i class="uk-icon-toggle-right"></i>&nbsp;
	 Общий раздел
	 </h3>
	 <hr />
		<div class="uk-grid" data-uk-grid-margin>
			<div class="uk-width-medium-1-3">
				<li><a class="uk-button uk-button-success" target="_blank" href="{USERS_EDIT_DETAILSLINK}">Страница пользователя {PHP.urr.user_name}</a></li>
				ID пользователя: <span class="uk-text-danger uk-text-bold">{USERS_EDIT_ID}</span>
				<p class="uk-text-bold">Группа: {USERS_EDIT_MAINGRP}</p>

			</div> 
			<div class="uk-width-medium-1-3">
				<li>{PHP.L.users_logcounter}: {USERS_EDIT_LOGCOUNT}</li>
				<li>{PHP.L.users_lastip}: {USERS_EDIT_LASTIP}</li>
				<li>Последняя авторизация: {USERS_EDIT_LASTLOG_STAMP|cot_date('d.m.Y H:i', $this)}</li>
			</div>
			<div class="uk-width-medium-1-3">
			<li class="uk-active">{PHP.L.Registered} {USERS_EDIT_REGDATE} </li>

			</div>
		</div>
    </div>
</div>



{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{USERS_EDIT_SEND}" method="post" name="useredit" enctype="multipart/form-data" name="useredit" class="uk-form uk-form-stacked uk-margin-large-bottom">

<input type="hidden" name="id" value="{USERS_EDIT_ID}" />
<div class="tp-box">
     <div class="uk-panel-body">
		<div class="tp-box">
		<div class="uk-grid" data-uk-grid-margin>
			<!-- IF {USERS_EDIT_AVATAR} -->
			<div class="uk-width-medium-1-2">
				<div class="uk-form-row">
					{PHP.L.Avatar|cot_uk_label("$this", "uk-form-label")}
					{USERS_EDIT_AVATAR}
				</div>
			<!-- IF {USERS_EDIT_PHOTO} -->
	
				<div class="uk-form-row">
					{PHP.L.Photo|cot_uk_label("$this", "uk-form-label")}
					{USERS_EDIT_PHOTO}
				</div>

			<!-- ENDIF -->
			</div>
			<!-- ENDIF -->
			<div class="uk-width-medium-1-2">

	<!-- IF {USERS_EDIT_PERS_FIRSTNAME} -->
	<div class="uk-width-medium-1-1">
		<div class="uk-form-row uk-margin-top">
			<label class="uk-form-label">{USERS_EDIT_PERS_FIRSTNAME_TITLE}</label>
			{USERS_EDIT_PERS_FIRSTNAME}
		</div>
	</div>
	<!-- ENDIF -->
	<!-- IF {USERS_EDIT_PERS_SURNAME} -->
	<div class="uk-width-medium-1-1">
		<div class="uk-form-row uk-margin-top">
			<label class="uk-form-label">{USERS_EDIT_PERS_SURNAME_TITLE}</label>
			{USERS_EDIT_PERS_SURNAME}
		</div>
	</div>
	<!-- ENDIF -->
	<!-- IF {USERS_EDIT_PERS_BYFATHERNAME} -->
	<div class="uk-width-medium-1-1">
		<div class="uk-form-row uk-margin-top">
			<label class="uk-form-label">{USERS_EDIT_PERS_BYFATHERNAME_TITLE}</label>
			{USERS_EDIT_PERS_BYFATHERNAME}
		</div>
	</div>
	<!-- ENDIF -->
	<div class="uk-width-medium-1-1">
		<div class="uk-form-row uk-margin-top">
                    <label class="tp-text-transform">Никнейм (Login) на сайте</label>
                    {USERS_EDIT_NAME}
                </div>
            </div>
	<div class="uk-width-medium-1-1">
		<div class="uk-form-row uk-margin-top">
                  <label class="tp-text-transform">E-mail пользователя:</label>
                  {USERS_EDIT_EMAIL}
                </div>
            </div>
		
		</div>
		</div>
                    <!-- IF {USERS_EDIT_VERIFICATION_STATUS} -->
						 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
						 <i class="uk-icon-toggle-right"></i>&nbsp;
						 Верификация пользователя
						 </h3>
						 <hr />
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row">
                            <label class="uk-text-warning uk-text-bold">{USERS_EDIT_VRF_TITLE}:   {USERS_EDIT_VRF_STATUS} </label>
                        </div>
                    </div>
                    <!-- ENDIF -->
					<hr />
                    <div class="tp-box uk-margin-top">
						 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
						 <i class="uk-icon-toggle-right"></i>&nbsp;
						 Контактные и юридические данные
						 </h3>
						 <hr />
						 <blockquote><span class="uk-text-danger uk-text-bold">Максимально правильно и полно, заполните поля этого раздела, это очень важно для получения статуса ВЕРИФИЦИРОВАННОГО (проверенного) пользователя</span></blockquote>
						<div class="uk-grid" data-uk-grid-margin>
						<!-- IF {USERS_EDIT_FIO_PRIVATE_MASTER} -->
                        <div class="uk-width-medium-1-1 uk-margin-top">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{USERS_EDIT_FIO_PRIVATE_MASTER_TITLE}</label>
                                {USERS_EDIT_FIO_PRIVATE_MASTER}
                            </div>
                        </div>
                        <!-- ENDIF -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{PHP.L.Gender}</label>
                                {USERS_EDIT_GENDER}
                            </div>
                        </div>
						
						<div class="uk-width-medium-1-1 uk-margin-top">
					
						<a class="uk-button uk-button-primary uk-margin tp-text-transform uk-text-contrast uk-text-bold" data-uk-toggle="{target:'#passport'}" data-uk-tooltip="{pos:'top'}" title="Нажмите, чтобы раскрыть спойлер"><i class="uk-icon-eye-slash"></i>&nbsp;Конфиденциальная информация &nbsp;<i class="uk-icon-angle-down"></i></a>
<!-- 						 <h3 class="uk-margin-top uk-margin-left tp-text-transform uk-text-contrast uk-text-bold">
						 <i class="uk-icon-eye-slash"></i>&nbsp;Конфиденциальная информация (Доступно только Вам и Администрации сайта)
						 </h3> -->
					<div style="background-color: #BBBBBB;">
					<div id="passport" class="uk-hidden">
						 <p class="uk-margin-left uk-text-warning uk-text-bold">(Доступно только Вам и Администрации сайта)Информация в этом блоке является строго конфиденциальной. Мы не передаем личные данные наших пользователей третьим лицам.</p>
						 <hr />
                    <div class="uk-grid" data-uk-grid-margin>
                        <!-- IF {USERS_EDIT_PASSPORT_FACE} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-margin-left uk-text-warning uk-text-bold">{USERS_EDIT_PASSPORT_FACE_TITLE}</label>
                                {USERS_EDIT_PASSPORT_FACE}
                            </div>
                        </div>
                        <!-- ENDIF -->
                        <!-- IF {USERS_EDIT_PASSPORT_ADRESS} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-margin-left uk-text-warning uk-text-bold">{USERS_EDIT_PASSPORT_ADRESS_TITLE}</label>
                                {USERS_EDIT_PASSPORT_ADRESS}
                            </div>
                        </div>
                        <!-- ENDIF -->
                    </div>
					</div>
					</div>
					</div>
						<div class="uk-width-medium-1-1 uk-margin-top">
							<div class="uk-form-row">
							<label class="uk-text-warning uk-text-bold">{PHP.L.Birthdate}</label>
							{USERS_EDIT_BIRTHDATE}
							</div>
						</div>
                    <div class="uk-grid uk-margin-top" data-uk-grid-margin>



                    </div>
                        <!-- IF {USERS_EDIT_TELEPHONE} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{USERS_EDIT_TELEPHONE_TITLE} контактный</label>
                                {USERS_EDIT_TELEPHONE}
                            </div>
                        </div>
                        <!-- ENDIF -->
						
						<!-- IF {USERS_EDIT_SITE_ADRESS} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{USERS_EDIT_SITE_ADRESS_TITLE}</label>
                                {USERS_EDIT_SITE_ADRESS}
                            </div>
                        </div>
                        <!-- ENDIF -->
                            
                    <!-- IF {PHP.cot_plugins_active.locationselector} -->
					<div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        <label class="uk-text-warning uk-text-bold">Территориальная область и город</label>
                        {USERS_EDIT_LOCATION}
                    </div>
					</div>
                    <!-- ENDIF -->



					
						</div>
					</div>



		<div class="tp-box">  
						 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
						 <i class="uk-icon-toggle-right"></i>&nbsp;
						 Общие и идентификационные данные пользователя на сайте
						 </h3>
						 <hr />
        <div class="uk-grid" data-uk-grid-margin>

			<div class="uk-width-medium-1-3">
				<div class="uk-form-row uk-margin-top">
				<label class="uk-text-warning uk-text-bold">{PHP.L.Timezone}:</label>
					{USERS_EDIT_TIMEZONE}    
				</div>
			</div>
        </div>

<div class="uk-margin-large-bottom uk-margin-large-top">

   

</div>        

        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-medium-1-3 uk-margin-top">
                <div class="uk-form-row uk-margin-top">
                   <label class="uk-text-warning uk-text-bold">{PHP.L.Groupsmembership} :</label>
                   {USERS_EDIT_GROUPS}
                </div>
            </div>
            <div class="uk-width-medium-1-3 uk-margin-top">
                <!-- IF {USERS_EDIT_GROUPSELECT} -->
                <div class="uk-form-row uk-margin-top">
                    <label class="uk-text-warning uk-text-bold">Группа пользователей на сайте:</label>
                    <p>{USERS_EDIT_GROUPSELECT}</p>
                </div>
                <!-- ENDIF -->
                <div class="uk-form-row uk-margin-top">
                    {PHP.L.users_hideemail|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_HIDEEMAIL}
                </div>
                <!-- IF {PHP.cot_modules.pm} -->
                    <div class="uk-form-row">
                    {PHP.L.users_pmnotify|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_PMNOTIFY}
                    </div>
                <!-- ENDIF --> 
            </div>
            <div class="uk-width-medium-1-3 uk-margin-top">
                <label class="uk-text-warning uk-text-bold">Выбор категорий работ: </label>
                <div class="uk-scrollable-box">
                {USERS_EDIT_CAT}
                </div>
            </div>
        </div>
		</div>
		<div class="tp-box">
        <div class="uk-margin-large-top uk-margin-bottom">
            <label class="uk-text-warning uk-text-bold">{PHP.L.Signature}: (Пользователь о себе)</label>
            {USERS_EDIT_TEXT}
        </div>
		</div>
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-medium-1-2 uk-margin-top">
                <div class="uk-form-row">
                    {PHP.L.users_newpass|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_NEWPASS}
                    <p class="uk-text-small">{PHP.L.users_newpasshint1}</p>
                </div>
            </div>
            <div class="uk-width-medium-1-2">
                <div class="uk-grid">
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row uk-margin-top">
                            <label class="uk-form-label">{PHP.L.Update}</label>
                            <button class="uk-button uk-button-primary uk-button-large uk-margin-bottom">{PHP.L.Update}</button>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row">
                        <label class="uk-form-label uk-text-danger">{PHP.L.users_deleteuser}</label>
                        <div class="uk-margin-top">{USERS_EDIT_DELETE}</div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
     </div>
</div>
</form>
</div>
</div> 
<!-- END: MAIN -->


