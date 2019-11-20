<!-- BEGIN: MAIN -->
<!-- BEGIN: IKASSAFORM -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    {PHP.L.ikassabilling_title|cot_uk_heading(1, "$this")}
    </div> 
</div>
<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
            
            <div class="uk-width-medium-1-1">
        	<div class="uk-alert uk-alert-info">{PHP.L.ikassabilling_title}</div>
           	<script>
        		$(document).ready(function(){
        			setTimeout(function() {
        				$("#ikassaform").submit();
        			}, 3000);
        		});
           </script>

            {IKASSA_FORM}
            </div>

	</div>
</div>
<!-- END: IKASSAFORM -->
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
                {IKASSA_ERROR}
            </div>  
            <!-- IF {IKASSA_REDIRECT_URL} -->
        	<br/>
        	<p>{IKASSA_REDIRECT_TEXT}</p>

        	<script>
        		$(function(){
                    setTimeout(function () {
                            location.href='{IKASSA_REDIRECT_URL}';
                    }, 5000);
        		});
        	</script>

        	<!-- ENDIF -->
	</div>
    </div>
</div>
<!-- END: ERROR -->
<!-- END: MAIN -->

