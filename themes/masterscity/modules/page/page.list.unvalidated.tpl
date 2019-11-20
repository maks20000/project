<!-- BEGIN: MAIN -->
<div class="uk-text-center uk-flex uk-flex-center uk-flex-middle" style="min-height: 180px; background-image: url('themes/{PHP.theme}/img/tp-header-marget-bg.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-2">
        {LIST_CATTITLE|cot_uk_heading(1, "$this", "tp-text-transform uk-text-bold")}
        <p class="uk-text-large tp-text-transform">{PHP.L.Unvalidated_pages_description}</p>
    </div>
</div>

<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
        <div class="uk-overflow-container">
            <table class="uk-table uk-table-striped">
                <thead>
                    <tr>
                        <th>{PHP.L.Cat_title}</th>
                        <th>{PHP.L.Title}</th>
                        <th>{PHP.L.Status}</th>
                        <th class="uk-text-right">{PHP.L.Edit}</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- BEGIN: LIST_ROW -->
                    <tr>
                        <td class="uk-text-truncate"><a target="_blank" href="{LIST_ROW_CATURL}">{LIST_ROW_CATTITLE}</a></td>
                        <td class="uk-text-truncate"><a target="_blank" href="{LIST_ROW_URL}">{LIST_ROW_SHORTTITLE}</a></td>
                        <td><span class="uk-text-primary">{LIST_ROW_LOCALSTATUS}</span></td>
                        <td class="uk-text-right"><a class="uk-button uk-button-small uk-button-success" href="{LIST_ROW_ADMIN_EDIT_URL}">{PHP.L.Edit}</a></td>
                    </tr>
                    <!-- END: LIST_ROW -->
                </tbody>
            </table>
        </div>
        <!-- IF {LIST_TOP_PAGINATION} -->
        <p>
            {PHP.L.Page} {LIST_TOP_CURRENTPAGE} {PHP.L.Of} {LIST_TOP_TOTALPAGES}
        </p>
        <ul class="uk-pagination uk-margin-large-bottom">
            {LIST_TOP_PAGINATION}
        </ul>
        <!-- ENDIF -->
    </div>
</div>
<!-- END: MAIN -->