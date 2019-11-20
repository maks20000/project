<!-- BEGIN: MAIN -->
<div class="uk-block-muted">
    <div class="uk-container-center uk-width-medium-1-1 tp-padd-large">
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <ul class="uk-breadcrumb tp-padd uk-margin-top uk-hidden-small">
            <li><a href="{PHP|cot_url('index')}">{PHP.L.Home}</a></li>
            {SBR_TITLE|ul_transform}
        </ul>
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-medium-1-4">
                <div class="tp-box">   
                <div class="tp-box-header tp-with-border">
                    {PHP.L.sbr_mydeals_tile_etb|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
                </div>
                <ul class="uk-list-pm uk-margin-top-remove uk-nav-parent-icon" data-uk-nav="">
                    <li<!-- IF !{PHP.num} --> class="uk-active"<!-- ENDIF -->><a href="{SBR_URL}">{PHP.L.sbr_nav_info}</a></li>
                    <!-- BEGIN: STAGENAV_ROW -->
                    <li<!-- IF {PHP.num} == {STAGENAV_ROW_NUM} --> class="uk-active"<!-- ENDIF -->>
                    <a href="{STAGENAV_ROW_URL}">
                        {PHP.L.sbr_nav_stagenum} {STAGENAV_ROW_NUM} 
                        <!-- IF {STAGENAV_ROW_STATUS} == 'process' -->{PHP|cot_uk_icon("uk-icon-play")}<!-- ENDIF -->
                        <!-- IF {STAGENAV_ROW_STATUS} == 'claim' -->{PHP|cot_uk_icon("uk-icon-sign-in")}<!-- ENDIF -->
                        <!-- IF {STAGENAV_ROW_STATUS} == 'done' -->{PHP|cot_uk_icon("uk-icon-check")}<!-- ENDIF -->
                        <br/><b>{STAGENAV_ROW_TITLE}</b>
                    </a>
                    </li>
                    <!-- END: STAGENAV_ROW -->
                </ul>
                </div>
            </div>
            <div class="uk-width-medium-3-4">
                <div class="tp-box uk-panel">
                    <div class="uk-panel-body">
                        <div class="uk-grid uk-margin-bottom" data-uk-grid-margin>
                            <div class="uk-width-medium-3-4">
                                {SBR_SHORTTITLE|cot_uk_heading(3, "$this")}
                            </div>
                            <div class="uk-width-medium-1-4 uk-text-right uk-text-left-medium uk-margin-small-top">
                                <span class="uk-badge uk-badge-{SBR_LABELSTATUS}">{SBR_LOCALSTATUS}</span>
                            </div>
                        </div>
                        <hr>
                        <!-- BEGIN: SBR -->

                        <!-- BEGIN: INFO -->
                        <div class="uk-margin-bottom">
                            <!-- BEGIN: EMPLOYER -->
                            <div class="uk-button-group">
                            <!-- IF {SBR_STATUS} == 'new' -->
                            <a class="uk-button uk-button-primary" href="{PHP.id|cot_url('sbr', 'm=edit&id='$this)}">{PHP.L.sbr_action_edit}</a>
                            <a class="uk-button uk-button-danger" href="{PHP.id|cot_url('sbr', 'a=cancel&id='$this)}">{PHP.L.sbr_action_cancel}</a>
                            <!-- ENDIF -->
                            <!-- IF {SBR_STATUS} == 'refuse' -->
                            <a class="uk-button uk-button-primary" href="{PHP.id|cot_url('sbr', 'm=edit&id='$this)}">{PHP.L.sbr_action_edit}</a>
                            <a  class="uk-button uk-button-danger" href="{PHP.id|cot_url('sbr', 'a=cancel&id='$this)}">{PHP.L.sbr_action_cancel}</a>
                            <!-- ENDIF -->
                            <!-- IF {SBR_STATUS} == 'confirm' -->
                            <a class="uk-button uk-button-primary" href="{PHP.id|cot_url('sbr', 'a=pay&id='$this)}">{PHP.L.sbr_action_pay}</a>
                            <a class="uk-button uk-button-danger" href="{PHP.id|cot_url('sbr', 'a=cancel&id='$this)}">{PHP.L.sbr_action_cancel}</a>
                            <!-- ENDIF -->
                            </div>
                            <!-- END: EMPLOYER -->

                            <!-- BEGIN: PERFORMER -->
                            <div class="uk-button-group">
                            <!-- IF {SBR_STATUS} == 'new' -->
                            <a class="uk-button uk-button-primary" href="{PHP.id|cot_url('sbr', 'a=confirm&id='$this)}">{PHP.L.sbr_action_confirm}</a>
                            <a class="uk-button uk-button-danger" href="{PHP.id|cot_url('sbr', 'a=refuse&id='$this)}">{PHP.L.sbr_action_refuse}</a>
                            <!-- ENDIF -->
                            <!-- IF {SBR_STATUS} == 'confirm' -->
                            <a class="uk-button uk-button-danger" href="{PHP.id|cot_url('sbr', 'a=refuse&id='$this)}">{PHP.L.sbr_action_refuse}</a>
                            <!-- ENDIF -->
                            </div>
                            <!-- END: PERFORMER -->
                            <div id="sbrstageslist" class="uk-margin-top">
                                <div class="uk-accordion" data-uk-accordion>
                                    <!-- BEGIN: STAGE_ROW -->
                                    <h3 class="uk-accordion-title">{PHP.L.sbr_stage} <span class="stagenum">{STAGE_ROW_NUM}</span>: {STAGE_ROW_TITLE}</h3>	
                                    <div class="uk-accordion-content">
                                        <div>
                                            <div class="uk-alert uk-alert-warning">
                                            <p>
                                                <b>{PHP.L.sbr_stagecost}:</b> <b>{STAGE_ROW_COST} {PHP.cfg.payments.valuta}</b><br> 
                                                <b>{PHP.L.sbr_stagedays}:</b> <b>{STAGE_ROW_DAYS|cot_declension($this, 'Days')}</b>
                                            </p>
                                            </div>
                                             <p class="uk-text-large">{STAGE_ROW_TEXT}</p>
                                            <!-- BEGIN: FILES -->	
                                            <b>{PHP.L.sbr_stagefiles}</b>
                                            <ul class="fileslist uk-list">
                                                <!-- BEGIN: FILE_ROW -->
                                                <li><i class="uk-icon-file uk-text-primary uk-text-large"></i> 
                                                    <a href="{FILE_ROW_URL}" target="blank">{FILE_ROW_TITLE}</a>
                                                </li>
                                                <!-- END: FILE_ROW -->
                                            </ul>
                                            <!-- END: FILES -->	
                                        </div>
                                    </div>
                                    <!-- END: STAGE_ROW -->
                                </div>
                            </div>
                        </div>
                        <!-- END: INFO -->

                        <!-- BEGIN: STAGE -->

                        <div class="uk-margin-bottom uk-margin-top">
                            <!-- IF {PHP.role} == 'performer' -->
                            <div class="uk-float-left">
                                <a class="uk-button uk-button-danger" href="{STAGE_CLAIM_URL}">{PHP.L.sbr_action_claim}</a>
                            </div>  
                            <!-- ENDIF -->
                            <!-- IF {STAGE_BEGIN} > 0 AND {STAGE_STATUS} == 'process' -->
                            <div class="uk-float-right">
                                <!-- IF {PHP.role} == 'employer' -->
                                <div class="uk-button-dropdown" data-uk-dropdown="">
                                    <a class="uk-button uk-width-1-1 uk-button-success">{PHP.L.sbr_stagemenu} <i class="uk-icon-angle-down"></i></a>
                                    <div class="uk-dropdown uk-dropdown-small uk-dropdown-bottom">
                                        <ul class="uk-nav uk-nav-dropdown">
                                            <li><a href="{STAGE_DONE_URL}">{PHP.L.sbr_action_stagedone}</a></li>
                                            <li><a href="{STAGE_CLAIM_URL}">{PHP.L.sbr_action_claim}</a></li>
                                        </ul>
                                    </div>
                                </div>
                                <!-- ENDIF -->
                            </div>
                            <!-- ENDIF -->
                            <div style="clear: both"></div>
                            <h3 class="uk-text-bold">{STAGE_TITLE}</h3>		
                            <p>
                                <b class="tp-text-muted">{PHP.L.sbr_stagecost}:</b> <b>{STAGE_COST} {PHP.cfg.payments.valuta}</b><br>
                                <b class="tp-text-muted">{PHP.L.sbr_stagedays}:</b> <b>{STAGE_DAYS|cot_declension($this, 'Days')}</b>
                            </p>
                            <h4>{PHP.L.sbr_stagetext}</h4>
                            <p>{STAGE_TEXT}</p>
                            <!-- BEGIN: FILES -->
                            <h4>{PHP.L.sbr_stagefiles}</h4>
                            <ul class="fileslist uk-list">
                                <!-- BEGIN: FILE_ROW -->
                                <li><i class="uk-icon-file uk-text-primary uk-text-large uk-margin-right"></i>  
                                    <a href="{FILE_ROW_URL}" target="blank">{FILE_ROW_TITLE}</a>
                                </li>
                                <!-- END: FILE_ROW -->
                            </ul>
                            <!-- END: FILES -->	
                            <p>&nbsp;</p>
                            <!-- IF {STAGE_BEGIN} > 0 AND {STAGE_STATUS} == 'process' -->
                            <div class="uk-alert uk-alert-success">
                                <b>{PHP.L.sbr_stagestart}:</b> {STAGE_BEGIN|date('d.m.Y H:i:s', $this)}<br/>
                                <b>{PHP.L.sbr_stageexpiredays}:</b> <!-- IF {STAGE_EXPIREDATE} > {PHP.sys.now} -->{STAGE_EXPIREDAYS}<!-- ELSE -->{PHP.L.sbr_stageexpired}<!-- ENDIF -->
                            </div>
                            <!-- ENDIF -->
                            <!-- IF {STAGE_STATUS} == 'claim' -->
                            <div class="uk-alert uk-alert-danger">
                                {PHP.L.sbr_claim_msg}
                                <!-- IF {PHP.usr.isadmin} -->
                                <a class="uk-button uk-button-danger uk-float-right" href="{STAGE_DECISION_URL}">{PHP.L.sbr_claim_decision_button}</a>
                                <div class="clear"></div>
                                <!-- ENDIF -->
                            </div>
                            <!-- ENDIF -->
                            <!-- IF {STAGE_STATUS} == 'done' -->
                            <div class="uk-alert">
                                <b>{PHP.L.sbr_stagestart}:</b> {STAGE_BEGIN|date('d.m.Y H:i:s', $this)}<br/>
                                <b>{PHP.L.sbr_stagedone}:</b> {STAGE_DONE|date('d.m.Y H:i:s', $this)}
                            </div>
                            <!-- ENDIF -->
                        </div>
                        <!-- END: STAGE -->

                        <!-- BEGIN: POSTS -->
                                <div class="uk-margin-bottom uk-margin-top<!-- IF {POST_ROW_TYPE} --> {POST_ROW_TYPE}<!-- ENDIF -->">
                                    <h4>{PHP.L.sbr_history}</h4>
                                    <!-- BEGIN: POST_ROW -->
                                    <div class="<!-- IF {POST_ROW_FROM_ID} > 0 -->tp-background<!-- ELSE --> uk-alert uk-alert-{POST_ROW_TYPE}<!-- ENDIF --> uk-margin-top">
                                        <div class="uk-grid uk-margin-bottom" data-uk-grid-margin>
                                            <!-- IF {POST_ROW_FROM_ID} > 0 -->  
                                            <div class="uk-width-medium-1-6 uk-text-center">
                                                <!-- IF {POST_ROW_FROM_AVATAR_SRC} -->
                                                <img class="uk-border-circle" src="{POST_ROW_FROM_AVATAR_SRC}" alt="" />
                                                <!-- ELSE -->
                                                <img class="uk-border-circle" src="themes/{PHP.theme}/img/avatar.png" alt="" />
                                                <!-- ENDIF -->
                                            </div>
                                            <!-- ENDIF -->
                                            <div class="<!-- IF {POST_ROW_FROM_ID} > 0 -->  uk-width-medium-5-6<!-- ELSE --> uk-width-medium-1-1<!-- ENDIF -->">
                                                <div>
                                                    <!-- IF {PHP.usr.isadmin} AND {POST_ROW_TO_NAME} -->
                                                    <h5 class="uk-margin-bottom-remove uk-float-left">{PHP.L.sbr_posts_for}: {POST_ROW_TO_NAME}</h5>
                                                    <!-- ENDIF -->
                                                    <div class="uk-text-right uk-text-bold">{POST_ROW_DATE}</div>
                                                </div>
                                                <p class="uk-margin-remove">
                                                    {POST_ROW_TEXT} 
                                                </p>
                                                <!-- BEGIN: FILES -->
                                                <hr>
                                                <ul class="fileslist uk-list">
                                                    <!-- BEGIN: FILE_ROW -->
                                                    <li><i class="uk-icon-file uk-text-primary uk-text-large uk-margin-right"></i>  
                                                        <a href="{FILE_ROW_URL}" target="blank"> {FILE_ROW_TITLE}</a>
                                                    </li>
                                                    <!-- END: FILE_ROW -->
                                                </ul>
                                                <!-- END: FILES -->
                                            </div>
                                        </div>
                                    </div>
                                    <!-- END: POST_ROW -->
                                </div>
                                <!-- BEGIN: POSTFORM -->
                                <div class="uk-margin-bottom uk-margin-top">
                                    <div>
                                        <h4>{PHP.L.sbr_posts_add}</h4>
                                        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                                        <form action="{POST_FORM_ACTION}" method="post" id="addpost" enctype="multipart/form-data" class="uk-form">
                                            <!-- IF {PHP.usr.isadmin} -->
                                            <div class="uk-width-1-4">
                                                <p>{PHP.L.sbr_posts_to}: {POST_FORM_TO}</p>
                                            </div>
                                            <!-- ENDIF -->
                                            <p><textarea name="rposttext" rows="5" class="uk-width-1-1">{PHP.rposttext}</textarea></p>
                                            <div class="postfiles">
                                                <ul class="fileslist uk-list">
                                                </ul>
                                                <a class="uk-button uk-button-small uk-button-success" href="javascript:void(0);" onclick="PostFileAdd(this); return false;">{PHP.L.page_file_add}</a>
                                            </div>

                                            <div class="uk-text-center">
                                                <button class="uk-button uk-button-primary">{PHP.L.Submit}</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                                <!-- END: POSTFORM -->
                                
                                <script>

                                    function PostFileAdd(obj)
                                    {
                                        $(obj).parent().children('.fileslist').append('<li class="uk-margin-top">\n\
                                        <a href="javascript:void(0);" onclick="PostFileRemove(this); return false;" class="uk-float-right uk-text-muted"><i class="uk-icon-close"></i></a>\n\
                                        <div class="uk-form-file"><button class="uk-button uk-button-primary uk-button-small">Обзор</button><input type="file" name="rpostfiles[]" /></div>\n\
                                    </li>');
                                    }

                                    function PostFileRemove(obj)
                                    {
                                        $(obj).parent().remove();
                                    }

                                </script>

                        <!-- END: POSTS -->

                        <!-- END: SBR -->
                        <!-- BEGIN: STAGEDONE -->

                        <h3>{PHP.L.sbr_stage_done_title}</h3>
                        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                        <form action="{STAGEDONE_FORM_ACTION}" method="post" id="stagedoneform" class="customform uk-form">
                            {STAGEDONE_FORM_TEXT}
                            <div class="uk-text-center uk-margin-top">
                                <button class="uk-button uk-button-primary">{PHP.L.Submit}</button>
                            </div>
                        </form>  

                        <!-- END: STAGEDONE -->

                        <!-- BEGIN: CLAIM -->

                        <h3>{PHP.L.sbr_claim_add_title}</h3>
                        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                        <form action="{CLAIM_FORM_ACTION}" method="post" id="claimform" class="customform uk-form">
                            {CLAIM_FORM_TEXT}
                            <div class="uk-text-center uk-margin-top">
                                <button class="uk-button uk-button-danger">{PHP.L.Submit}</button>
                            </div>
                        </form>

                        <!-- END: CLAIM -->
                        <!-- BEGIN: DECISION -->
                        <div class="tp-box">
                            <div class="uk-panel-body">
                                <h3 class="uk-text-danger">{PHP.L.sbr_claim_decision_title}</h3>
                                {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                                <form action="{DECISION_FORM_ACTION}" method="post" id="decisionform" class="customform uk-form uk-form-stacked">
                                    <div class="uk-grid" data-margin-maegin>
                                        <div class="uk-width-1-2">
                                            <div class="uk-form-row">
                                                <label class="uk-form-label">
                                                    {PHP.L.sbr_claim_decision_pay_performer} {PHP.cfg.payments.valuta}:
                                                </label>
                                                <div class="uk-form-controls">
                                                    {DECISION_FORM_PAYPERFORMER} 
                                                </div>
                                            </div>
                                        </div>
                                        <div class="uk-width-1-2">
                                            <div class="uk-form-row">
                                                <label class="uk-form-label">
                                                    {PHP.L.sbr_claim_decision_pay_employer} {PHP.cfg.payments.valuta}:
                                                </label>
                                                <div class="uk-form-controls">
                                                    {DECISION_FORM_PAYEMPLOYER} 
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="uk-form-row">
                                        <label class="uk-form-label">
                                            {PHP.L.Body}
                                        </label>
                                        <div class="uk-form-controls">
                                            {DECISION_FORM_TEXT}
                                        </div>
                                    </div>
                                    <button class="uk-button uk-button-danger uk-margin-top">{PHP.L.Submit}</button>
                                </form>
                            </div>
                        </div>
                        <!-- END: DECISION -->
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->