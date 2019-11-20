<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.id} > 0 -->
<script language="JavaScript" type="text/javascript">
<!-- 
location="{PHP.cfg.mainurl}" 
//--> 
</script>
<!-- ENDIF -->
<div class="uk-container-center uk-width-medium-1-3 uk-margin-large-top uk-margin-large-bottom">
    <div class="uk-block-muted uk-hidden-small tp-panel-border uk-margin-large-bottom">
        <div class="uk-grid">
            <div class="uk-width-1-4 uk-text-center">
                <div class="uk-panel-body">
                     {PHP|cot_uk_icon("uk-icon-user tp-icon-down")}
                </div>
            </div>
            <div class="uk-width-3-4">
                <div class="uk-panel-body">
                    <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.cot_groups.7.name}</h4>
                    <p class="uk-margin-top-remove">
                        {PHP.L.Employer_description}
                    </p>
                </div>
            </div>
        </div>
    </div>
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

    <form class="uk-form" name="login" action="{PHP.usergroup|cot_url('users', 'm=register&a=add&usergroup='$this)}" method="post" enctype="multipart/form-data">
        <input type="hidden" name="ruserusergroup" value="{PHP.usergroupid}" />
        <div class="tp-panel-border uk-panel-body">
        <div class="uk-grid" data-uk-accordion="">
            <div class="uk-width-medium-1-2 uk-form">
                <div class="uk-form-icon">
                     {PHP|cot_uk_icon("uk-icon-user")}
                    <input class="uk-form-large uk-width-1-1" type="text" required="" maxlength="24" value="" name="rusername" placeholder="{PHP.L.Log}" />
                </div>
            </div>
            <div class="uk-width-medium-1-2">{PHP.L.Log_info_text}</div>
        </div>
<!-- IF {USERS_REGISTER_TELEPHONE} -->
        <div class="uk-grid" data-uk-accordion="">
            <div class="uk-width-medium-1-2 uk-form">
                <div class="uk-form-icon">
                    {PHP|cot_uk_icon("uk-icon-phone")}
					{USERS_REGISTER_TELEPHONE}
                </div>
            </div>
            <div class="uk-width-medium-1-2">{USERS_REGISTER_TELEPHONE_TITLE}</div>
        </div>
<!-- ENDIF -->
        <div class="uk-grid" data-uk-accordion="">
            <div class="uk-width-medium-1-2 uk-form">
                <div class="uk-form-icon">
                     {PHP|cot_uk_icon("uk-icon-envelope")}
                    <input class="uk-form-large uk-width-1-1" type="text" required="" maxlength="64" value="" name="ruseremail" placeholder="{PHP.L.pasrec_youremail}" />
                </div>
            </div>
            <div class="uk-width-medium-1-2">{PHP.L.Pasrec_youremail_info_text}</div>
        </div>
        <div class="uk-grid" data-uk-accordion="">
            <div class="uk-width-medium-1-2 uk-form">
                <div class="uk-form-icon">
                     {PHP|cot_uk_icon("uk-icon-unlock-alt")}
                    <input class="uk-form-large uk-width-1-1" type="password" required="" maxlength="32" value="" name="rpassword1" placeholder="{PHP.L.Password}" />
                </div>
            </div>
            <div class="uk-width-medium-1-2">{PHP.L.Password_info_text}</div>
        </div>
        <div class="uk-grid" data-uk-accordion="">
            <div class="uk-width-medium-1-2 uk-form">
                <div class="uk-form-icon">
                     {PHP|cot_uk_icon("uk-icon-unlock-alt")}
                    <input class="uk-form-large uk-width-1-1" type="password" required="" maxlength="32" value="" name="rpassword2" placeholder="{PHP.L.users_confirmpass}" />
                </div>
            </div>
            <div class="uk-width-medium-1-2">{PHP.L.Password_info_text2}</div>
        </div>
        <!-- IF {PHP.cot_plugins_active.mcaptcha} -->
        <div class="uk-grid" data-uk-accordion="">
            <div class="uk-width-medium-1-2 uk-form">
                <div class="uk-form-icon">
                     {PHP|cot_uk_icon("uk-icon-warning")}
                    <input class="uk-form-large uk-width-1-1" type="text" required="" maxlength="20" value="" name="rverify" placeholder="{PHP.L.Captcha}" />
                </div>
            </div>
            <div class="uk-width-medium-1-2">{PH.L.Captcha_title} <div class="uk-text-bold ti-linck-black"> {USERS_REGISTER_VERIFYIMG} <span class="uk-text-bold uk-text-danger">*</span></div> </div>
        </div>
        <!-- ENDIF -->
        <!-- IF {PHP.cot_plugins_active.useragreement} -->
        <div class="uk-margin-top uk-text-center">
        {PHP|cot_checkbox(0, 'ruseragreement', '')}
        <a class="sw-ahover" target="blank" href="{PHP|cot_url('useragreement')}">{PHP.L.Useragreement_agree}</a>
        </div>
        <!-- ENDIF -->
        <div class="uk-modal-footer">
            <div class="uk-container-center uk-width-1-2">
                <button class="uk-margin-top uk-hidden-small tp-text-transform uk-button uk-button-primary uk-button-large uk-width-1-1" type="submit">{PHP.L.Register}</button>
                <button class="uk-visible-small uk-margin-top uk-button uk-button-primary uk-button-small uk-width-1-1" type="submit">{PHP.L.Register}</button>
            </div>
        </div>
        <!-- IF {PHP.usr.id} == 0 -->
        <div class="uk-margin-top uk-text-center">
            <a class="tp-color-ts uk-button uk-button-link uk-button-small" data-uk-modal="" href="#log">{PHP.L.Login}</a>
            <a class="tp-color-ts uk-button uk-button-link uk-button-small" data-uk-modal="" href="#hellp">{PHP.L.pasrec_title}?</a>
        </div>
        <!-- ENDIF -->
        </div>
    </form>
</div>
<!-- END: MAIN -->