<!-- BEGIN: MAIN -->
<ul class="uk-list uk-list-line">
    <!-- BEGIN: SIMPRJ_ROW -->
    <li class="uk-panel-body">
        <a title="{SIMPRJ_ROW_SHORTTITLE}" href="{SIMPRJ_ROW_URL}">{SIMPRJ_ROW_SHORTTITLE}</a>
        <!-- IF {SIMPRJ_ROW_COST} > 0 -->
        <span class="uk-badge uk-badge-success uk-float-right">{SIMPRJ_ROW_COST} {PHP.cfg.payments.valuta}</span>
        <!-- ENDIF -->
        
        <div class="uk-margin-top-remove">
        {SIMPRJ_ROW_SHORTTEXT|strip_tags($this)|mb_substr($this, 0, 50, 'UTF-8')}...
        </div>

    </li>
    <!-- END: SIMPRJ_ROW -->
</ul>
<!-- END: MAIN -->