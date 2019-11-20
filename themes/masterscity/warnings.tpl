<!-- BEGIN: DONE -->
<div class="uk-width-medium-1-4 tp-here">
<div class="tp-panel-border tp-panel-box" data-uk-alert="">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
            <div class="uk-panel-body">
                {PHP|cot_uk_icon("uk-icon-chevron-down tp-icon-down")}
            </div>
        </div>
        <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
            <a class="uk-alert-close uk-close" href=""></a>
            <div class="uk-panel-body">
                {PHP.L.Done|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                <ul class="uk-list uk-margin-top-remove">
                <!-- BEGIN: DONE_ROW -->
                <li>{DONE_ROW_MSG}</li>
                <!-- END: DONE_ROW -->
                </ul>
            </div>
        </div>
    </div>
</div>
</div>
<!-- END: DONE -->

<!-- BEGIN: WARNING -->
<div class="uk-width-medium-1-4 tp-here">
<div class="tp-panel-border tp-panel-box" data-uk-alert="">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
            <div class="uk-panel-body">
                 {PHP|cot_uk_icon("uk-icon-bell tp-icon-warning")}
            </div>
        </div>
        <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
            <a class="uk-alert-close uk-close" href=""></a>
            <div class="uk-panel-body">
                {PHP.L.Warning|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                <ul class="uk-list uk-margin-top-remove">
                <!-- BEGIN: WARNING_ROW -->
                <li>{WARNING_ROW_MSG}</li>
                <!-- END: WARNING_ROW -->
                </ul>
            </div>
        </div>
    </div>
</div>
</div>  
<!-- END: WARNING -->

<!-- BEGIN: ERROR -->
<div class="uk-width-medium-1-4 tp-here">
    <div class="tp-panel-border tp-panel-box" data-uk-alert="">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
                <div class="uk-panel-body">
                     {PHP|cot_uk_icon("uk-icon-warning tp-icon-error")}
                </div>
            </div>
            <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
                <a class="uk-alert-close uk-close" href=""></a>
                <div class="uk-panel-body">
                    {PHP.L.Error|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                    <ul class="uk-list uk-margin-top-remove">
                    <!-- BEGIN: ERROR_ROW -->
                    <li>{ERROR_ROW_MSG}</li>
                    <!-- END: ERROR_ROW -->
                    </ul>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: ERROR -->