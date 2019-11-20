<!-- BEGIN: MAIN -->
<div class="uk-block-large uk-container-center uk-width-1-2" style="margin-top: 7%;">
    <div class="uk-vertical-align uk-height-1-1">
        <div class="uk-vertical-align-middle uk-margin-large-bottom">
        <!-- IF {PHP.msg} == 'request' -->
        <div class="tp-panel-border" data-uk-alert="">
            <div class="uk-grid">
                <div class="uk-width-1-4 uk-text-center">
                    <div class="uk-panel-body">
                        {PHP|cot_uk_icon("uk-icon-chevron-down tp-icon-down")}
                    </div>
                </div>
                <div class="uk-width-3-4">
                    <a class="uk-alert-close uk-close" href=""></a>
                    <div class="uk-panel-body">
                        {PHP.L.Done|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                        <p class="uk-margin-top-remove">{PHP.L.pasrec_mailsent}</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- ENDIF -->
        
        <!-- IF {PHP.msg} == 'auth' -->
        <div class="tp-panel-border" data-uk-alert="">
            <div class="uk-grid">
                <div class="uk-width-1-4 uk-text-center">
                    <div class="uk-panel-body">
                         {PHP|cot_uk_icon("uk-icon-chevron-down tp-icon-down")}
                    </div>
                </div>
                <div class="uk-width-3-4">
                    <a class="uk-alert-close uk-close" href=""></a>
                    <div class="uk-panel-body">
                        {PHP.L.Done|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                        <p class="uk-margin-top-remove">{PHP.L.pasrec_mailsent2}</p>
                    </div>
                </div>
            </div>
        </div>
        <!-- ENDIF -->
        </div>
        <div class="uk-vertical-align-middle tp-panel-border uk-panel-body">
            <div class="uk-modal-header">
                {PHP.L.pasrec_title|cot_uk_heading(2, "$this")}
            </div>
            <ul class="uk-list">
                <li>1. {PHP.L.pasrec_explain1}</li>
                <li>2. {PHP.L.pasrec_explain2}</li>
                <li>3. {PHP.L.pasrec_explain3}</li>
            </ul>
            <form class="uk-form" method="post" action="{PHP|cot_url('users', 'm=passrecover&a=request')}" name="reqauth">
                <div class="uk-form-row uk-form uk-form-stacked">
                    <div class="uk-form-icon">
                         {PHP|cot_uk_icon("uk-icon-envelope")}
                        <input class="uk-form-large uk-width-1-1" type="text" required="" value="" name="email" maxlength="64" placeholder="{PHP.L.pasrec_youremail}">
                    </div>
                </div>
                <p class="uk-text-primary">
                    {PHP.L.pasrec_explain4}
                </p>
                <div class="uk-modal-footer">
                    <div class="uk-float-left">
                        <a class="tp-color-ts uk-button uk-button-large uk-button-link" data-uk-modal="" href="#log">{PHP.L.Login}</a>
                        <a class="tp-color-ts uk-button uk-button-large uk-button-link" data-uk-modal="" href="#register">{PHP.L.Register}</a>
                    </div>
                    <div class="uk-text-right">
                        <button class="uk-button uk-button-large uk-button-success" type="submit">{PHP.L.Send_inquiry}</button>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- END: MAIN -->