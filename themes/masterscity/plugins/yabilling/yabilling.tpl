<!-- BEGIN: MAIN -->
<!-- BEGIN: BILLINGFORM -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
    {PHP.L.yabilling_title|cot_uk_heading(1, "$this")}
    </div> 
</div>

<div class="uk-container uk-container-center uk-margin-top uk-margin-large-bottom">
    <div class="uk-grid">
	<div class="uk-width-medium-1-1">
            <!-- IF !{PHP.cfg.plugin.yabilling.typechoise} -->
            <div class="alert alert-info">{PHP.L.yabilling_formtext}</div>
            
            <script>
                $(document).ready(function(){
                    setTimeout(function() {
                            $("#yandexform").submit();
                    }, 3000);
                });
            </script>
            <!-- ELSE -->
            <div class="uk-alert uk-alert-large">
                {PHP.L.yabilling_formtext1}
            </div>
            <!-- ENDIF -->
            {BILLING_FORM}
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

