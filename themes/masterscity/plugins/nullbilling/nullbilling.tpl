<!-- BEGIN: MAIN -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
        {PHP.L.nullbilling_title|cot_uk_heading(1, "$this")}
    </div> 
</div>
<!-- BEGIN: ERROR -->
<div class="uk-container uk-container-center uk-margin-top">
        <div class="uk-alert uk-alert-danger">
            {BILLING_TITLE|cot_uk_heading(4, "$this")}
            {BILLING_ERROR}
        </div>
	<!-- IF {BILLING_REDIRECT_URL} -->
	<br/>
	<div class="uk-alert uk-alert-success">{BILLING_REDIRECT_TEXT}</div>
	
    <script>
        $(function(){
            setTimeout(function () {
                    location.href='{BILLING_REDIRECT_URL}';
            }, 5000);
        });
	</script>

	<!-- ENDIF -->
 </div>
<!-- END: ERROR -->
<!-- END: MAIN -->