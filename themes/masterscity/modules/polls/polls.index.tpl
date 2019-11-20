<!-- BEGIN: POLL_VIEW -->
<div id = "poll_{POLL_ID}">
    <form action="{POLL_FORM_URL}" method="post" id="poll_form_{POLL_ID}" class="ajax uk-form post-poll_{POLL_ID};index.php;e=polls&mode=ajax&poll_theme=index">
        <input type="hidden" name="poll_id" value="{POLL_ID}" />
        <ul class="uk-list uk-column-1-1 uk-column-medium-1-1">
            <!-- BEGIN: POLLTABLE -->
            <li><label>{POLL_INPUT} - {POLL_OPTIONS}</label></li>
            <!-- END: POLLTABLE -->
        </ul>
        <div class="uk-margin-top uk-text-center">
		<!-- IF {PHP.usr.id} > 0 -->
        <button class="uk-button uk-button-success uk-width-medium-1-2" type="submit" title="{PHP.L.polls_Vote}">{PHP.L.polls_Vote}</button>
		<!-- ENDIF -->
        <p><a href="{PHP|cot_url('polls', 'c=viewall')}">{PHP.L.polls_viewarchives}</a></p>
        </div>
    </form>
</div>
<!-- END: POLL_VIEW -->

<!-- BEGIN: POLL_VIEW_VOTED -->
<ul class="uk-list uk-column-1-1 uk-column-medium-1-1">
    <!-- BEGIN: POLLTABLE -->
    <li>
        <div><div class="uk-float-left">{POLL_OPTIONS}</div> <div class="uk-text-right uk-text-small uk-text-muted">({POLL_COUNT})</div></div>
        
        <div class="uk-progress uk-progress-primary uk-progress-striped uk-margin-bottom">
            <div class="uk-progress-bar" style="width:{POLL_PER}%;">{POLL_PER}%</div>
        </div>

    </li>
    <!-- END: POLLTABLE -->
</ul>
<p class="uk-text-center uk-text-small">{PHP.L.Votes}: {POLL_VOTERS} <a href="{PHP|cot_url('polls', 'c=viewall')}">{PHP.L.polls_viewarchives}</a></p>
<!-- END: POLL_VIEW_VOTED -->


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


<!-- BEGIN: POLL_VIEW_LOCKED -->
<ul class="uk-list uk-column-1-1 uk-column-medium-1-2">
    <!-- BEGIN: POLLTABLE -->
    <li>
        <div>{POLL_OPTIONS} ({POLL_COUNT})</div>

        <div class="uk-progress uk-progress-primary uk-progress-striped uk-margin-bottom">
            <div class="uk-progress-bar" style="width:{POLL_PER}%;">{POLL_PER}%</div>
        </div>
	<hr />
    </li>
    <!-- END: POLLTABLE -->
</ul>
<p class="uk-text-center">{PHP.L.Date} {POLL_SINCE_SHORT} {PHP.L.Votes} {POLL_VOTERS}</p>
<!-- END: POLL_VIEW_LOCKED -->


<!-- BEGIN: INDEXPOLLS -->
<div class="uk-grid" data-uk-grid-margin="">
    <div class="uk-width-medium-1-3">
        <!-- BEGIN: POLL -->
        <div class="uk-text-center uk-width-medium-1-1 uk-container-center">
        <h4 class="uk-h6 tp-text-transform uk-text-muted uk-margin-remove">{PHP.L.Polls}</h4>
        <h3 class="tp-text-transform uk-margin-remove uk-text-bold">{IPOLLS_TITLE}</h3>
        <i class="uk-icon-bar-chart uk-text-large uk-margin-remove tp-color-ts uk-margin-top"></i>
        </div>
        <h2 class="sw-text-muted"></h2>
        {IPOLLS_FORM}
        <!-- END: POLL -->
        <!-- BEGIN: ERROR -->
        <p>{IPOLLS_ERROR}</p>
        <!-- END: ERROR -->
    </div>
</div>
<!-- END: INDEXPOLLS -->