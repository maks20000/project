<!-- BEGIN: MAIN -->
  
<div class="uk-block-muted">
<div class="uk-container uk-container-center">
<div class="uk-margin-large-bottom uk-margin-large-top">

<div class="uk-grid" data-uk-grid-margin>
    <!-- IF {USERS_EDIT_AVATAR} -->
    <div class="uk-width-medium-1-2">
        <div class="uk-form-row">
            <label class="uk-form-label">{PHP.L.Avatar}</label>
            {USERS_EDIT_AVATAR}
        </div>
    </div>
    <!-- ENDIF -->
    
    <!-- IF {USERS_EDIT_PHOTO} -->        
    <div class="uk-width-medium-1-2">
        <div class="uk-form-row">
            <label class="uk-form-label">{PHP.L.Photo}</label>
            {USERS_EDIT_PHOTO}
        </div>
    </div>
    <!-- ENDIF -->
</div>    

</div>
<div class="uk-grid" data-uk-grid-margin>
    <div class="uk-width-1-3">
        {PHP.L.users_lastip}: {USERS_EDIT_LASTIP}
    </div> 
    <div class="uk-width-1-3">
        {PHP.L.users_logcounter}: {USERS_EDIT_LOGCOUNT}
    </div>
    <div class="uk-width-1-3">
        # {USERS_EDIT_ID}
    </div>
</div>

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{USERS_EDIT_SEND}" method="post" name="useredit" enctype="multipart/form-data" name="useredit" class="uk-form uk-form-stacked uk-margin-large-bottom">

<input type="hidden" name="id" value="{USERS_EDIT_ID}" />
<div class="tp-box">
     <div class="uk-panel-body">
        {PHP.L.Basic_settings|cot_uk_heading(3, "$this")}
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-medium-1-3 uk-margin-top">
                <div class="uk-form-row">
                    {PHP.L.Username|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_NAME}
                </div>
            </div>
            <div class="uk-width-medium-1-3">
                <div class="uk-form-row uk-margin-top">
                  {PHP.L.Email|cot_uk_label("$this", "uk-form-label")}
                  {USERS_EDIT_EMAIL}
                </div>
            </div>
            <div class="uk-width-medium-1-3">
                 <div class="uk-form-row uk-margin-top">
                    {PHP.L.Gender|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_GENDER}
                </div>
            </div>
        </div>
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <div class="uk-form-row uk-margin-top">
        {PHP.L.Country|cot_uk_label("$this", "uk-form-label")}
        {USERS_EDIT_LOCATION}
        </div>
        <!-- ENDIF -->
        
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-medium-1-3">
                <div class="uk-form-row uk-margin-top">
                    {PHP.L.Language|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_LANG}
                </div>
            </div>
            <div class="uk-width-medium-1-3">
                <div class="uk-form-row uk-margin-top">
                    {PHP.L.Theme|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_THEME}
                </div>
            </div>
            <div class="uk-width-medium-1-3">
               <div class="uk-form-row uk-margin-top">
                    {PHP.L.Timezone|cot_uk_label("$this", "uk-form-label")}
                    {USERS_EDIT_TIMEZONE}
                </div>
            </div>
        </div>
        <div class="uk-form-row uk-margin-top">
        {PHP.L.Birthdate|cot_uk_label("$this", "uk-form-label")}
        {USERS_EDIT_BIRTHDATE}
        </div>
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-medium-1-3 uk-margin-top">
                <div class="uk-form-row">
                    {PHP.L.Groupsmembership|cot_uk_label("$this", "uk-form-label")}
                   {USERS_EDIT_GROUPS}
                </div>
            </div>
            <div class="uk-width-medium-1-3 uk-margin-top">
                <!-- IF {USERS_EDIT_GROUPSELECT} -->
                <div class="uk-form-row uk-margin-top">
                    {PHP.L.profile_group|cot_uk_label("$this", "uk-form-label")}
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
                {PHP.L.Skills_title|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-scrollable-box">
                {USERS_EDIT_CAT}
                </div>
            </div>
        </div>
        <div class="uk-margin-large-top uk-margin-bottom">
            {PHP.L.Signature|cot_uk_label("$this", "uk-form-label")}
            {USERS_EDIT_TEXT}
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


