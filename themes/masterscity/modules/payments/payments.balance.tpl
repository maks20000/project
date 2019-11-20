<!-- BEGIN: MAIN -->
<div class="uk-block-muted">
    <div class="uk-container uk-container-center" style="padding-top: 20px;">
    <!-- IF {PHP.cfg.payments.balance_enabled} -->
    <h1 class="uk-h2 uk-text-bold uk-block">
        {PHP.L.payments_balance}: {BALANCE_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}
    </h1>
    <!-- ENDIF -->  
      
    <ul class="uk-tab">
        <li<!-- IF {PHP.n} == 'history' --> class="uk-active"<!-- ENDIF -->><a href="{BALANCE_HISTORY_URL}">{PHP.L.payments_history}</a></li>
        <!-- IF {PHP.cfg.payments.balance_enabled} -->
        <li<!-- IF {PHP.n} == 'billing' --> class="uk-active"<!-- ENDIF -->><a href="{BALANCE_BILLING_URL}">{PHP.L.payments_paytobalance}</a></li>
        <!-- IF {PHP.cfg.payments.payouts_enabled} -->
        <li<!-- IF {PHP.n} == 'payouts' --> class="uk-active"<!-- ENDIF -->><a href="{BALANCE_PAYOUT_URL}">{PHP.L.payments_payouts}</a></li>
        <!-- ENDIF -->
        <!-- IF {PHP.cfg.payments.transfers_enabled} -->
        <li<!-- IF {PHP.n} == 'transfers' --> class="uk-active"<!-- ENDIF -->><a href="{BALANCE_TRANSFER_URL}">{PHP.L.payments_transfer}</a></li>
        <!-- ENDIF -->
        <!-- ENDIF -->
    </ul>  

    </div> 
