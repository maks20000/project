<!-- BEGIN: MAIN -->
<div class="uk-contrast uk-block" style="min-height:150px; position: relative; background-image: url('themes/{PHP.theme}/img/tp-header-top.png'); background-attachment: fixed;">
    <div class="uk-container uk-container-center">
        <!-- IF {PHP.cot_plugins_active.paypro} -->
        <!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.projectslimit} > 0 AND {PHP.cfg.plugin.paypro.projectslimit} <= {PHP.usr.id|cot_getcountprjofuser($this)} -->
        <div class="uk-alert uk-alert-warning">{PHP.L.paypro_warning_projectslimit_empty}</div>
        <!-- ENDIF -->
        <!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.offerslimit} > 0 AND {PHP.cfg.plugin.paypro.offerslimit} <= {PHP.usr.id|cot_getcountoffersofuser($this)} -->
        <div class="uk-alert uk-alert-warning">{PHP.L.paypro_warning_offerslimit_empty}</div>
        <!-- ENDIF -->
        <!-- ENDIF -->
    <h1>{PHP.L.paypro_buypro_title}</h1>
    </div> 
</div>
<div class="uk-container uk-container-center uk-margin-large-top">
    <ul class="uk-breadcrumb">
        <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
        <li class="uk-active"><span>{PHP.L.paypro_buypro_title}</span></li>
        <!-- IF {PRO_FORM_USER_NAME} -->
        <li class="uk-active"><span>{PHP.L.paypro_giftfor}</span></li>
        <li class="uk-active"><span>{PRO_FORM_USER_NAME}</span></li>  
        <!-- ENDIF -->
    </ul>
</div>
<div style="padding-bottom: 10px;"></div>
<div class="uk-container uk-container-center uk-margin-large-top">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <form action="{PRO_FORM_ACTION}" id="buy_pro" method="post">
    
    <input type="hidden" value="1" name="months">
 
    <div class="uk-grid" data-uk-grid-margin>
        <div class="uk-width-medium-1-2">
            <div class="tp-panel-border" style="border-radius: 0;">
                <header class="tp-panel-header">
                    <h3 class="uk-text-center uk-text-bold tp-text-transform">PRO на 1 месяц</h3>
                </header>
                <div class="tp-padding-large-small uk-text-center">
                    <h2 class="uk-text-primary uk-h1 uk-text-bold">{PRO_FORM_PERIOD_COST_1} {PHP.cfg.payments.valuta}</h2>
                    <del class="uk-text-danger">{PRO_FORM_PERIOD_OLD_COST_1} {PHP.cfg.payments.valuta}</del>
                    <br />
                    <p class="uk-text-success uk-text-bold">Скидка: {PRO_FORM_PERIOD_DISCOUNT_1}%</p>
                </div>
            </div>
            <div class="btn_buy_pro">
                <a data-months="1" class="uk-button tp-text-transform uk-button-large uk-width-1-1">{PHP.L.paypro_buy}</a>
            </div>  
        </div>
        <div class="uk-width-medium-1-2">
            <div class="tp-panel-border" style="border-radius: 0;">
                <header class="tp-panel-header">
                    <h3 class="uk-text-center uk-text-bold tp-text-transform">PRO на 3 месяца</h3>
                </header>
                <div class="tp-padding-large-small uk-text-center">
                    <h2 class="uk-text-primary uk-h1 uk-text-bold">{PRO_FORM_PERIOD_COST_3} {PHP.cfg.payments.valuta}</h2>
                    <del class="uk-text-danger">{PRO_FORM_PERIOD_OLD_COST_3} {PHP.cfg.payments.valuta}</del>
                    <br />
                    <p class="uk-text-success uk-text-bold">Скидка: {PRO_FORM_PERIOD_DISCOUNT_3}%</p>
                </div>
            </div>
            <div class="btn_buy_pro">
                <a data-months="3" class="uk-button tp-text-transform uk-button-large uk-width-1-1">{PHP.L.paypro_buy}</a>
            </div>
        </div>
        <div class="uk-width-medium-1-2">
            <div class="tp-panel-border" style="border-radius: 0;">
                <header class="tp-panel-header">
                    <h3 class="uk-text-center uk-text-bold tp-text-transform">PRO на 6 месяцев</h3>
                </header>
                <div class="tp-padding-large-small uk-text-center">
                    <h2 class="uk-text-primary uk-h1 uk-text-bold">{PRO_FORM_PERIOD_COST_6} {PHP.cfg.payments.valuta}</h2>
                    <del class="uk-text-danger">{PRO_FORM_PERIOD_OLD_COST_6} {PHP.cfg.payments.valuta}</del>
                    <br />
                    <p class="uk-text-success uk-text-bold">Скидка: {PRO_FORM_PERIOD_DISCOUNT_6}%</p>
                </div>
            </div>
            <div class="btn_buy_pro">
                <a data-months="6" class="uk-button tp-text-transform uk-button-large uk-width-1-1">{PHP.L.paypro_buy}</a>
            </div>
        </div>
        <div class="uk-width-medium-1-2">
            <div class="tp-panel-border" style="border-radius: 0;">
                <header class="tp-panel-header">
                    <h3 class="uk-text-center uk-text-bold tp-text-transform">PRO на 12 месяцев</h3>
                </header>
                <div class="tp-padding-large-small uk-text-center">
                    <h2 class="uk-text-primary uk-h1 uk-text-bold">{PRO_FORM_PERIOD_COST_12} {PHP.cfg.payments.valuta}</h2>
                    <del class="uk-text-danger">{PRO_FORM_PERIOD_OLD_COST_12} {PHP.cfg.payments.valuta}</del>
                    <br />
                    <p class="uk-text-success uk-text-bold">Скидка: {PRO_FORM_PERIOD_DISCOUNT_12}%</p>
                </div>
            </div>
            <div class="btn_buy_pro">
                <a data-months="12" class="uk-button uk-button-large tp-text-transform uk-width-1-1">{PHP.L.paypro_buy}</a>
            </div>
        </div>
    </div>
    </form>

    <script>
        $('.btn_buy_pro a').click(function (){
            $('input[name="months"]').val($(this).attr('data-months'));
            $('#buy_pro').submit();
            return false;
        });
    </script>

</div>
<div style="padding-bottom: 70px;"></div>
<!-- END: MAIN -->
