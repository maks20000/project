<!-- BEGIN: MAIN -->
<div class="uk-contrast uk-block" style="min-height:150px; position: relative; background-image: url('themes/{PHP.theme}/img/tp-header-top.png'); background-attachment: fixed;">
    <div class="uk-container uk-container-center">
    {PHP.L.paytop_buytop_title|cot_uk_heading(1, "$this")}
    </div> 
</div>

<div style="padding-bottom: 10px;"></div>
<div class="uk-container-center uk-width-1-4 uk-margin-large-top uk-margin-large-bottom">
    
    <ul class="uk-breadcrumb">
        <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
        <li class="uk-active"><span>{PHP.L.paytop_buytop_title}</span></li>
    </ul>

    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <form action="{TOP_FORM_ACTION}" method="post">
        <div class="tp-panel-border" style="border-radius: 0;">
            <header class="tp-panel-header">
                {TOP_FORM_AREA_NAME|cot_uk_heading(3, "$this", "uk-text-center uk-text-bold tp-text-transform")}
            </header>
            <div class="tp-padding-large-small uk-text-center uk-margin-large-top uk-margin-large-bottom">
                <h2 class="uk-text-primary uk-h1 uk-text-bold ">{TOP_FORM_COST} {PHP.cfg.payments.valuta}</h2>
            </div>
        </div>
        <div>
            <button class="uk-button tp-text-transform uk-button-large uk-width-1-1">{PHP.L.paytop_buy}</button>
        </div>  
    </form>
</div>
<!-- END: MAIN -->