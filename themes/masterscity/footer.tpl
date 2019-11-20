<!-- BEGIN: FOOTER -->
<!-- IF {PHP.env.ext} == 'users' ! {PHP.m} == 'passrecover' -->    
<!-- IF {PHP.env.ext} == 'users' ! {PHP.m} == 'register' -->
<!-- IF {PHP._SERVER.REQUEST_URI|substr($this, 0, 6)} != '/login --> 

<div class="tp-footer-bottom">
    <div class="uk-container uk-container-center">
	<div class="uk-grid" data-uk-grid-margin>
	<div class="uk-width-medium-1-3 uk-text-center">
<div class="uk-navbar-content">
            <a target="_blank" class="uk-text-contrast uk-text-center" data-uk-tooltip="{pos:'top'}" title="{PHP.L.ContactTitle}" href="{PHP|cot_url('contact')}">
                <i class="uk-icon-envelope uk-icon-small uk-margin-right tp-icon-success"></i>{PHP.L.ContactTitle}
            </a>
        </div>
    </div>
        
    
    <div class="uk-width-medium-1-3">
	<!-- IF {PHP.cot_plugins_active.useragreement} -->
        <div class="uk-navbar-content">
            <a target="_blank" class="uk-text-contrast uk-text-center" data-uk-tooltip="{pos:'top'}" title="{PHP.L.Useragreement_title}" href="{PHP|cot_url('useragreement')}">
                <i class="uk-icon-unlock-alt uk-icon-small uk-margin-right tp-icon-success"></i>{PHP.L.Useragreement_title}
            </a>
        </div>
	<!-- ENDIF -->
    </div>
    <div class="uk-width-medium-1-3">
        <div class="uk-navbar-content">
            <a target="_blank" class="uk-text-contrast uk-text-center" data-uk-tooltip="{pos:'top'}" title="Правила конфиденциальности" href="/support-info/privacy-policy"><i class="uk-icon-user-secret uk-icon-small uk-margin-right tp-icon-success"></i>Правила конфиденциальности</a>
        </div>
    </div>
</div>
</div>
</div>
<!-- ENDIF -->
<!-- ENDIF -->
<!-- ENDIF -->

<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
{FOOTER_RC}   
</body>
</html>
<!-- END: FOOTER --> 