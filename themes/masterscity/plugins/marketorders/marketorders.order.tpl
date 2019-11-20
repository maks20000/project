<!-- BEGIN: MAIN -->
<div class="tp-block-background-white tp-border-top">
    <div class="uk-container uk-container-center uk-margin-top">
        <ul class="uk-breadcrumb uk-float-left">
        <li><a href="/">{PHP.L.Home}</a></li>
        {BREADCRUMBS|ul_transform($this)}
        <li><span>№ {ORDER_ID}</span></li>
        </ul>
        <span class="uk-badge uk-float-right">{ORDER_LOCALSTATUS}</span>
    </div>
</div>
<div class="uk-container uk-container-center">
    <div class="tp-block-background-white tp-padding-small uk-margin-large-top">
        <div class="uk-grid">
            <div class="uk-width-medium-1-2 uk-text-break">
                {PHP.L.marketorders_product}: <!-- IF {ORDER_PRD_SHORTTITLE} --><a href="{ORDER_PRD_URL}" target="blank">[ID {ORDER_PRD_ID}] {ORDER_PRD_SHORTTITLE}</a><!-- ELSE -->{ORDER_TITLE}<!-- ENDIF -->
                <p>{PHP.L.marketorders_cost}: {ORDER_COST} {PHP.cfg.payments.valuta}</p>
                <p>{PHP.L.marketorders_warranty}: {ORDER_WARRANTYDATE|date('d.m.Y H:i', $this)}</p>
            </div>
            <div class="uk-width-medium-1-2">
                <p>{PHP.L.marketorders_count}: {ORDER_COUNT}</p>
                <p>{PHP.L.marketorders_paid}: {ORDER_PAID|date('d.m.Y H:i', $this)}</p>
                <!-- IF {ORDER_DOWNLOAD} -->
                {PHP.L.marketorders_file_for_download}:  <a class="uk-button uk-button-mini uk-button-success" href="{ORDER_DOWNLOAD}" >{PHP.L.marketorders_file_download}</a>
                <!-- ENDIF -->
            </div>
        </div>  
    </div>
    <!-- IF {ORDER_WARRANTYDATE} > {PHP.sys.now} AND {ORDER_STATUS} == 'paid' AND {PHP.usr.id} == {ORDER_CUSTOMER_ID} -->
    <div class="uk-text-center">
    <a class="uk-button uk-button-danger uk-margin-top" href="{ORDER_ID|cot_url('marketorders', 'm=addclaim&id='$this)}">{PHP.L.marketorders_addclaim_button}</a>
    </div>
    <!-- ENDIF -->
</div>
<!-- IF {ORDER_COMMENT} -->
<div class="uk-container uk-container-center uk-margin-top">
    <div class="uk-alert uk-alert-success">
        <h3 class="uk-text-center">{PHP.L.marketorders_comment}</h3>
        <p>{ORDER_COMMENT}</p>
    </div>
</div>
<!-- ENDIF -->

<!-- BEGIN: CLAIM -->
<div class="uk-container uk-container-center">
    <div class="uk-grid">
        <div class="uk-width-medium-3-4">
            <div class="uk-alert">
                <h3>{PHP.L.marketorders_claim_title}</h3>
                <span class="uk-badge">{CLAIM_DATE|date('d.m.Y H:i', $this)}</span>
                <p>{CLAIM_TEXT}</p>
            </div>
        </div>
        <div class="uk-width-medium-1-4">
            <!-- BEGIN: ADMINCLAIM -->
            <a class="uk-button uk-width-1-1 uk-button-large uk-margin-bottom uk-button-danger" href="{ORDER_ID|cot_url('marketorders', 'a=acceptclaim&id='$this)}" class="btn btn-warning">{PHP.L.marketorders_claim_accept}</a>
            <a class="uk-button uk-width-1-1 uk-button-large uk-button-primary" href="{ORDER_ID|cot_url('marketorders', 'a=cancelclaim&id='$this)}" class="btn btn-danger">{PHP.L.marketorders_claim_cancel}</a>
            <!-- END: ADMINCLAIM -->
        </div>
    </div>
</div>
<!-- END: CLAIM -->

<!-- END: MAIN -->