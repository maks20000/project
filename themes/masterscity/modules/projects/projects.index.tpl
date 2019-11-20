<!-- BEGIN: SEARCH -->

<!-- BEGIN: PTYPES -->
<ul class="uk-tab">
    <li class="uk-active"><a href="{PTYPE_ALL_URL}">{PHP.L.All}</a></li>
    <!-- IF {PHP.cot_plugins_active.locationselector} -->
    <li><a data-uk-toggle="{target:'#Location'}">{PHP.L.Location}</a></li>
    <!-- ENDIF -->
    <!-- BEGIN: PTYPES_ROWS -->
    <li<!-- IF {PTYPE_ROW_ACT} --> class="uk-active"<!-- ENDIF -->><a href="{PTYPE_ROW_URL}">{PTYPE_ROW_TITLE}</a></li>
    <!-- END: PTYPES_ROWS -->
    <!-- IF {PHP.cot_plugins_active.paypro} -->
    <li><a href="{FORPRO_URL}">{PHP.L.paypro_forpro}</a></li>
    <!-- ENDIF -->
</ul>
<!-- END: PTYPES -->
<div class="uk-panel uk-panel-box uk-margin-bottom">
    <div class="tp-panel-body">
    <form class="uk-form uk-form-stacked" action="{SEARCH_ACTION_URL}" method="get">
	<input type="hidden" name="e" value="projects" />
        
        <input type="hidden" name="type" value="{PHP.type}" />
        <input type="hidden" name="l" value="{PHP.lang}" />
        
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <div id="Location" class="uk-hidden">
            <div class="uk-form-row uk-margin-bottom">
                <div class="uk-form-controls">
                    {SEARCH_LOCATION}
                </div>
            </div>
        </div>
        <!-- ENDIF -->
        <div class="uk-grid" data-uk-grid-margin="">    
            <div class="uk-width-medium-5-6">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row">
                            {PHP.L.Search|cot_uk_label("$this", "uk-form-label")}
                            <div class="uk-form-controls">
                                <input class="uk-width-1-1 uk-form-large" type="text" name="sq" value=""/>
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
            </div>
            <div class="uk-width-medium-1-6">
                <div style="margin-top: 33px;">
                <button type="submit" name="search" class="uk-button uk-button-large uk-button-success uk-width-1-1">{PHP.L.Search}</button>
                </div>
            </div> 
        </div>
        </form>
    </div>
</div>
<!-- END: SEARCH -->

<!-- BEGIN: PROJECTS -->

<!-- BEGIN: PRJ_ROWS -->
<div class="uk-panel uk-panel-box uk-margin-bottom uk-position-relative <!-- IF {PRJ_ROW_ISBOLD} --> tp-prjbold <!-- IF {PRJ_ROW_ISTOP} --> tp-prjtop<!-- ENDIF --><!-- ENDIF -->">
    <div class="tp-panel-body <!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->tp-example<!-- ENDIF -->">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-small-1-1 uk-width-medium-1-2 uk-width-large-3-4">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-1-10 uk-hidden-small">
                        <!-- IF {PRJ_ROW_OWNER_AVATAR_SRC} -->
                        <img data-uk-tooltip="{pos:'left'}" class="avatar uk-border-circle" width="70" height="70" title="{PRJ_ROW_OWNER_NICKNAME}" alt="{PRJ_ROW_OWNER_NICKNAME}" src="{PRJ_ROW_OWNER_AVATAR_SRC}">
                        <!-- ELSE -->
                        <img data-uk-tooltip="{pos:'left'}" class="avatar uk-border-circle" width="70" height="70" title="{PRJ_ROW_OWNER_NICKNAME}" alt="{PRJ_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                        <!-- ENDIF -->
                    </div>
                    <div class="uk-width-9-10">
                        <h4 class="uk-margin-bottom-remove uk-text-truncate">
                        <a class="ti-linck-black uk-button uk-button-link" data-uk-toggle="{target:'#hidden-block-prj-{PRJ_ROW_ID}'}" href="#">{PRJ_ROW_SHORTTITLE}</a>
                        </h4>
                        <b class="uk-text-muted"><a class="tp-color-ts" href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a></b>
                        <div id="hidden-block-prj-{PRJ_ROW_ID}" class="uk-hidden uk-margin-small-top">
                            {PRJ_ROW_SHORTTEXT|strip_tags($this)|mb_substr($this, 0, 190, 'UTF-8')}...
                            <!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.projects} -->
                            <hr />
                            <ul class="tp-list-teg">
                                <li>{PHP.L.Tags}:</li> 
                                <!-- BEGIN: PRJ_ROW_TAGS_ROW -->
                                <!-- IF {PHP.tag_i} > 0 --> <!-- ENDIF -->
                                    <li><a href="{PRJ_ROW_TAGS_ROW_URL}" title="{PRJ_ROW_TAGS_ROW_TAG}" rel="nofollow">{PRJ_ROW_TAGS_ROW_TAG}</a></li>
                                <!-- END: PRJ_ROW_TAGS_ROW -->
                                <!-- BEGIN: PRJ_ROW_NO_TAGS -->
                                    <li>{PRJ_ROW_NO_TAGS}</li>
                                <!-- END: PRJ_ROW_NO_TAGS -->
                            </ul>
                            <!-- ENDIF -->
                        </div>
                    </div> 
                </div>
            </div>
            <div class="uk-width-small-1-1 uk-width-medium-1-2 uk-width-large-1-4">
			<p class="uk-grid" data-uk-grid-margin="">
                <!-- IF {PRJ_ROW_COST} > 0 -->
                <span class="uk-width-medium-2-3 uk-text-bold">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span> 
                <!-- ENDIF -->
						<!-- IF {PRJ_ROW_TERM_END} -->
						<span class="uk-width-medium-1-3"><i class="uk-icon-clock-o uk-text-warning uk-text-large" data-uk-tooltip="{pos:'left'}" title="{PRJ_ROW_TERM_END_TITLE} - {PRJ_ROW_TERM_END}"></i></span>
						<!-- ENDIF -->
			</p>
                <p class="uk-text-truncate">
				 <!-- IF {PRJ_ROW_REALIZED} -->
                    <span class="uk-button uk-display-block">Закрытый</span>
                    <!-- ELSE -->
                        <!-- IF {PRJ_ROW_PERFORMER} -->
                            <a class="uk-button uk-button-danger uk-display-block" href="{PRJ_ROW_URL}">исполнитель есть!</a>
                        <!-- ELSE -->
                    <a class="uk-button uk-button-success uk-display-block" href="{PRJ_ROW_OFFERS_ADDOFFER_URL}">{PHP.L.offers_add_offer}  ({PRJ_ROW_OFFERS_COUNT})</a>
                        <!-- ENDIF -->
                    <!-- ENDIF -->
                </p>
				
            </div>
        </div>
    </div>
</div>
<!-- END: PRJ_ROWS -->

<ul class="uk-pagination">
    {PAGENAV_PAGES}
</ul>

<!-- END: PROJECTS -->