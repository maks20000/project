<!-- BEGIN: MAIN -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center uk-width-medium-1-1">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
            <div class="uk-text-center uk-margin-top">
                <h3 class="tp-text-transform">Настройки вашего профиля <span class="uk-text-danger uk-text-bold"> {PHP.urr.user_name} - {USERS_PROFILE_MAINGRP}</span></h3>
            </div>
		<div class="tp-box uk-hidden-small">


			 <div class="uk-panel-body">
	 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
	 <i class="uk-icon-toggle-right"></i>&nbsp;
	 Общий раздел
	 </h3>
	 <hr />
				<div class="uk-grid" data-uk-grid-margin>
					<div class="uk-width-medium-1-3">
					<li><a class="uk-button uk-button-success" target="_blank" href="{PHP.usr.name|cot_url('users', 'm=details&u='$this)}">{PHP.usr.name}</a></li>
						Ваш № ID : <span class="uk-text-danger uk-text-bold">{USERS_PROFILE_ID}</span>
					</div>
					<div class="uk-width-medium-1-3">
						
					<li class="uk-active">{PHP.L.Registered}</br> {USERS_PROFILE_REGDATE}</li>
						<!-- Последний визит: {USERS_PROFILE_LASTLOG_STAMP|cot_date('d.m.Y H:i', $this)} -->
					</div> 
					<div class="uk-width-medium-1-3">
						{PHP.L.users_logcounter}: {USERS_PROFILE_LOGCOUNT}
					</div>

				</div>
			</div>
		</div>
        <div class="tp-box">
            <div class="uk-panel-body">
                
                <form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile" class="uk-form uk-form-stacked">
					 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
					 <i class="uk-icon-toggle-right"></i>&nbsp;
					 Выбор группы и верификация
					 </h3>
					 <hr />
                    <p class="uk-text-bold">Сейчас Ваша группа на сайте: {USERS_PROFILE_MAINGRP}</p>
					<hr />
					<div class="uk-panel">
					<div class="uk-grid" data-uk-grid-margin>
                        
                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row">
                            <label class="uk-text-warning uk-text-bold">{USERS_PROFILE_VRF_TITLE}</label>    
                            </div>
                        </div>

                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row">  
							<label class="uk-text-primary uk-text-bold">{USERS_PROFILE_VRF_STATUS}</label> 
                            </div>
                        </div>
                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row">  
							<label class="uk-text-primary uk-text-bold"><i class="uk-icon-check-circle-o uk-icon-small"></i> {PHP.glb_vrf_link_user}</label> 
                            </div>
                        </div>
                      </div>  
                    </div>
					<hr />
                    <!-- IF {USERS_PROFILE_GROUPSELECT} -->
                    <div class="tp-select-ruserusergroup<!-- IF !{PHP.cfg.plugin.usergroupselector.allowchange} AND {PHP.cfg.plugin.usergroupselector.required} --> uk-hidden<!-- ENDIF -->">                      
    
                        <div class="uk-grid" data-uk-grid-margin="">
                            <div class="uk-width-medium-1-3">
                                <label class="uk-margin-right">
                                    <input class="uk-hidden" type="radio" value="8" name="ruserusergroup">
									
                                    <span class="uk-button <!-- IF {PHP.usr.maingrp} == 8 --> uk-button-primary<!-- ENDIF --> uk-button-large uk-width-medium-1-1">{PHP.cot_groups.8.name}</span>
									
                                </label>
                            </div>
                            <div class="uk-width-medium-1-3">
                                <label class="uk-margin-right">
                                    <input class="uk-hidden" type="radio" value="4" name="ruserusergroup">
                                    <span class="uk-button <!-- IF {PHP.usr.maingrp} == 4 --> uk-button-primary<!-- ENDIF --> uk-button-large uk-width-medium-1-1">{PHP.cot_groups.4.name}</span>
                                </label>
                            </div>
                            <div class="uk-width-medium-1-3">
                                <label>
                                    <input class="uk-hidden" type="radio" value="7" name="ruserusergroup">
                                    <span class="uk-button <!-- IF {PHP.usr.maingrp} == 7 --> uk-button-primary<!-- ENDIF --> uk-button-large uk-width-medium-1-1">{PHP.cot_groups.7.name}</span>
                                </label>
                            </div>
                        </div>

                    </div>
                    <div class="uk-hidden">{USERS_PROFILE_GROUPSELECT}</div>
                    <!-- ENDIF -->
                    <div class="tp-box uk-margin-top">
						 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
						 <i class="uk-icon-toggle-right"></i>&nbsp;
						 Контактные и юридические данные
						 </h3>
						 <hr />
						 <blockquote><span class="uk-text-danger uk-text-bold">Максимально правильно и полно, заполните поля этого раздела, это очень важно для получения статуса ВЕРИФИЦИРОВАННОГО (проверенного) пользователя</span></blockquote>
