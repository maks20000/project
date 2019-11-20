<!-- BEGIN: MAIN -->
<div class="uk-text-center uk-flex uk-flex-center uk-flex-middle" style="min-height: 180px; background-image: url('themes/{PHP.theme}/img/tp-header-marget-bg.png'); background-attachment: fixed;">
    <div class="uk-width-medium-1-2">
        <h1 class="tp-text-transform uk-text-bold">{PHP.L.market_edit_product_title}</h1>
    </div>
</div>
<div class="uk-container uk-container-center uk-margin-large-top uk-margin-large-bottom">
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form class="uk-form uk-form-stacked" action="{PRDEDIT_FORM_SEND}" method="post" name="edit" enctype="multipart/form-data">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.Title|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    {PRDEDIT_FORM_TITLE}
                </div>
            </div>
        </div>
        <!-- IF {PHP.cot_plugins_active.catbox} -->
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
            {PHP.L.Category|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    {PHP.item.item_cat|cot_catbox('market', $this, 'rcat', '0', '', 'uk-column-medium-1-2')}
                </div>
            </div>
        </div>
        <!-- ENDIF -->
    </div>
    
    <!-- IF {PHP.cot_plugins_active.locationselector} -->
    <a class="uk-button uk-button-link" data-uk-toggle="{target:'#Location'}">{PHP.L.Settings}</a>
    <!-- ENDIF -->
    
    <!-- IF {PHP.usr.isadmin} -->
    <a class="uk-button uk-button-link uk-text-danger" data-uk-toggle="{target:'#Tuning'}">{PHP.L.Administrator_title}</a>            
    <!-- ENDIF -->
    
    <div id="Location" class="uk-hidden">
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <div class="uk-form-row">
            <label class="uk-form-label"></label>
            <div class="uk-form-controls">
                {PRDEDIT_FORM_LOCATION}
            </div>
        </div>
        <!-- ENDIF -->
        <div class="uk-grid" data-uk-grid-margin="">
            <!-- IF {PHP.projects_types} -->
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                    {PHP.L.Type|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PRDEDIT_FORM_TYPE}
                    </div>
                </div>
            </div>
            <!-- ENDIF -->
            <!-- BEGIN: TAGS -->
            <div class="uk-width-medium-1-2 uk-margin-top">
                <div class="uk-form-row">
                {PRDEDIT_FORM_TAGS_TITLE|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PRDEDIT_FORM_TAGS}<br />
                        <span class="uk-text-small">{PRDEDIT_FORM_TAGS_HINT}</span>
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
                        {PRDEDIT_FORM_ALIAS}
                    </div>
                </div>
            </div>
            
            <div class="uk-width-medium-1-2">
                <div class="uk-form-row">
                {PHP.L.Parser|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-controls">
                        {PRDEDIT_FORM_PARSER}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- ENDIF -->
    <div class="uk-form-row uk-margin-bottom">
    <label class="uk-form-label"></label>
        <div class="uk-form-controls">
            {PRDEDIT_FORM_TEXT}
        </div>
    </div>
    <!-- IF {PHP.cot_plugins_active.mavatars} -->    
    {PRDEDIT_FORM_MAVATAR}
    <!-- ENDIF -->
    <div class="uk-grid" data-uk-grid-margin="">
        <!-- IF {PHP.usr.isadmin} -->
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                <label class="uk-form-label">Удалить товар?</label>
                <div class="uk-grid tp-select-ruserusergroup-del">
                    <div class="uk-width-medium-1-2">
                        <label class="radio inline">
                            <input class="uk-hidden" type="radio" checked="" name="rdelete" value="0" />
                            <span class="uk-button" style="width: 100%;">{PHP.L.No}</span>
                        </label>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <label class="radio inline">
                            <input class="uk-hidden" type="radio" name="rdelete" value="1" /> 
                            <span class="uk-button" style="width: 100%;">{PHP.L.Yes}</span>
                        </label>
                    </div>
                </div>
            </div>
        </div>
        <!-- ENDIF -->
        <div class="uk-width-medium-1-2">
            <div class="uk-form-row">
                {PHP.L.projects_price|cot_uk_label("$this", "uk-form-label")}
                <div class="uk-form-controls">
                    <div class="tp-input-group">
                    <span class="tp-input-group-addon">
                    {PHP.cfg.payments.valuta}
                    </span>
                    {PRDEDIT_FORM_COST}
                    </div>
                </div>
            </div>
        </div>

    </div> 
        <div class="uk-text-center uk-margin-large-top">
            <button type="submit" class="uk-button uk-button-success uk-button-large ">Сохранить изменения</button>
        </div>	
</form>
</div>
<!-- END: MAIN -->