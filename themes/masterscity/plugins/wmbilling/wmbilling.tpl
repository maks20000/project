<!-- BEGIN: MAIN -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    {PHP.L.wmbilling_title|cot_uk_heading(1, "$this")}
    </div> 
</div>
 
<!-- BEGIN: WMFORM -->
<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
        <div class="uk-width-medium-1-1">
    	<div class="uk-alert uk-alert-large">
            <p>{PHP.L.wmbilling_formtext}</p>
        </div>
        
    	<script>
            $(document).ready(function(){
                setTimeout(function() {
                        $("#wmform").submit();
                }, 3000);
            });
    	</script>
    	<div class="uk-text-center">{WEBMONEY_FORM}</div>

        </div>
     </div>
</div>    
<!-- END: WMFORM -->

<!-- BEGIN: ERROR -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    {WEBMONEY_TITLE|cot_uk_heading(1, "$this")}
    </div> 
</div>

<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
        <div class="uk-width-medium-1-1">
            <div class="uk-alert uk-alert-large uk-alert-danger">
        	<p>{WEBMONEY_ERROR}</p>
            </div>
        	<!-- IF {WEBMONEY_REDIRECT_URL} -->
        	<br/>

        	<p class="small">{WEBMONEY_REDIRECT_TEXT}</p>
        	<script>
                    $(function(){
                            setTimeout(function () {
                                    location.href='{WEBMONEY_REDIRECT_URL}';
                            }, 5000);
                    });
        	</script>

        	<!-- ENDIF -->
         </div>
    </div>
</div>
<!-- END: ERROR -->


<!-- END: MAIN -->