<div class="uk-grid" data-uk-grid-margin>
	<!-- IF {USERS_PROFILE_PERS_FIRSTNAME} -->
	<div class="uk-width-medium-1-3">
		<div class="uk-form-row uk-margin-top">
			<label class="uk-form-label">{USERS_PROFILE_PERS_FIRSTNAME_TITLE}</label>
			{USERS_PROFILE_PERS_FIRSTNAME}
		</div>
	</div>
	<!-- ENDIF -->
	<!-- IF {USERS_PROFILE_PERS_SURNAME} -->
	<div class="uk-width-medium-1-3">
		<div class="uk-form-row uk-margin-top">
			<label class="uk-form-label">{USERS_PROFILE_PERS_SURNAME_TITLE}</label>
			{USERS_PROFILE_PERS_SURNAME}
		</div>
	</div>
	<!-- ENDIF -->
	<!-- IF {USERS_PROFILE_PERS_BYFATHERNAME} -->
	<div class="uk-width-medium-1-3">
		<div class="uk-form-row uk-margin-top">
			<label class="uk-form-label">{USERS_PROFILE_PERS_BYFATHERNAME_TITLE}</label>
			{USERS_PROFILE_PERS_BYFATHERNAME}
		</div>
	</div>
	<!-- ENDIF -->
