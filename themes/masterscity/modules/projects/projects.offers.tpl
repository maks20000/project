<!-- BEGIN: MAIN -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}

<!-- BEGIN: PROJECTFORPRO -->
<div class="uk-width-medium-1-4 tp-here">
<div class="tp-panel-border tp-panel-box" data-uk-alert="">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
            <div class="uk-panel-body">
                <i class="uk-icon-bell tp-icon-warning"></i>
            </div>
        </div>
        <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
            <a class="uk-alert-close uk-close" href=""></a>
            <div class="uk-panel-body">
                {PHP.L.Warning|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                <p class="uk-margin-top-remove">
                {PHP.L.paypro_warning_onlyforpro}
                </p>
            </div>
        </div>
    </div>
</div>
</div>  
<!-- END: PROJECTFORPRO -->

<!-- BEGIN: OFFERSLIMITEMPTY -->
<div class="uk-width-medium-1-4 tp-here">
<div class="tp-panel-border tp-panel-box" data-uk-alert="">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
            <div class="uk-panel-body">
                <i class="uk-icon-bell tp-icon-warning"></i>
            </div>
        </div>
        <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
            <a class="uk-alert-close uk-close" href=""></a>
            <div class="uk-panel-body">
                {PHP.L.Warning|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                <p class="uk-margin-top-remove">
                {PHP.L.paypro_warning_offerslimit_empty}
                </p>
            </div>
        </div>
    </div>
</div>
</div>  
<!-- END: OFFERSLIMITEMPTY -->

<div class="uk-grid uk-hidden-small" data-uk-grid-margin>
    <div class="uk-width-medium-1-2 uk-text-muted tp-text-transform">
        {PHP.L.offers_offers} {ALLOFFERS_COUNT}
    </div>
</div>
    
<!-- IF {PRJ_PERFORMER_ID} > 0 -->
<div class="uk-block-muted uk-panel-body uk-margin-top">
    <div class="uk-grid" data-uk-grid-margin="" >
        <div class="uk-width-medium-1-4">
            <!-- IF {PRJ_PERFORMER_AVATAR_SRC} -->
            <img src="{PRJ_PERFORMER_AVATAR_SRC}" height="120" width="120" alt="" />
            <!-- ELSE -->
            <img src="themes/{PHP.theme}/img/avatar.png" height="120" alt="" width="120" />
            <!-- ENDIF -->
        </div>
        <div class="uk-width-medium-3-4 uk-padding-remove">
            <div class="uk-grid">
                <div class="uk-width-medium-1-2">  
                    <p class="tp-text-italic uk-text-muted uk-margin-remove uk-text-small uk-text-bold">{PHP.L.offers_vibran_ispolnitel}</p>
                    <h3 class="uk-h4 tp-text-transform uk-margin-remove uk-text-bold uk-text-truncate">{PRJ_PERFORMER_NAME}</h3>
                </div>
                <div class="uk-width-medium-1-2 uk-text-right">
                    {FILE "themes/{PHP.theme}/inc/share.tpl"}
                </div>
            </div>
            <div class="uk-margin-top">
            <!-- IF {PRJ_PERFORMER_OWNER_TEXT} -->
            {PRJ_PERFORMER_OWNER_TEXT}
            <!-- ELSE -->
            {PHP.L.Users_signature_description}
            <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->
      
<div id="offers" class="uk-margin-top">
    <!-- BEGIN: ROWS -->
    <div class="tp-padding-large-small tp-block-background-white">
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-6">
            {OFFER_ROW_OWNER_AVATAR}
        </div>
        <div class="uk-width-medium-5-6 uk-margin-small-top">
            <div class="tp-panel-border uk-block-muted">
            <div class="uk-panel-body">
            <span class="uk-text-bold uk-text-muted">{OFFER_ROW_OWNER_NAME}</span> 
            <!-- IF {OFFER_ROW_OWNER_ISPRO} -->
            <span class="uk-text-bold uk-text-success uk-text-small">PRO</span> 
            <!-- ENDIF -->
            <span class="uk-text-bold uk-text-primary">{OFFER_ROW_OWNER_USERPOINTS}</span> 
            <span class="uk-text-bold uk-text-small">{OFFER_ROW_DATE}</span>
            <br />
            {OFFER_ROW_TEXT}
    <!-- IF {PHP.cot_plugins_active.offereditor} -->
     
        <!-- IF {PHP.usr.id} == {OFFER_ROW_OWNER_ID} OR {PHP.usr.isadmin} -->
        <div class="pull-right">
            <a href="{OFFER_ROW_OFFEREDITOR_EDIT_URL}" class="ajax" rel="get-offers">{PHP.L.offereditor_edit}</a> |
            <!-- IF {OFFER_ROW_STATUS} != 'canceled' --><a href="{OFFER_ROW_OFFEREDITOR_CANCEL_URL}">{PHP.L.offereditor_cancel}</a> | <!-- ENDIF -->
            <a href="{OFFER_ROW_OFFEREDITOR_DELETE_URL}">{PHP.L.offereditor_delete}</a>
        </div>
        <!-- ENDIF -->
     
        <!-- IF {OFFER_ROW_STATUS} == 'canceled' -->
        <div class="text-warning">{PHP.L.offereditor_status_canceled}</div>
        <!-- ENDIF -->
     
    <!-- ENDIF -->
            </div>
            </div>
            <!-- BEGIN: CHOISE -->
            <div class="uk-margin-top">
                <div class="uk-button-group">
                    <!-- IF {OFFER_ROW_CHOISE} == "refuse" -->
                    <p class="uk-text-danger">{PHP.L.offers_otkazali}!</p>
                    <!-- ENDIF -->
                    
                    <!-- IF {OFFER_ROW_CHOISE} == "performer" -->
                    <p class="uk-text-success">{PHP.L.offers_vibran_ispolnitel}!</p>
                    <!-- ENDIF -->
                    
                    <!-- IF {OFFER_ROW_CHOISE} != "refuse" -->
                    <a class="uk-button uk-button-mini uk-button-danger" href="{OFFER_ROW_REFUSE}" class="btn btn-warning btn-block">{PHP.L.offers_otkazat}</a> 
                    <!-- ENDIF -->
                    
                   
                    <!-- IF {OFFER_ROW_CHOISE} != "performer" AND {PERFORMER_USERID} == "" -->
                    <a class="uk-button uk-button-mini uk-button-primary" href="{OFFER_ROW_SETPERFORMER}" class="btn btn-success btn-block">{PHP.L.offers_ispolnitel}</a> 
                    <!-- ENDIF -->
                    
                    <!-- IF {OFFER_ROW_CHOISE} != "refuse" AND {PHP.cot_plugins_active.sbr} -->
                    <a class="uk-button uk-button-mini uk-button-success" href="{OFFER_ROW_SBRCREATELINK}" class="btn btn-primary btn-block">{PHP.L.sbr_createlink}</a> 
                    <!-- ENDIF -->
                    
                </div>
            </div>
            <!-- END: CHOISE -->
        </div>
    </div>
    <!-- IF {PHP.cot_plugins_active.mavatars} -->
    <!-- IF {OFFER_ROW_MAVATARCOUNT} -->                
        <div class="uk-container-center uk-width-medium-1-1 uk-margin-top uk-text-center">
            <div class="tp-padd">
            <!-- FOR {KEY}, {VALUE} IN {OFFER_ROW_MAVATAR} -->
            <div class="uk-grid">
                <div class="uk-width-medium-1-4">
                    <div class="uk-comment-avatar">
                        <img src="themes/{PHP.theme}/img/icon/file/{VALUE.FILEEXT}.svg" alt="{VALUE.FILENAME}.{VALUE.FILEEXT}" />
                    </div>
                    <p class="uk-text-muted">{VALUE.FILENAME|cot_string_truncate($this,8)}.{VALUE.FILEEXT}</p>
                </div>
                <div class="uk-width-medium-3-4">
                    <div class="uk-grid" data-uk-grid-margin="">
                        <div class="uk-width-medium-1-3 uk-text-muted">
                            <p class="uk-margin-top">{VALUE.FILESIZE|cot_build_filesize($this)} Кбайт</p>
                        </div>
                        <div class="uk-width-medium-1-3 uk-text-muted">
                            <p class="uk-margin-top">
                            <i class="uk-icon-upload"></i>
                            <span class="sw-font-12">{VALUE.DATE|cot_date('j M Y G:i', $this)}</span>
                            </p>
                        </div>
                        <div class="uk-width-medium-1-3">
                            <a class="uk-button uk-button-link uk-width-1-1" style="margin-top: 11px;" target="_blank" href="{VALUE.FILE}">{PHP.L.Download}</a>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ENDFOR -->
            </div>

        </div>
    <!-- ENDIF -->
    <!-- ENDIF -->
    
    <hr class="tp-padding-small" />
    
    <!-- BEGIN: POSTS -->

    <div id="projectsposts">
     
        <!-- BEGIN: POSTS_ROWS -->
        <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-10">
            {POST_ROW_OWNER_AVATAR}
        </div>
        <div class="uk-width-medium-5-6 uk-margin-small-top">
            <span class="uk-text-bold uk-text-muted">{POST_ROW_OWNER_NAME}</span>
            <!-- IF {POST_ROW_OWNER_ISPRO} -->
            <span class="uk-text-bold uk-text-success uk-text-small">PRO</span> 
            <!-- ENDIF -->
            {POST_ROW_DATE}{POST_ROW_EDIT_URL}<br />
            {POST_ROW_TEXT}
        </div>
                
        </div>
        <hr/>
        <!-- END: POSTS_ROWS -->
        <!-- BEGIN: POSTFORM -->
        <!-- IF {PRJ_PERFORMER_ID} == {POST_ROW_OWNER_ID} -->
        <div class="postform customform uk-margin-large-bottom" id="postform{ADDPOST_OFFERID}">
            <form action="{ADDPOST_ACTION_URL}" method="post" class="uk-form">
                {ADDPOST_TEXT}
                <p class="uk-text-center"><button class="uk-button uk-button-primary" type="submit" name="submit">{PHP.L.Submit}</button></p>
            </form>
        </div>
        <!-- ENDIF -->    
        <!-- END: POSTFORM -->
    </div>
    <!-- END: POSTS -->
    </div>
    <!-- END: ROWS -->
</div>

<!-- IF {OFFERSNAV_COUNT} > 0 -->
<ul class="uk-pagination">{OFFERSNAV_PAGES}</ul>
<!-- ENDIF -->

<!-- IF {ALLOFFERS_COUNT} == 0 -->
<div class="tp-panel-border tp-panel-box" data-uk-alert="">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-1-4 uk-text-center">
            <div class="uk-panel-body">
                <i class="uk-icon-volume-down tp-icon-here"></i>
            </div>
        </div>
        <div class="uk-width-3-4">
            <a class="uk-alert-close uk-close" href=""></a>
            <div class="uk-panel-body">
                <h4 class="uk-text-bold">Info</h4>
                <p>{PHP.L.offers_empty}</p>
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->

<!-- IF !{PRJ_PERFORMER_ID} > 0 -->
<!-- BEGIN: ADDOFFERFORM -->
<div id="addofferform" class="tp-panel-border uk-margin-top">
<form action="{OFFER_FORM_ACTION_URL}" method="post" enctype="multipart/form-data" class="uk-form uk-form-stacked uk-panel-body">
    <div class="tp-block-background-white">
<!--         <div class="tp-padding-large-small">
            <div class="uk-width-medium-1-1">
                <div class="uk-grid" data-uk-margin>
                <div class="uk-width-medium-1-2">
                    <div class="uk-form-row">
                        <label class="uk-form-label">
                        {PHP.L.offers_budget}: {PHP.L.offers_ot}
                        </label>
                        <div class="uk-form-controls">
                        {OFFER_FORM_COSTMIN} 
                        </div>
                    </div>
                    <div class="uk-form-row">
                        <label class="uk-form-label">
                        {PHP.L.offers_sroki}: {PHP.L.offers_ot}
                        </label>
                        <div class="uk-form-controls">
                        {OFFER_FORM_TIMEMIN}
                        </div>
                    </div>
                </div>
                <div class="uk-width-medium-1-2">
                    <div class="uk-form-row">
                        <label class="uk-form-label">
                        {PHP.L.offers_do} {PHP.cfg.payments.valuta}
                        </label>
                        <div class="uk-form-controls">
                        {OFFER_FORM_COSTMAX} 
                        </div>
                    </div>    
                    <div class="uk-form-row">
                        <label class="uk-form-label">
                        {PHP.L.offers_do}
                        </label>
                        <div class="uk-form-controls">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-2">
                                {OFFER_FORM_TIMEMAX}
                            </div>
                            <div class="uk-width-medium-1-2">
                                {OFFER_FORM_TIMETYPE}
                            </div>
                        </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>
        </div> -->
        <div class="tp-padding-large-small">
            <div class="uk-grid" data-uk-margin>
                <div class="uk-width-medium-1-1">
                    <fieldset data-uk-margin>
                        <legend class="ti-linck-black">{OFFER_FORM_HIDDEN}</legend>
                    </fieldset>
                </div>

                <div class="uk-width-1-1">
                    {OFFER_FORM_TEXT}
                </div>

            </div>
            <!-- IF {PHP.cot_plugins_active.mavatars} -->
            <!--
            <div class="uk-margin-top">
                {OFFER_FORM_MAVATAR}
            </div>
            -->
            <!-- ENDIF -->    
            <div class="uk-text-center uk-margin-top">
                <button type="submit" name="submit" class="uk-button uk-button-primary uk-margin-top">{PHP.L.offers_add_predl}</button>
            </div>
        </div>                    
    </div>
</form>	
</div>

<!-- END: ADDOFFERFORM -->
<!-- ENDIF -->

<!-- IF {PHP.usr.id} == 0 -->
<div class="uk-alert uk-alert-warning">
{PHP.L.offers_for_guest}
</div>
<!-- ENDIF -->
<!-- END: MAIN -->


