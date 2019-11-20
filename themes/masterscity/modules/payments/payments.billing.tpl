<!-- BEGIN: MAIN -->
<!-- BEGIN: BILLINGS -->
    <div class="uk-block uk-block-muted">
        <div class="uk-container uk-container-center">
        {PHP.L.payments_billing_title|cot_uk_heading(1, "$this")}
        </div> 
    </div>
    <div class="uk-container uk-container-center uk-margin-large-top uk-margin-large-bottom">
        <div class="uk-grid-width-small-1-2 uk-grid-width-medium-1-3 uk-grid-width-large-1-4" data-uk-grid="{gutter: 30}">
            <!-- BEGIN: BILL_ROW -->
            <div>
                <a href="{BILL_ROW_URL}" class="tp-color">
                <div class="uk-block-muted uk-panel-body tp-panel-border">
                    <div class="uk-text-center">
                        <img class="uk-margin-top" src="<!-- IF {BILL_ROW_ICON} -->{BILL_ROW_ICON}<!-- ELSE -->modules/payments/images/billing_blank.png<!-- ENDIF -->" />
                        <h3 class="uk-text-bold tp-text-transform">
                            {BILL_ROW_TITLE}
                        </h3> 
                    </div>
                </div>
                </a>
            </div>
            <!-- END: BILL_ROW -->
        </div>
    </div>
    <!-- END: BILLINGS -->

    <!-- BEGIN: EMPTYBILLINGS -->
    <div class="uk-block uk-block-muted">
        <div class="uk-container uk-container-center uk-margin-large-top uk-margin-large-bottom">
        <h1>{PHP.L.payments_billing_title}</h1> 
        </div> 
    </div>
    <div class="uk-container uk-container-center uk-margin-large-top">
        <p class="uk-alert uk-alert-danger">{PHP.L.payments_emptybillings}</p>
    </div>
<!-- END: EMPTYBILLINGS -->

<!-- END: MAIN -->