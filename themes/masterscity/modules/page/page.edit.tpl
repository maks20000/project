<!-- BEGIN: MAIN -->
<div class="uk-text-center uk-flex uk-flex-center uk-flex-middle" style="min-height: 180px; background-image: url('themes/{PHP.theme}/img/tp-header-marget-bg.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-2">
        <h1 class="tp-text-transform uk-text-bold">{PAGEEDIT_PAGETITLE} #{PAGEEDIT_FORM_ID}</h1>
    </div>
</div>
<div class="uk-container-center uk-width-1-2 uk-margin-large-top uk-margin-large-bottom">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form class="uk-form uk-form-stacked" action="{PAGEEDIT_FORM_SEND}" method="post" name="pageform" enctype="multipart/form-data">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.Title|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    {PAGEEDIT_FORM_TITLE}
                </div>
            </div>
        </div>
        <!-- IF {PHP.cot_plugins_active.catbox} -->
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.Category|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    {PHP.pag.page_cat|cot_catbox('page', $this, 'rpagecat', '0', '', 'uk-column-medium-1-2')}
                </div>
            </div>
        </div>
        <!-- ENDIF -->
    </div>
    
    
    <a class="uk-button uk-button-link" data-uk-toggle="{target:'#Pageadd'}">{PHP.L.Settings}</a>
 
    
    <!-- IF {PHP.usr.isadmin} -->
    <a class="uk-button uk-button-link uk-text-danger" data-uk-toggle="{target:'#Tuning'}">{PHP.L.Administrator_title}</a>            
    <!-- ENDIF -->
    
    <div id="Pageadd" class="uk-hidden">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.page_metatitle|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PAGEEDIT_FORM_METATITLE}
                    </div>
                </div>
            </div>
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.page_metakeywords|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PAGEEDIT_FORM_KEYWORDS}
                    </div>
                </div>
            </div>
            
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.Description|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PAGEEDIT_FORM_DESC}
                    </div>
                </div>
            </div>
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.page_metadesc|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PAGEEDIT_FORM_METADESC}
                    </div>
                </div>
            </div>
            <!-- BEGIN: TAGS -->
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PAGEEDIT_TOP_TAGS|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PAGEEDIT_FORM_TAGS}<br />
                        <span class="uk-text-small">{PAGEEDIT_TOP_TAGS_HINT}</span>
                    </div>
                </div>
            </div>
            <!-- END: TAGS -->
        </div>
    </div>
    
    <!-- IF {PHP.usr.isadmin} -->
    <div id="Tuning" class="uk-hidden">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.Alias|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PAGEEDIT_FORM_ALIAS}
                    </div>
                </div>
            </div>
            
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                {PHP.L.Parser|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PAGEEDIT_FORM_PARSER}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ENDIF -->
    <div class="uk-form-row uk-margin-bottom">
    <label class="uk-form-label"></label>
        <div class="uk-form-controls">
            {PAGEEDIT_FORM_TEXT}
        </div>
    </div>
    <!-- IF {PHP.cot_plugins_active.mavatars} -->    
    {PAGEEDIT_FORM_MAVATAR}
    <!-- ENDIF -->   
    <!-- IF {PHP.usr.isadmin} -->
    <div class="uk-width-1-2 uk-container-center uk-margin-bottom">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-1-1">
            <div class="uk-form-row">
                <label class="uk-form-label uk-text-danger">{PHP.L.Delete}</label>
                <div class="uk-grid tp-select-ruserusergroup-del">
                    <div class="uk-width-medium-1-2">
                        <label class="radio inline">
                            <input class="uk-hidden" type="radio" checked="" name="rpagedelete" value="0" />
                            <span class="uk-button" style="width: 100%;">{PHP.L.No}</span>
                        </label>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <label class="radio inline">
                            <input class="uk-hidden" type="radio" name="rpagedelete" value="1" /> 
                            <span class="uk-button" style="width: 100%;">{PHP.L.Yes}</span>
                        </label>
                    </div>
                </div>
            </div>
        </div>
    </div>
    </div> 
    <!-- ENDIF -->
    <div class="uk-grid" data-uk-grid-margin="">
        <!-- IF {PHP.usr_can_publish} -->
        <div class="uk-width-medium-1-3">
            <button class="uk-button uk-button-large uk-button-success uk-width-1-1" type="submit" name="rpagestate" value="0">{PHP.L.Publish}</button>
        </div>
        <!-- ENDIF -->
        <div class="uk-width-medium-1-3">
            <button type="submit" name="rpagestate" value="2" class="uk-button uk-button-large uk-button-primary uk-width-1-1">{PHP.L.Saveasdraft}</button>
        </div>
        <div class="uk-width-medium-1-3">
            <butto class="uk-button uk-button-large uk-width-1-1"n type="submit" name="rpagestate" value="1">{PHP.L.Submitforapproval}</button>
        </div>
    </div>    
</form>
</div>
<!-- END: MAIN -->