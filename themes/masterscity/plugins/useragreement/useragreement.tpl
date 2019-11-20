<!-- BEGIN: MAIN -->
<div class="uk-block" style="position: relative; background-image: url('themes/{PHP.theme}/img/tp-folio-bg.png'); background-attachment: fixed;">
    <div class="uk-container uk-container-center"> 
        {PHP.L.useragreement|cot_uk_heading(1, "$this", "uk-text-bold uk-text-contrast")}
    </div>
</div>
<div class="uk-container uk-container-center uk-margin-top">
    <ul class="uk-breadcrumb">
        <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
        <li class="uk-active"><span>{PHP.L.useragreement}</span></li>
    </ul>
</div>
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center uk-margin-large-top">
        <div class="tp-box">
            <div class="tp-box-header tp-with-border">
                {PHP.L.useragreement|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
            </div>
            <div class="uk-panel-body">
            {USERAGREEMENT} 
            </div>
        </div>
    </div>
</div>
<!-- END: MAIN -->