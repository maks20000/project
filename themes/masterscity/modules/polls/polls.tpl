<!-- BEGIN: POLL_VIEW -->
<div id = "poll_{POLL_ID}">
    <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax uk-form post-poll_{POLL_ID};index.php;e=polls&mode=ajax">
        <input type="hidden" name="poll_id" value="{POLL_ID}" />
        <ul class="uk-list uk-column-1-1 uk-column-medium-1-2">
            <!-- BEGIN: POLLTABLE -->
            <li><label>{POLL_INPUT}{POLL_OPTIONS}</label></li>
            <!-- END: POLLTABLE -->
        </ul>
        <div class="uk-margin-top uk-text-center">
        <button class="uk-button uk-button-success uk-width-1-5" type="submit" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
        <p><a href="{PHP|cot_url('polls', 'c=viewall')}">{PHP.L.polls_viewarchives}</a></p>
        </div>
    </form>
</div>
<!-- END: POLL_VIEW -->

<!-- BEGIN: POLL_VIEW_VOTED -->
<ul class="uk-list uk-column-1-1 uk-column-medium-1-2 uk-margin-large-top">
<!-- BEGIN: POLLTABLE -->
    <li>
        <div><div class="uk-float-left">{POLL_OPTIONS}</div> <div class="uk-text-right uk-text-small uk-text-muted">({POLL_COUNT})</div></div>
        
        <div class="uk-progress uk-progress-primary uk-progress-striped">
            <div class="uk-progress-bar" style="width:{POLL_PER}%;">{POLL_PER}%</div>
        </div>

    </li>
<!-- END: POLLTABLE -->
</ul>
<p class="uk-text-danger uk-text-center">{PHP.L.polls_alreadyvoted}</p>
<p class="uk-text-center uk-text-small">{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
<!-- END: POLL_VIEW_VOTED -->


<!-- BEGIN: POLL_VIEW_LOCKED -->
<ul class="uk-list uk-column-1-1 uk-column-medium-1-2">
<!-- BEGIN: POLLTABLE -->
    <li>
        <div><div class="uk-float-left">{POLL_OPTIONS}</div> <div class="uk-text-right uk-text-small uk-text-muted">({POLL_COUNT})</div></div>
        
        <div class="uk-progress uk-progress-primary uk-progress-striped">
            <div class="uk-progress-bar" style="width:{POLL_PER}%;">{POLL_PER}%</div>
        </div>

    </li>
<!-- END: POLLTABLE -->
</ul>
<p class="uk-text-danger uk-text-center">{PHP.L.polls_locked}</p>
<p class="uk-text-center uk-text-small">{POLL_VOTERS} {PHP.L.Date} {POLL_SINCE}</p>
<!-- END: POLL_VIEW_LOCKED -->


<!-- BEGIN: POLL_VIEW_DISABLED -->
<table class="uk-table uk-table-hover">
    <!-- BEGIN: POLLTABLE -->
        <tr>
            <td>{POLL_OPTIONS}</td>
        </tr>
    <!-- END: POLLTABLE -->
    <tr>
        <td>{PHP.L.rat_registeredonly}</td>
    </tr>
</table>
<!-- END: POLL_VIEW_DISABLED -->


<!-- BEGIN: MAIN -->
<!-- BEGIN: POLLS_VIEW -->
    <div class="uk-block uk-block-muted">
        <div class="uk-container uk-container-center">
            <h2>{POLLS_TITLE}</h2>
        </div>
    </div>
    <div class="uk-container uk-container-center uk-margin-large-top">
        {POLLS_FORM}    
        {POLLS_COMMENTS_DISPLAY}
    </div>
<!-- END: POLLS_VIEW -->


<!-- BEGIN: POLLS_VIEWALL -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    <h2>{PHP.L.polls_viewarchives}</h2>
    </div>
</div>
<div class="uk-container uk-container-center uk-margin-large-top">
    <div class="uk-overflow-container">
    <table class="uk-table uk-table-striped">
        <!-- BEGIN: POLL_ROW -->
        <tr>
            <td>{POLL_DATE}</td>
            <td class="tp-ahover"><a href="{POLL_HREF}">{POLL_TEXT}</a></td>
            <td>{POLLS_COMMENTS}</td>
        </tr>
        <!-- END: POLL_ROW -->
        <!-- BEGIN: POLL_NONE -->
        <tr>
            <td class="centerall">{PHP.L.None}</td>
        </tr>
        <!-- END: POLL_NONE -->
    </table>
    </div>
</div>
<!-- END: POLLS_VIEWALL -->
{FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
<!-- END: MAIN -->