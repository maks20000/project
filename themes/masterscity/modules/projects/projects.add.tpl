<!-- BEGIN: MAIN -->
<div class="uk-text-center uk-flex uk-flex-center uk-flex-middle" style="min-height: 180px; background-image: url('themes/{PHP.theme}/img/tp-header-marget-bg.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-2">
        {PHP.L.projects_add_project_title|cot_uk_heading(1, "$this", "tp-text-transform uk-text-bold")}
    </div>
</div>
<div class="uk-container uk-container-center uk-margin-large-top uk-margin-large-bottom">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form class="uk-form uk-form-stacked" action="{PRJADD_FORM_SEND}" method="post" name="newadv" enctype="multipart/form-data">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.Title|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    {PRJADD_FORM_TITLE}
                </div>
            </div>
        </div>
        <!-- IF {PHP.cot_plugins_active.catbox} -->
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.Category|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    {PHP.c|cot_catbox('projects', $this, 'rcat', '0', '', 'uk-column-medium-1-2')}
                </div>
            </div>
        </div>
        <!-- ENDIF -->
    </div>
    

    
    <div>
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <div class="uk-form-row">
            <label class="uk-form-label"></label>
            <div class="uk-form-controls">
                {PRJADD_FORM_LOCATION}
            </div>
        </div>
        <!-- ENDIF -->
        <div class="uk-grid" data-uk-grid-margin="">
            <!-- IF {PHP.projects_types} -->
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.Type|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PRJADD_FORM_TYPE}
                    </div>
                </div>
            </div>
            <!-- ENDIF -->
            <!-- BEGIN: TAGS -->
            <div class="uk-width-medium-1-2 uk-margin-top">
                <div class="uk-form-row">
                {PRJADD_FORM_TAGS_TITLE|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PRJADD_FORM_TAGS}<br />
                        <span class="uk-text-small">{PRJADD_FORM_TAGS_HINT}</span>
                    </div>
                </div>
            </div>
            <!-- END: TAGS -->
        </div>
    </div>
    
    <!-- IF {PHP.usr.isadmin} -->
    <div>
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.Alias|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PRJADD_FORM_ALIAS}
                    </div>
                </div>
            </div>
            
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.Parser|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PRJADD_FORM_PARSER}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ENDIF -->
    <div class="uk-form-row uk-margin-bottom">
    <label class="uk-form-label"></label>
        <div class="uk-form-controls">
            {PRJADD_FORM_TEXT}
        </div>
    </div>
     <!-- IF {PHP.cot_plugins_active.mavatars} --> 
    <div class="uk-form-row uk-margin-bottom">
    <label class="uk-form-label uk-text-danger">до 2мб, (jpeg,jpg,png,zip,rar)</label>	 
    {PRJADD_FORM_MAVATAR}
    </div>
    <!-- ENDIF --> 
	<!-- IF {PRJADD_FORM_TERM_END} --> 
    <div class="uk-form-row uk-margin-bottom">
    <label class="uk-form-label uk-text-danger">{PRJADD_FORM_TERM_END_TITLE}</label>
        <div class="uk-form-controls">
            {PRJADD_FORM_TERM_END}
        </div>
    </div>
	<!-- ENDIF -->	
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.projects_price|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    <div class="tp-input-group">
                    <span class="tp-input-group-addon">
                    {PHP.cfg.payments.valuta}
                    </span>
                    {PRJADD_FORM_COST}
                    </div>
                </div>
            </div>
        </div>
        <!-- IF {PHP.cot_plugins_active.paypro} -->
        
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.Ifo_rpo_title|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-grid tp-select-ruserusergroup">
                    <div class="uk-width-medium-1-2">
                        <label class="radio inline">
                            <input class="uk-hidden" type="radio" checked="" name="ritemforpro" value="0" />
                            <span class="uk-button uk-button-large" style="width: 100%;">{PHP.L.All_title}</span>
                        </label>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <label class="radio inline">
                            <input class="uk-hidden" type="radio" name="ritemforpro" value="1" /> 
                            <span class="uk-button uk-button-large" style="width: 100%;">{PHP.L.paypro_forpro}</span>
                        </label>
                    </div>
                    <div class="uk-hidden">{PRJADD_FORM_FORPRO}</div>
                </div>
            </div>
        </div>
        <!-- ENDIF -->
        <div class="uk-container-center uk-width-1-4">
            <button type="submit" class="uk-button uk-button-success uk-button-large uk-width-1-1">{PHP.L.projects_next}</button>
        </div>
    </div>    
</form>
</div>
<!-- END: MAIN -->