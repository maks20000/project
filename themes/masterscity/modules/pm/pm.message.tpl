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
                <div class="tp-box">
                    <div class="tp-box-header tp-with-border">
                        <h3 class="uk-margin-bottom-remove">{PHP.L.pm_replyto}</h3>
                    </div>
                    <div class="uk-overflow-container">
                    <table class="uk-table tp-pmtitle">
                        <tr>
                            <td>{PHP.L.Subject}:</td>
                            <td>{PM_TITLE}</td>
                        </tr>
                        <tr>
                            <td>{PM_SENT_TYPE}:</td>
                            <td>{PM_USER_NAME}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Date}:</td>
                            <td>{PM_DATE}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Message}:</td>
                            <td>{PM_TEXT}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Action}:</td>
                            <td>{PM_QUOTE} {PM_EDIT} {PM_DELETE} {PM_HISTORY}</td>
                        </tr>
                    </table>
                    <hr />
                    <!-- BEGIN: REPLY -->
                    <form action="{PM_FORM_SEND}" method="post" name="newlink" class="uk-form">
                        <table class="uk-table">
                        <tr>
                            <td>{PHP.L.Subject}:</td>
                            <td>{PM_FORM_TITLE}</td>
                        </tr>
                        <tr>
                            <td>{PHP.L.Message}:</td>
                            <td>{PM_FORM_TEXT}</td>
                        </tr>
                        <tr>
                            <td>&nbsp;</td>
                            <td>{PM_FORM_NOT_TO_SENTBOX}</td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" class="uk-text-center"><button type="submit" class="uk-button uk-button-large uk-button-success">{PHP.L.Reply}</button></td>
                        </tr>
                        
                        </table>
                    </form>
		<!-- END: REPLY -->
                    </div>
                </div>
                          
                <!-- ENDIF -->
                <!-- BEGIN: HISTORY -->
                <div id="ajaxHistory">
                    <div class="tp-box">
                        <div class="tp-box-header tp-with-border">
                            <h3 class="uk-margin-bottom-remove">{PHP.L.pm_replyto}</h3>
                        </div>
                        <div class="uk-overflow-container">
                            <table class="uk-table-striped tp-pmtitle">
                                <!-- BEGIN: PM_ROW -->
				<tr>
                                    <td>{PM_ROW_USER_NAME}<br />{PM_ROW_DATE}</td>
                                    <td>{PM_ROW_TEXT}</td>
				</tr>
				<!-- END: PM_ROW -->
				<!-- BEGIN: PM_ROW_EMPTY -->
				<tr>
                <td colspan="2">{PHP.L.None}</td>
				</tr>
				<!-- END: PM_ROW_EMPTY -->
                            </table>
                        </div>
                    </div>
                    <!-- IF {PM_PAGES} --><ul class="uk-pagination uk-pagination-left">{PM_PAGES}</ul><!-- ENDIF -->
                </div>
                <!-- END: HISTORY -->
            </div>
        </div>
    </div>
</div>
<!-- BEGIN: AFTER_AJAX -->
</div>
<!-- END: AFTER_AJAX -->
<!-- END: MAIN -->