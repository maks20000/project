<!-- BEGIN: MAIN -->
<div class="tp-block-background-white tp-border-top">
    <div class="uk-container uk-container-center uk-margin-top">
        <ul class="uk-breadcrumb">
            <li><a href="/">{PHP.L.Home}</a></li>
            <li class="uk-active"><span>{PHP.L.payprjbold_buy_title}</span></li>
        </ul>
    </div>
</div>
<div class="uk-container uk-container-center uk-margin-large-top uk-margin-large-bottom">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <form action="{PAY_FORM_ACTION}" method="post" class="uk-form">

    
        <div class="uk-width-medium-1-3">
            <header class="tp-panel-header">
                <h3 class="uk-text-center">{PHP.L.payprjbold_costofday}:</h3>
            </header>
            <div class="tp-block-background-white" style="border-radius: 0;">
                <div class="tp-padding-large-small uk-text-center">
                    <h2 class="uk-text-primary uk-text-bold">{PAY_FORM_COST} {PHP.cfg.plugin.payprjbold.cost} {PHP.cfg.payments.valuta}</h2>
                </div>
            </div>
                    <div class="">
                        <div class="uk-form-row">
						<p>{PHP.L.payprjtop_error_days}:</p>
                            <label class="uk-form-label uk-text-danger">{PHP.L.payprjbold_day}</label>
                            {PAY_FORM_PERIOD}
                        </div>
                    </div>
            <div class="uk-text-center uk-margin">
				<button class="uk-button uk-button-primary uk-button-large btn btn-success">{PHP.L.payprjbold_buy}</button>
            </div>  
		</div>
    </form>

</div>
<!-- END: MAIN -->