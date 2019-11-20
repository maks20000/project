<!-- BEGIN: MAIN -->
<div class="tp-block-background-white tp-border-top">
    <div class="uk-container uk-container-center uk-margin-top">
        <ul class="uk-breadcrumb">
        <li><a href="/">{PHP.L.Home}</a></li>
        {BREADCRUMBS|ul_transform($this)}
        </ul>
    </div>
</div>
<div class="uk-container-center uk-width-1-5 uk-margin-large-top">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <header class="tp-panel-header">
        <h3 class="uk-text-center">{PHP.L.marketorders_neworder_product}</h3>
    </header>
    <form action="{NEWORDER_FORM_SEND}" method="post" name="neworderform" class="uk-form">
        <div class="tp-block-background-white tp-padding-small">
            <div class="uk-form-row">
                <label class="uk-form-label">{PHP.L.marketorders_neworder_count}</label>
                {NEWORDER_FORM_COUNT}
            </div>
            <div class="uk-form-row">
                <label class="uk-form-label">{PHP.L.marketorders_neworder_comment}</label>
                {NEWORDER_FORM_COMMENT}
            </div>
            <div class="uk-form-row">
                <label class="uk-form-label">{PHP.L.marketorders_neworder_total}</label>
                <span id="total">{NEWORDER_PRD_COST}</span> {PHP.cfg.payments.valuta}
            </div>
            <!-- IF {PHP.usr.id} == 0 -->
            <div class="uk-form-row">
                <label class="uk-form-label">{PHP.L.marketorders_neworder_email}</label>
                {NEWORDER_FORM_EMAIL}
            </div>
            <!-- ENDIF -->
        </div>
        <button type="submit" class="uk-button uk-button-large uk-button-success uk-width-1-1" style="border-radius: 0 0 4px 4px;">{PHP.L.marketorders_neworder_button}</button>
    </form>
    <script>
        $().ready(function() {
            $('#count').bind('change click keyup', function (){
                    var prdcost = {PHP.item.item_cost};
                    var count = $('input[name="rcount"]').val();
                    $('#total').html(prdcost*count);
            });
        });
    </script>
</div>
<!-- END: MAIN -->