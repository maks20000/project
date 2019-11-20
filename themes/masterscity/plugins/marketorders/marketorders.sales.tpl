<!-- BEGIN: MAIN -->
<div class="tp-block-background-white tp-border-top">
    <div class="uk-container uk-container-center uk-margin-top">
        <ul class="uk-breadcrumb">
        <li><a href="/">{PHP.L.Home}</a></li>
        {BREADCRUMBS|ul_transform($this)}
        </ul>
    </div>
</div>
<div class="uk-container uk-container-center uk-margin-large-top">
    <ul class="uk-tab uk-margin-bottom">
        <li<!-- IF !{PHP.status} --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('marketorders', 'm=sales')}">{PHP.L.All}</a></li>
        <li<!-- IF {PHP.status} == 'paid' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('marketorders', 'm=sales&status=paid')}">{PHP.L.marketorders_sales_paidorders}</a></li>
        <li<!-- IF {PHP.status} == 'done' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('marketorders', 'm=sales&status=done')}">{PHP.L.marketorders_sales_doneorders}</a></li>
        <li<!-- IF {PHP.status} == 'claim' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('marketorders', 'm=sales&status=claim')}">{PHP.L.marketorders_sales_claimorders}</a></li>
        <li<!-- IF {PHP.status} == 'cancel' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('marketorders', 'm=sales&status=cancel')}">{PHP.L.marketorders_sales_cancelorders}</a></li>
    </ul>
        <!-- BEGIN: ORDER_ROW -->
        <div class="tp-block-background-white uk-margin-bottom tp-padding-small">
            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-medium-1-2">
                    <div class="uk-grid">
                        <div class="uk-width-medium-1-6">
                            <div class="uk-margin-small-top">ID {ORDER_ROW_PRD_ID}</div>
                        </div>
                        <div class="uk-width-medium-3-4">
                            <h4 class="uk-margin-small-top uk-text-truncate"><a class="tp-dcolor" href="{ORDER_ROW_PRD_URL}">{ORDER_ROW_PRD_SHORTTITLE}</a></h4>
                        </div>
                    </div>
                </div>
                <div class="uk-width-medium-1-2">
                    <div class="uk-grid">
                        <div class="uk-width-medium-1-4">
                            <h5 class="uk-text-muted uk-text-truncate uk-margin-small-top">
                            <!-- IF {ORDER_ROW_CUSTOMER_ID} > 0 -->    
                            {ORDER_ROW_CUSTOMER_NAME}
                            <!-- ELSE -->
                            {ORDER_ROW_EMAIL}
                            <!-- ENDIF -->
                            </h5>
                        </div>
                        <div class="uk-width-medium-1-4 uk-margin-small-top">
                            <span class="tp-family-poiret uk-text-small"><a href="{ORDER_ROW_URL}">{ORDER_ROW_PAID|cot_date('j M Y', $this)}</a></span>
                        </div>
                        <div class="uk-width-medium-1-4 uk-margin-small-top">
                            <span class="uk-text-bold uk-text-small uk-text-truncate">{ORDER_ROW_COST} {PHP.cfg.payments.valuta}</span>
                        </div>
                        <div class="uk-width-medium-1-4">
                            <span class="uk-badge"> № {ORDER_ROW_ID}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- END: ORDER_ROW -->
    <!-- IF {PAGENAV_COUNT} > 0 -->	
    <ul class="uk-pagination">{PAGENAV_PAGES}</ul>
    <!-- ELSE -->
    <div class="uk-alert">{PHP.L.marketorders_empty}</div>
    <!-- ENDIF --> 
</div>
<!-- END: MAIN -->