</div>
<div class="uk-margin-large-bottom">
<div class="uk-container uk-container-center uk-margin-large-top">
    <!-- BEGIN: PAYOUTS -->
    <div class="uk-container uk-container-center uk-width-medium-1-4 uk-text-center">
    <a class="uk-button uk-button-large uk-button-success uk-width-1-1" href="{PHP|cot_url('payments', 'm=balance&n=payouts&a=add')}">{PHP.L.payments_balance_payouts_button}</a>
    </div>
    <div class="uk-overflow-container">
        <table class="uk-table uk-table-hover uk-margin-top">
            <!-- BEGIN: PAYOUT_ROW -->
            <tr>
                <td><span class="uk-badge uk-badge-default">{PAYOUT_ROW_ID}</span></td>
                <td class="uk-text-muted">{PAYOUT_ROW_CDATE|cot_date('d.m.Y H:i', $this)}</td>
                <td><!-- IF {PAYOUT_ROW_DATE} > 0 -->{PAYOUT_ROW_DATE|cot_date('d.m.Y H:i', $this)}<!-- ELSE -->{PHP.L.No}<!-- ENDIF --></td>
                <td style="text-align: right;" class="uk-text-bold ti-linck-black">{PAYOUT_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
            </tr>
            <!-- END: PAYOUT_ROW -->
        </table>
    </div>
    <!-- END: PAYOUTS -->
    <!-- BEGIN: PAYOUTFORM -->
    <div class="uk-container uk-container-center uk-width-medium-1-2">
        <div class="tp-panel-box uk-width-medium-1-4 tp-here-left" data-uk-alert="">
            <div class="tp-panel-border">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
                        <div class="uk-panel-body">
                            <i class="uk-icon-volume-down tp-icon-here"></i>
                        </div>
                    </div>
                    <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
                        <a class="uk-alert-close uk-close" href=""></a>
                        <div class="uk-panel-body">
                            {PHP.L.Attention_title|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-remove")}
                             <p class="uk-text-small uk-text-bold uk-margin-top-remove">
                                {PHP.L.Payments_info_min_perevod_title}:  <br /><span class="uk-text-success">{PHP.cfg.payments.payoutmin} {PHP.cfg.payments.valuta}</span><br />
                                {PHP.L.Payments_info_max_perevod_title}:  <br /><span class="uk-text-success">{PHP.cfg.payments.payoutmax} {PHP.cfg.payments.valuta}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="tp-panel-border uk-panel-body"> 
        <div class="uk-text-center uk-margin-top uk-margin-bottom">
        <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
        </div>   
            <div>
                <form action="{PAYOUT_FORM_ACTION_URL}" method="post" id="payoutform" class="uk-form">
                    <div class="uk-overflow-container">
                        <table class="uk-table">
                            <tr>
                                <td>{PHP.L.payments_balance_payout_details}</td>
                                <td>{PAYOUT_FORM_DETAILS}</td>
                            </tr>
                            <tr>
                                <td>{PHP.L.payments_balance_payout_summ}</td>
                                <td>
                                <div class="tp-input-group">
                                <span class="tp-input-group-addon">
                                {PHP.cfg.payments.valuta}
                                </span>
                                {PAYOUT_FORM_SUMM}
                                </div>
                                </td>
                            </tr>
                            <!-- IF {PHP.cfg.payments.payouttax} > 0 -->
                            <tr>
                                <td>{PHP.L.payments_balance_payout_tax} ({PHP.cfg.payments.payouttax}%):</td>
                                <td><span id="payout_tax">{PAYOUT_FORM_TAX}</span> {PHP.cfg.payments.valuta}</td>
                            </tr>
                            <tr>
                                <td>{PHP.L.payments_balance_payout_total}:</td>
                                <td class="uk-text-success"><span id="payout_total">{PAYOUT_FORM_TOTAL}</span> {PHP.cfg.payments.valuta}</td>
                            </tr>
                            <!-- ENDIF -->
                            <tr>
                                <td colspan="2" class="uk-text-center"><button class="uk-button uk-button-success uk-width-1-2 uk-button-large">{PHP.L.Submit}</button></td>
                            </tr>
                        </table>
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!-- IF {PHP.cfg.payments.payouttax} > 0 -->		
    <script>
        $().ready(function() {
            $('#payoutform').bind('change click keyup', function (){
                var summ = parseFloat($("input[name='summ']").val());
                var tax = parseFloat({PHP.cfg.payments.payouttax});

                if(isNaN(summ)) summ = 0;

                var taxsumm = summ*tax/100;
                var totalsumm = summ + taxsumm;

                $('#payout_tax').html(taxsumm);
                $('#payout_total').html(totalsumm);
            });
        });
    </script>
    <!-- ENDIF -->
    <!-- END: PAYOUTFORM -->
    
    <!-- BEGIN: TRANSFERS -->
    <div class="uk-container uk-container-center uk-width-medium-1-4 uk-text-center">
    <a class="uk-button uk-button-large uk-button-success uk-width-1-1" href="{PHP|cot_url('payments', 'm=balance&n=transfers&a=add')}">{PHP.L.payments_balance_transfers_button}</a>
    </div>
    <!-- IF {PHP.transfers|count($this)} > 0 -->
    <div class="uk-overflow-container">
    <table class="uk-table uk-table-hover uk-margin-top">
        <thead>
            <tr>
                <th>ID</th>
                <th>{PHP.L.payments_balance_transfers_for}</th>
                <th class="uk-uk-text-right">{PHP.L.payments_summ}</th>
                <th>{PHP.L.Description}</th>
                <th class="uk-uk-text-right">{PHP.L.Date}</th>
                <th class="uk-uk-text-right">{PHP.L.Done}</th>
                <th class="uk-text-right">{PHP.L.Status}</th>
            </tr>
        </thead>
        <!-- BEGIN: TRANSFER_ROW -->
        <tr>
            <td>{TRANSFER_ROW_ID}</td>
            <td><a href="{TRANSFER_ROW_FOR_DETAILSLINK}">{TRANSFER_ROW_FOR_FULL_NAME}</a></td>
            <td class="uk-text-right">{TRANSFER_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</td>
            <td>{TRANSFER_ROW_COMMENT}</td>
            <td class="uk-text-right">{TRANSFER_ROW_DATE|cot_date('d.m.Y H:i', $this)}</td>
            <td class="uk-text-right">{TRANSFER_ROW_DONE|cot_date('d.m.Y H:i', $this)}</td>
            <td class="uk-text-right">{TRANSFER_ROW_LOCALSTATUS}</td>
        </tr>
        <!-- END: TRANSFER_ROW -->
    </table>
    </div>
    <!-- ELSE -->
    <div class="uk-alert">{PHP.L.payments_history_empty}</div>
    <!-- ENDIF -->
    <!-- END: TRANSFERS -->
    
    <!-- BEGIN: TRANSFERFORM -->
    <div class="uk-container uk-container-center uk-width-medium-1-2">
    <div class="tp-panel-box uk-width-medium-1-4 tp-here-left" data-uk-alert="">
            <div class="tp-panel-border">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
                        <div class="uk-panel-body">
                            <i class="uk-icon-volume-down tp-icon-here"></i>
                        </div>
                    </div>
                    <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
                        <a class="uk-alert-close uk-close" href=""></a>
                        <div class="uk-panel-body">
                            {PHP.L.Attention_title|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-remove")}
                            <p class="uk-text-small uk-text-bold uk-margin-top-remove">
                                {PHP.L.Payments_info_min_title}:  <br /><span class="uk-text-success">{PHP.cfg.payments.transfermin} {PHP.cfg.payments.valuta}</span><br /> 
                                {PHP.L.Payments_info_max_title}:  <br /><span class="uk-text-success">{PHP.cfg.payments.transfermax}{PHP.cfg.payments.valuta}</span>
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="tp-panel-border uk-panel-body"> 
        <div class="uk-text-center uk-margin-top uk-margin-bottom">
        <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
        </div>   
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <div class="tp-panel-box uk-panel-body">
            <div>
            <form action="{TRANSFER_FORM_ACTION_URL}" method="post" id="transferform" class="uk-form">
                <div class="uk-overflow-container">
                <table class="uk-table">
                    <tr>
                        <td>{PHP.L.payments_balance_transfer_comment}:</td>
                        <td>{TRANSFER_FORM_COMMENT}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.payments_balance_transfer_username}:</td>
                        <td>{TRANSFER_FORM_USERNAME}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.payments_balance_transfer_summ} </td>
                        <td>
                            <div class="tp-input-group">
                            {TRANSFER_FORM_SUMM}
                            <span class="tp-input-group-addon">{PHP.cfg.payments.valuta}</span>
                            </div>
                        </td>
                    </tr>
                    <!-- IF {PHP.cfg.payments.transfertax} > 0 AND !{PHP.cfg.payments.transfertaxfromrecipient} -->
                    <tr>
                        <td>{PHP.L.payments_balance_transfer_tax} ({PHP.cfg.payments.transfertax}%):</td>
                        <td><span id="transfer_tax">{TRANSFER_FORM_TAX}</span> {PHP.cfg.payments.valuta}</td>
                    </tr>
                    <tr>
                        <td>{PHP.L.payments_balance_transfer_total}</td>
                        <td>
                            
                            <span id="transfer_total">{TRANSFER_FORM_TOTAL}</span> {PHP.cfg.payments.valuta}
                            <script>
                                $().ready(function() {
                                    $('#transferform').bind('change click keyup', function (){
                                        var summ = parseFloat($("input[name='summ']").val());
                                        var tax = parseFloat({PHP.cfg.payments.transfertax});

                                        if(isNaN(summ)) summ = 0;

                                        var taxsumm = summ*tax/100;
                                        var totalsumm = summ + taxsumm;

                                        $('#transfer_tax').html(taxsumm);
                                        $('#transfer_total').html(totalsumm);
                                    });
                                });
                            </script>
                          
                        </td>
                    </tr>
                    <!-- ENDIF -->
                    <tr>
                        <td colspan="2" class="uk-text-center"><button class="uk-button uk-button-success uk-width-1-2 uk-button-large">{PHP.L.Submit}</button></td>
                    </tr>
                </table>
                </div>
            </form>
            </div>
        </div>
    </div>
   </div>                
    <!-- END: TRANSFERFORM -->

    <!-- BEGIN: BILLINGFORM -->
    <div class="uk-container-center uk-width-medium-1-3 uk-text-center">
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
    <div class="tp-panel-border uk-panel-body">
    <div class="uk-text-center uk-margin-top uk-margin-bottom">
        <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
    </div>
    <form action="{BALANCE_FORM_ACTION_URL}" method="post" class="uk-form">
        <div class="tp-panel-box uk-panel-body">
            <div class="tp-padding-small">
                <p>{BALANCE_FORM_SUMM}</p>
                <p><button class="uk-button uk-button-success uk-width-1-1 uk-button-large">{PHP.L.payments_paytobalance}</button></p>
            </div>
        </div>
    </form>
    </div>
    </div>
    <!-- END: BILLINGFORM -->
    
    <!-- BEGIN: HISTORY -->
    <div class="uk-block-muted tp-panel-border">
    <div class="uk-text-center uk-margin-top uk-margin-bottom">
        <a href="{PHP.cfg.mainurl}"><img src="themes/{PHP.theme}/img/log.png" height="40" width="140" alt="{PHP.cfg.maintitle}"></a>
    </div>    
    <div class="uk-overflow-container">
        <hr />
        <table class="uk-table uk-table-hover">
            <thead>
                <th class="uk-text-center ti-linck-black">ID</th>
                <th class="uk-text-center ti-linck-black"><i class="uk-icon-caret-up uk-text-success"></i> <i class="uk-icon-caret-down uk-text-danger"></i></th>
                <th class="ti-linck-black">{PHP.L.Date}</th>
                <th class="ti-linck-black">{PHP.L.Action}</th>
                <th class="uk-uk-text-right ti-linck-black">{PHP.L.Budget}</th>
            </thead>
            <tbody>
            <!-- BEGIN: HIST_ROW -->
                <tr>
                    <td class="uk-text-center"><span class="uk-badge uk-badge-default">{HIST_ROW_ID}</span></td>
                    <td class="uk-text-center"><!-- IF {HIST_ROW_AREA} == 'balance' --><i class="uk-icon-caret-up uk-text-success"></i><!-- ELSE --><i class="uk-icon-caret-down uk-text-danger"></i><!-- ENDIF --></td>
                    <td class="uk-text-muted">{HIST_ROW_PDATE|cot_date('d.m.Y H:i', $this)}</td>
                    <td class="uk-text-muted">{HIST_ROW_DESC}</td>
                    <td style="text-align: right;"><b class="ti-linck-black">{HIST_ROW_SUMM|number_format($this, '2', '.', ' ')} {PHP.cfg.payments.valuta}</b></td>
                </tr>
            <!-- END: HIST_ROW -->
            <tbody>
        </table>
    </div>
    </div>
    <!-- END: HISTORY -->
</div>
</div>
<!-- END: MAIN -->