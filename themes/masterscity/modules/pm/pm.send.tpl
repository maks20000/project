<!-- BEGIN: MAIN -->
<!-- BEGIN: BEFORE_AJAX -->
<div id="ajaxBlock">
<!-- END: BEFORE_AJAX -->
<div class="uk-block-muted uk-block">
    <div class="uk-container-center uk-width-medium-1-1 tp-padd-large">
        
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-medium-1-5">
                <div class="tp-box">
                    <div class="tp-box-header tp-with-border">
                        {PHP.L.Forder_title|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
                    </div>
                    <ul class="uk-list-pm uk-margin-top-remove">
                        <li><a href="{PHP|cot_url('pm')}"><i class="uk-icon-envelope-o uk-margin-right"></i> {PHP.L.pm_inbox}</a></li>
                        <li><a href="{PHP|cot_url('pm', 'f=sentbox')}"><i class="uk-icon-file-text-o uk-margin-right"></i> {PHP.L.pm_sentbox}</a></li>
                        <li><a href="{PHP|cot_url('pm', 'm=send')}"><i class="uk-icon-inbox uk-margin-right"></i> {PHP.L.pm_sendnew}</a></li>
                    </ul>
                </div>
            </div>
            <div class="uk-width-medium-4-5">
                {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
                <form action="{PMSEND_FORM_SEND}" method="post" name="newmessage" id="mewmessage" class="uk-form">
                <div class="tp-box">
                    <div class="tp-box-header tp-with-border">
                        <h3 class="uk-margin-bottom-remove">{PHP.L.pmsend_subtitle}</h3>
                    </div>
                    <div class="uk-overflow-container">
                    <table class="uk-table">
                        <!-- BEGIN: PMSEND_USERLIST -->
                        <tr>
                            <td>{PHP.L.Recipients}:</td>
                            <td>
                                {PMSEND_FORM_TOUSER}
                                <p>{PHP.L.pm_sendmessagetohint}</p>
                            </td>
                        </tr>
                        <!-- END: PMSEND_USERLIST -->
                        <tr>
                            <td>{PHP.L.Subject}:</td>
                            <td>{PMSEND_FORM_TITLE}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Message}:</td>
                            <td>{PMSEND_FORM_TEXT}</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>{PMSEND_FORM_NOT_TO_SENTBOX}</td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" class="uk-text-center"><button type="submit" class="uk-button uk-button-large uk-button-success">{PHP.L.Submit}</button></td>
                        </tr>
                    
                    </table>
                    </div>
                </div>
                </form>        
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>
<!-- BEGIN: AFTER_AJAX -->
</div>
<!-- END: AFTER_AJAX -->
<!-- END: MAIN -->