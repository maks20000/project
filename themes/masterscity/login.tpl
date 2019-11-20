<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.id} > 0 -->
<script language="JavaScript" type="text/javascript">
<!-- 
location="{PHP.cfg.mainurl}" 
//--> 
</script>
<!-- ENDIF -->
<!-- BEGIN: USERS_AUTH_MAINTENANCE -->
<div class="uk-width-1-4 tp-here">
    <div class="tp-panel-border">
        <div class="uk-grid">
            <div class="uk-width-1-4 uk-text-center">
                <div class="uk-panel-body">
                     {PHP|cot_uk_icon("uk-icon-volume-down tp-icon-here")}
                </div>
            </div>
            <div class="uk-width-3-4">
                <div class="uk-panel-body">
                    {PHP.L.users_maintenance1|cot_uk_heading(4, "$this", "uk-text-bold")}
                    <p>{PHP.L.users_maintenance2}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: USERS_AUTH_MAINTENANCE -->
<div class="uk-block-large" style="margin-top: 7%;">
    <div class="uk-vertical-align uk-text-center uk-height-1-1">
        <div class="uk-vertical-align-middle tp-panel-border uk-panel-body" style="width: 350px;" data-uk-scrollspy="{cls:'uk-animation-scale-up', repeat: true}">
            <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
            
            <form class="uk-panel uk-panel-box uk-form" name="login" action="{USERS_AUTH_SEND}" method="post">
            
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
                            {USERS_AUTH_REMEMBER} {PHP.L.users_rememberme}
                        </label>
                    </div>
                </div>
                <button class="uk-margin-top tp-text-transform uk-button uk-button-primary uk-button-large uk-width-1-1" type="">{PHP.L.Login}</button>
                <div class="uk-modal-footer">
                <div class="uk-grid uk-text-small">
                    <div class="uk-width-medium-1-2">
                        <a class="tp-color-ts" data-uk-modal="" href="#register">{PHP.L.Register}</a>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <a class="tp-color-ts" data-uk-modal="" href="#hellp">{PHP.L.users_lostpass}?</a>
                    </div>
                </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: MAIN -->