</div>
						<div class="uk-grid" data-uk-grid-margin>
						<!-- IF {USERS_PROFILE_FIO_PRIVATE_MASTER} -->
                        <div class="uk-width-medium-1-1 uk-margin-top">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{USERS_PROFILE_FIO_PRIVATE_MASTER_TITLE}</label>
                                {USERS_PROFILE_FIO_PRIVATE_MASTER}
                            </div>
                        </div>
                        <!-- ENDIF -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{PHP.L.Gender}</label>
                                {USERS_PROFILE_GENDER}
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
                        <!-- IF {USERS_PROFILE_PASSPORT_FACE} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-margin-left uk-text-warning uk-text-bold">{USERS_PROFILE_PASSPORT_FACE_TITLE}</label>
                                {USERS_PROFILE_PASSPORT_FACE}
                            </div>
                        </div>
                        <!-- ENDIF -->
                        <!-- IF {USERS_PROFILE_PASSPORT_ADRESS} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-margin-left uk-text-warning uk-text-bold">{USERS_PROFILE_PASSPORT_ADRESS_TITLE}</label>
                                {USERS_PROFILE_PASSPORT_ADRESS}
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
							{USERS_PROFILE_BIRTHDATE}
							</div>
						</div>
                    <div class="uk-grid uk-margin-top" data-uk-grid-margin>



                    </div>
                        <!-- IF {USERS_PROFILE_TELEPHONE} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{USERS_PROFILE_TELEPHONE_TITLE} контактный</label>
                                {USERS_PROFILE_TELEPHONE}
                            </div>
                        </div>
                        <!-- ENDIF -->
						
						<!-- IF {USERS_PROFILE_SITE_ADRESS} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{USERS_PROFILE_SITE_ADRESS_TITLE}</label>
                                {USERS_PROFILE_SITE_ADRESS}
                            </div>
                        </div>
                        <!-- ENDIF -->
                            
                    <!-- IF {PHP.cot_plugins_active.locationselector} -->
					<div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        <label class="uk-text-warning uk-text-bold">Территориальная область и город</label>
                        {USERS_PROFILE_LOCATION}
                    </div>
					</div>
                    <!-- ENDIF -->
					    <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">{PHP.L.Timezone}</label>
                                {USERS_PROFILE_TIMEZONE}    
                            </div>
                        </div>


					
						</div>
					</div>
					<div class="tp-box">
						 <h3 class="uk-margin-top tp-text-transform ti-linck-black uk-text-bold">
						 <i class="uk-icon-toggle-right"></i>&nbsp;
						 Общие данные пользователя на сайте
						 </h3>
						 <hr />
                    <div class="uk-grid" data-uk-grid-margin>
                        <!-- IF {USERS_PROFILE_AVATAR} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                {PHP.L.Avatar|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_AVATAR}
                            </div>
                        </div>
                        <!-- ENDIF -->
                        <!-- IF {USERS_PROFILE_PHOTO} -->
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-text-warning uk-text-bold">Фотография реальная</label>
                                {USERS_PROFILE_PHOTO}
                            </div>
                        </div>
                        <!-- ENDIF -->
                    </div>
					</div>

                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row uk-margin-top">
                                <label class="uk-text-bold">Выбор категорий работ: </label>

                                <div class="uk-scrollable-box">
                                {USERS_PROFILE_CAT}
                                </div>
                            </div>
                        </div>
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row uk-margin-top">   
                            <div class="uk-form-row uk-margin-top">
                                {PHP.L.users_hideemail|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_HIDEEMAIL}
                            </div>
                            <!-- IF {PHP.cot_modules.pm} -->
                            <div class="uk-form-row">
                                {PHP.L.users_pmnotify|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_PMNOTIFY}
                            </div>
                            <!-- ENDIF --> 
                            </div>
                            <!-- BEGIN: USERS_PROFILE_EMAILCHANGE -->
                            <div class="uk-form-row">
                                <div id="emailtd">
                                  {PHP.L.Email|cot_uk_label("$this", "uk-form-label")}
                                  {USERS_PROFILE_EMAIL}
                                  <!-- BEGIN: USERS_PROFILE_EMAILPROTECTION -->
                                    <script type="text/javascript">
                                        //<![CDATA[
                                        $(document).ready(function(){
                                                $("#emailnotes").hide();
                                                $("#emailtd").click(function(){$("#emailnotes").slideDown();});
                                        });
                                        //]]>
                                    </script>
                                    <!--
                                    <div>
                                        {PHP.themelang.usersprofile.Emailpassword}:<br />{USERS_PROFILE_EMAILPASS}
                                    </div>
                                    <div class="uk-text-small" id="emailnotes">{PHP.themelang.usersprofile.Emailnotes}</div>
                                    -->
                                  <!-- END: USERS_PROFILE_EMAILPROTECTION -->
                                </div>
                            </div>
                            </div>     
                            <!-- END: USERS_PROFILE_EMAILCHANGE -->
                        </div>
                    </div>
                    <div class="uk-form-row uk-margin-top">
                    <label class="uk-text-warning uk-text-bold">{PHP.L.My_profil_signature}</label>
                    {USERS_PROFILE_TEXT}
                    </div>

                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row uk-margin-top">
                                {PHP.L.users_newpass|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_OLDPASS}
                                <p class="uk-text-small">{PHP.L.users_oldpasshint}</p>
                            </div>
                        </div>
                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row uk-margin-top">
                                {PHP.L.PAss_title1|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_NEWPASS1}
                                <p class="uk-text-small">{PHP.L.users_newpasshint2}</p>
                            </div>
                        </div>
                        <div class="uk-width-medium-1-3">
                           <div class="uk-form-row uk-margin-top">
                                {PHP.L.PAss_title2|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_NEWPASS2}
                                <p class="uk-text-small"></p>
                            </div>
                        </div>
                    </div>
                    <div class="uk-text-center">
                    <button class="uk-button uk-button-primary uk-margin-bottom">{PHP.L.Update}</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->


<div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-medium-1-3">
                <div class="uk-form-row uk-margin-top">
                    <label class="uk-form-label"></label>
                    
                </div>
            </div>
            <div class="uk-width-medium-1-3">
                <div class="uk-form-row uk-margin-top">
                    <label class="uk-form-label"></label>
                    
                </div>
            </div>
            <div class="uk-width-medium-1-3">
               <div class="uk-form-row uk-margin-top">
                    <label class="uk-form-label"></label>
                    
                </div>
            </div>
        </div>
