<!-- BEGIN: MAIN -->
<div class="tp-block-background-white tp-border-top">
    <div class="uk-container uk-container-center uk-margin-top">
        <ul class="uk-breadcrumb">
        <li><a href="/">{PHP.L.Home}</a></li>
        {BREADCRUMBS|ul_transform($this)}
        </ul>
    </div>
</div>
<div class="uk-container-center uk-width-1-3 uk-margin-large-top">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <header class="tp-panel-header">
        <h3 class="uk-text-center">{PHP.L.marketorders_addclaim_title}</h3>
    </header>
    <form action="{CLAIM_FORM_SEND}" method="post" name="neworderform" class="uk-form">
        <div class="tp-block-background-white tp-padding-small">
            <p>{CLAIM_FORM_TEXT}</p>
        </div>
        <button type="submit" class="uk-button uk-button-large uk-button-danger uk-width-1-1" style="border-radius: 0 0 4px 4px;">{PHP.L.marketorders_addclaim_button}</button>
    </form>
</div>
<!-- END: MAIN -->