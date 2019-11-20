<!-- BEGIN: MAIN -->
<!-- IF {PHP.usr.id} > 0 -->
<script language="JavaScript" type="text/javascript">
<!-- 
location="{PHP.cfg.mainurl}" 
//--> 
</script>
<!-- ENDIF -->
<div class="uk-container uk-container-center uk-width-1-1 uk-margin-large-top">
    <div class="uk-grid uk-hidden-small" data-uk-grid-margin="">
        <div class="uk-width-medium-1-3">
            <div class="uk-block-muted tp-panel-border uk-margin-large-bottom">
                <div class="uk-grid">
                    <div class="uk-width-1-4 uk-text-center">
                        <div class="uk-panel-body">
                            {PHP|cot_uk_icon("uk-icon-users tp-icon-down")}
                        </div>
                    </div>
                    <div class="uk-width-3-4">
                        <div class="uk-panel-body">
                            <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.cot_groups.8.name}</h4>
                            <p class="uk-margin-top-remove">
                                {PHP.L.Company_description}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="uk-width-medium-1-3">
            <div class="uk-block-muted tp-panel-border uk-margin-large-bottom">
                <div class="uk-grid">
                    <div class="uk-width-1-4 uk-text-center">
                        <div class="uk-panel-body">
							{PHP|cot_uk_icon("uk-icon-user-plus tp-icon-down")}
                             
                        </div>
                    </div>
                    <div class="uk-width-3-4">
                        <div class="uk-panel-body">
                            <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.cot_groups.4.name}</h4>
                            <p class="uk-margin-top-remove">
                                {PHP.L.Freelancer_description}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="uk-width-medium-1-3">
            <div class="uk-block-muted tp-panel-border uk-margin-large-bottom">
                <div class="uk-grid">
                    <div class="uk-width-1-4 uk-text-center">
                        <div class="uk-panel-body">
                             {PHP|cot_uk_icon("uk-icon-user tp-icon-down")}
                        </div>
                    </div>
                    <div class="uk-width-3-4">
                        <div class="uk-panel-body">
                            <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.cot_groups.7.name}</h4>
                            <p class="uk-margin-top-remove">
                                {PHP.L.Employer_description}
                            </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </div>

    <div class="uk-margin-large-bottom tp-select-ruserusergroup">
        <div class="uk-grid" data-uk-grid-margin="">
        <!-- BEGIN: USERGROUP_ROW -->
            <div class="uk-width-medium-1-3">
                <a href="{USERGROUP_ROW_ALIAS|cot_url('users', 'm=register&usergroup='$this)}" class="uk-button uk-button-large uk-button-success uk-width-1-1<!-- IF {USERGROUP_ROW_ACTIVEID} --> uk-active<!-- ENDIF -->">{USERGROUP_ROW_TITLE}</a>
            </div>
        <!-- END: USERGROUP_ROW -->
        </div>
    </div>

</div>
<!-- END: MAIN -->