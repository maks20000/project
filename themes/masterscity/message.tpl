<!-- BEGIN: MAIN -->
<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="tp-panel-border" style="background: #fff; padding: 5px">
        <div class="uk-grid">
            <div class="uk-width-1-4 uk-text-center">
                <div class="uk-panel-body">
                    <i class="uk-icon-bell tp-icon-warning"></i>
                </div>
            </div>
            <div class="uk-width-3-4">
                <div>
                    {MESSAGE_TITLE|cot_uk_heading(4, "$this", "uk-text-bold")}
                    <p>{MESSAGE_BODY}</p>
                    <!-- BEGIN: MESSAGE_CONFIRM -->
                    <div class="uk-grid">
                        <div class="uk-width-1-2">
                            <a id="confirmYes" href="{MESSAGE_CONFIRM_YES}" class="confirmButton uk-button uk-button-small uk-button-danger uk-width-1-4">{PHP.L.Yes}</a>
                        </div>
                        <div class="uk-width-1-2">
                            <a id="confirmNo" href="{MESSAGE_CONFIRM_NO}" class="confirmButton uk-button uk-button-small uk-button-success uk-width-1-4">{PHP.L.No}</a>
                        </div>
                    </div>
                    <!-- END: MESSAGE_CONFIRM -->
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->