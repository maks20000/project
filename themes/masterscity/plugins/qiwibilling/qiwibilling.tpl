<!-- BEGIN: MAIN -->
<!-- BEGIN: QIWIFORM -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
        {PHP.L.qiwibilling_title|cot_uk_heading(1, "$this")}
    </div> 
</div>

<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
		<div class="uk-width-medium-1-1">
            <div class="uk-alert uk-alert-large">
                {PHP.L.qiwibilling_formtext}
            </div>
    	   <div class="uk-text-center">{QIWI_FORM}</div>
		</div>
	</div>
</div>
<!-- END: QIWIFORM -->

<!-- BEGIN: ERROR -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
        {QIWI_TITLE|cot_uk_heading(1, "$this")}
    </div> 
</div>

<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
        <div class="uk-width-medium-1-1">
            <div class="uk-alert uk-alert-large uk-alert-danger">
                {QIWI_ERROR}
            </div>
        </div>
    </div>
</div>
<!-- END: ERROR -->
<!-- END: MAIN -->