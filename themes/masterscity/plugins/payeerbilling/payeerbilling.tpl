<!-- BEGIN: MAIN -->
<!-- BEGIN: BILLINGFORM -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    {PHP.L.payeerbilling_title|cot_uk_heading(1, "$this")}
    </div> 
</div>
  
<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
	<div class="uk-width-medium-1-1">
            <div class="uk-alert uk-alert-large">
                {PHP.L.payeerbilling_formtext}
            </div>
            
            <script>
                $(document).ready(function(){
                        setTimeout(function() {
                                $("#payeerform").submit();
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
    <h1>{BILLING_TITLE}</h1> 
    </div> 
</div>

<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
		<div class="uk-width-medium-1-1">
            <div class="uk-alert uk-alert-large uk-alert-danger">
                {BILLING_ERROR}
            </div>
            <!-- IF {BILLING_REDIRECT_URL} -->
        	<br/>
        	<p class="small">{BILLING_REDIRECT_TEXT}</p>
        	<script>
        		$(function(){
                            setTimeout(function () {
                                    location.href='{BILLING_REDIRECT_URL}';
                            }, 5000);
        		});
        	</script>

        	<!-- ENDIF -->
		</div>
	</div>
</div>
<!-- END: ERROR -->
<!-- END: MAIN -->