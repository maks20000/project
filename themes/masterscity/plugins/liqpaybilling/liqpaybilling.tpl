<!-- BEGIN: MAIN -->
<!-- BEGIN: BILLINGFORM -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    {PHP.L.liqpaybilling_title|cot_uk_heading(1, "$this")}
    </div> 
</div>

<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
	<div class="uk-width-medium-1-1">
            <div class="uk-alert uk-alert-large">
                {PHP.L.liqpaybilling_formtext}
            </div>
            
            <script>
                $(document).ready(function(){
                    setTimeout(function() {
                            $("#liqpayform").submit();
                    }, 3000);
                });
            </script>
    	   <div class="uk-text-center">{BILLING_FORM}</div>

	</div>
    </div>
</div>
<!-- END: BILLINGFORM -->
<!-- BEGIN: ERROR -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    {BILLING_TITLE|cot_uk_heading(1, "$this")}
    </div> 
</div>

<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
	<div class="uk-width-medium-1-1">
            <div class="uk-alert uk-alert-large uk-alert-danger">
                {BILLING_ERROR}
            </div>
	</div>
    </div>
</div>
<!-- END: ERROR -->
<!-- END: MAIN -->