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
                        <h3 class="uk-margin-bottom-remove">Папки</h3>
                    </div>
                    
                    <ul class="uk-list-pm uk-margin-top-remove">
                        <li<!-- IF !{PHP._GET.m} AND !{PHP._GET.f} --> class="uk-active"<!-- ENDIF -->>
                            <a href="{PHP|cot_url('pm')}"><i class="uk-icon-envelope-o uk-margin-right"></i> {PHP.L.pm_inbox}</a>
                        </li>
                        <li<!-- IF {PHP._GET.f} == "sentbox" --> class="uk-active"<!-- ENDIF -->>
                            <a href="{PHP|cot_url('pm', 'f=sentbox')}"><i class="uk-icon-file-text-o uk-margin-right"></i> {PHP.L.pm_sentbox}</a>
                        </li>
                        <li>
                            <a href="{PHP|cot_url('pm', 'm=send')}"><i class="uk-icon-inbox uk-margin-right"></i> {PHP.L.pm_sendnew}</a>
                        </li>
                    </ul>
                
                </div>
            </div>
            <div class="uk-width-medium-4-5">
                <form action="{PM_FORM_UPDATE}" method="post" name="update" id="update" class="ajax uk-form">
                <div class="tp-box">
                    <div class="tp-box-header tp-with-border">
                        {PM_SUBTITLE|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
                    </div>
                    <div class="uk-overflow-container">
                    <table class="uk-table uk-table-striped tp-pmtitle">
                        <thead>
                        <tr>
                            <th>
                                <!-- IF {PHP.cfg.jquery} -->
                                <input class="checkbox" type="checkbox" value="{PHP.themelang.pm.Selectall}/{PHP.themelang.pm.Unselectall}" onclick="$('.checkbox').attr('checked', this.checked);" />
                                <!-- ENDIF -->
                            </th>
                            <th>{PHP.L.Status}</th>
                            <th>
                                <div class="pm-star pm-star-readonly">
                                    <a href="#" title ="{PHP.L.pm_starred}"> &nbsp; </a>
                                </div>
                            </th>
                            <th>{PHP.L.Subject}</th>
                            <th>{PM_SENT_TYPE}</th>
                            <th>{PHP.L.Date}</th>
                            <th>{PHP.L.Action}</th>
                        </tr>
                        </thead>
                        <tbody>
                        <!-- BEGIN: PM_ROW -->
                        <tr>
                            <td><input type="checkbox" class="checkbox" name="msg[{PM_ROW_ID}]" /></td>
                            <td class="uk-text-center">{PM_ROW_ICON_STATUS}</td>
                            <td class="uk-text-center">{PM_ROW_STAR}</td>
                            <td>
                                <b>{PM_ROW_TITLE}</b> {PM_ROW_DESC}
                            </td>
                            <td class="uk-text-center uk-text-truncate">{PM_ROW_USER_NAME}</td>
                            <td class="uk-text-center">{PM_ROW_DATE}</td>
                            <td class="uk-text-center">{PM_ROW_ICON_EDIT} {PM_ROW_ICON_DELETE}</td>
                        </tr>
                        <!-- END: PM_ROW -->
                        </tbody>
                        <!-- BEGIN: PM_ROW_EMPTY -->
                        <tr>
                         <td class="centerall" colspan="7">{PHP.L.None}</td>
                        </tr>
                        <!-- END: PM_ROW_EMPTY -->
                    </table>
                    </div>
                </div>
                <!-- IF {PHP.jj} > 0 -->
                <div class="paging">
                <span>{PHP.L.pm_selected}:</span>
                <select name="action" size="1">
                <option value="delete" >{PHP.L.Delete}</option>
                <option value="star" selected="selected">{PHP.L.pm_putinstarred}</option>
                </select>
                <button type="submit" name="delete" class="uk-button">{PHP.L.Confirm}</button>
                </div>
                <!-- ENDIF -->
                </form>
                <!-- {PM_PAGES} -->
                <ul class="uk-pagination uk-pagination-left">
                    {PM_PAGES}
                </ul>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>
<!-- BEGIN: AFTER_AJAX -->
</div>
<!-- END: AFTER_AJAX -->
<!-- END: MAIN -->