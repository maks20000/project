<!-- BEGIN: MAIN -->
<div class="uk-text-contrast uk-text-center uk-flex uk-flex-center uk-flex-middle" data-uk-parallax="{bg: '-200'}" style="min-height: 200px; background-image: url('themes/{PHP.theme}/img/tp-header-top.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-3">
        <h1>{PHP.L.tags_Search_tags}</h1>
        <form action="{TAGS_ACTION}" method="post" class="uk-form">
            <input class="uk-form-large uk-width-1-1" type="text" name="t" value="{TAGS_QUERY}" />
        </form>
    </div>
</div>

<div class="uk-container uk-container-center uk-margin-large-top">
<!-- BEGIN: TAGS_CLOUD -->
{TAGS_CLOUD_BODY}
<!-- END: TAGS_CLOUD -->

<div class="uk-alert">
{PHP.L.Tags|cot_uk_heading(4, "$this")}
{TAGS_HINT}
</div>
<!-- BEGIN: TAGS_RESULT -->

<div class="tp-box">    
    <div class="tp-box-header tp-with-border">
        {TAGS_RESULT_TITLE|cot_uk_heading(1, "$this", "uk-margin-bottom-remove")}
    </div>
    <ul class="uk-list uk-list-line">
        <!-- BEGIN: TAGS_RESULT_ROW -->
        <li class="uk-panel-body">
            <a href="{TAGS_RESULT_ROW_URL}">{TAGS_RESULT_ROW_TITLE}</a>
            <div class="uk-margin-top-remove">
                {TAGS_RESULT_ROW_TEXT_CUT}
                <p class="uk-text-bold">{PHP.L.Sections}: {TAGS_RESULT_ROW_PATH} {PHP.L.Tags}: {TAGS_RESULT_ROW_TAGS}</p>
            </div>
        </li>
        <!-- END: TAGS_RESULT_ROW -->
    </ul>
</div>

<!-- END: TAGS_RESULT -->

<!-- BEGIN: TAGS_RESULT_NONE -->
<div class="uk-width-1-4 tp-here">
    <div class="tp-panel-border tp-panel-box" data-uk-alert="">
        <div class="uk-grid">
            <div class="uk-width-1-4 uk-text-center">
                <div class="uk-panel-body">
                     {PHP|cot_uk_icon("uk-icon-warning tp-icon-error")}
                </div>
            </div>
            <div class="uk-width-3-4">
                <a class="uk-alert-close uk-close" href=""></a>
                <div class="uk-panel-body">
                    {PHP.L.Error|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                    <p class="uk-list uk-margin-top-remove">
                    {PHP.L.Noitemsfound}
                    </p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: TAGS_RESULT_NONE -->
<!-- IF {TAGS_PAGNAV} -->
<ul class="uk-pagination">
{TAGS_PAGNAV}
</ul>
<!-- ENDIF -->
</div>
<!-- END: MAIN -->