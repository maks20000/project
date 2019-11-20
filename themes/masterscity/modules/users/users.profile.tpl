<!-- BEGIN: MAIN -->
<div class="uk-block uk-block-muted">
    <div class="uk-container-center uk-width-1-2">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="tp-box">
            <div class="uk-panel-body">
                
                <form action="{USERS_PROFILE_FORM_SEND}" method="post" enctype="multipart/form-data" name="profile" class="uk-form uk-form-stacked">
                    
                    <!-- IF {USERS_PROFILE_GROUPSELECT} -->
                    <div class="tp-select-ruserusergroup<!-- IF !{PHP.cfg.plugin.usergroupselector.allowchange} AND {PHP.cfg.plugin.usergroupselector.required} --> uk-hidden<!-- ENDIF -->">                      
    
                        <div class="uk-grid" data-uk-grid-margin="">
                            <div class="uk-width-1-3">
                                <label class="uk-margin-right">
                                    <input class="uk-hidden" type="radio" value="8" name="ruserusergroup">
									
                                    <span class="uk-button <!-- IF {PHP.usr.maingrp} == 8 --> uk-button-primary<!-- ENDIF --> uk-button-large uk-width-1-1">{PHP.cot_groups.8.name}</span>
									
                                </label>
                            </div>
                            <div class="uk-width-1-3">
                                <label class="uk-margin-right">
                                    <input class="uk-hidden" type="radio" value="4" name="ruserusergroup">
                                    <span class="uk-button <!-- IF {PHP.usr.maingrp} == 4 --> uk-button-primary<!-- ENDIF --> uk-button-large uk-width-1-1">{PHP.cot_groups.4.name}</span>
                                </label>
                            </div>
                            <div class="uk-width-1-3">
                                <label>
                                    <input class="uk-hidden" type="radio" value="7" name="ruserusergroup">
                                    <span class="uk-button <!-- IF {PHP.usr.maingrp} == 7 --> uk-button-primary<!-- ENDIF --> uk-button-large uk-width-1-1">{PHP.cot_groups.7.name}</span>
                                </label>
                            </div>
                        </div>

                    </div>
                    <div class="uk-hidden">{USERS_PROFILE_GROUPSELECT}</div>
                    <!-- ENDIF -->
                    
                    <div class="uk-grid" data-uk-grid-margin>
                        <!-- IF {USERS_PROFILE_AVATAR} -->
                        <div class="uk-width-1-2">
                            <div class="uk-form-row">
                                {PHP.L.Avatar|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_AVATAR}
                            </div>
                        </div>
                        <!-- ENDIF -->
                        <!-- IF {USERS_PROFILE_PHOTO} -->
                        <div class="uk-width-1-2">
                            <div class="uk-form-row">
                                {PHP.L.Photo|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_PHOTO}
                            </div>
                        </div>
                        <!-- ENDIF -->
                    </div>
                              
                    <!-- IF {PHP.cot_plugins_active.locationselector} -->
                    <div class="uk-form-row">
                        {PHP.L.Country|cot_uk_label("$this", "uk-form-label")}
                        {USERS_PROFILE_LOCATION}
                    </div>
                    <!-- ENDIF -->
                    <div class="uk-form-row">
                    {PHP.L.Birthdate|cot_uk_label("$this", "uk-form-label")}
                    {USERS_PROFILE_BIRTHDATE}
                    </div>
                    <div class="uk-grid uk-margin-top" data-uk-grid-margin>
                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row">
                                {PHP.L.Gender|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_GENDER}
                            </div>
                        </div>
                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row">
                                {PHP.L.Language|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_LANG}
                            </div>
                        </div>
                        <div class="uk-width-medium-1-3">
                            <div class="uk-form-row">
                                {PHP.L.Timezone|cot_uk_label("$this", "uk-form-label")}
                                {USERS_PROFILE_TIMEZONE}    
                            </div>
                        </div>
                    </div>
                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row uk-margin-top">
                                {PHP.L.Skills_title|cot_uk_label("$this", "uk-form-label")}
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
                    {PHP.L.Signature|cot_uk_label("$this", "uk-form-label")}
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
