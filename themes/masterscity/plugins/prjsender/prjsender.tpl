<!-- BEGIN: MAIN -->
<div class="tp-block-background-white tp-border-top">
    <div class="uk-container-center tp-padding-large-small uk-width-medium-1-3 tp-text-transform uk-text-center">
        {PHP.L.prjsender_title}
    </div>
</div>
<div class="uk-container uk-container-center uk-margin-top">
    <ul class="uk-breadcrumb">
        <li><a href="/">{PHP.L.Home}</a></li>
        <li><span>{PHP.L.prjsender}</span></li>
    </ul>
</div>
<div class="uk-container-center uk-width-1-4 uk-margin-top">
    <header class="tp-panel-header">
        <h3 class="uk-text-center">{PHP.L.Prjsender_desc_title}</h3>
    </header>
    <div class="tp-block-background-white" style="border-radius: 0;">
        <div class="tp-padding-large-small">
            <form action="{PRJSENDER_FORM_ACTION}" method="post">
                <div id="prjsender">
                {PRJSENDER_FORM_CATS}
                </div>
                <p class="uk-text-center uk-margin-top">
                <button class="uk-button uk-button-success uk-button-large">{PHP.L.Submit}</button>
                </p>
            </form>
        </div>
    </div>
</div>
 
<!-- END: MAIN -->