<!-- BEGIN: MAIN -->
<div style="min-height:330px; position: relative; background-image: url('themes/{PHP.theme}/img/tp-projects_list-bg.png'); background-attachment: fixed;">
    <div class="uk-margin uk-container uk-container-center">
    <div class="uk-margin-large-top" data-uk-scrollspy="{cls:'uk-animation-fade', repeat: true}">
    <!-- BEGIN: PTYPES -->

    <ul class="uk-tab">
        <li><a class="uk-text-contrast uk-text-bold" href="{PTYPE_ALL_URL}">{PHP.L.All}</a></li>
        <!-- IF {PHP.cot_plugins_active.locationselector} -->
        <li><a class="uk-text-contrast uk-text-bold" data-uk-toggle="{target:'#Location'}">{PHP.L.Location}</a></li>
        <!-- ENDIF -->
        <!-- BEGIN: PTYPES_ROWS -->
        <li<!-- IF {PTYPE_ROW_ACT} --> class="uk-active"<!-- ENDIF -->><a class="uk-text-contrast uk-text-bold" href="{PTYPE_ROW_URL}">{PTYPE_ROW_TITLE}</a></li>
        <!-- END: PTYPES_ROWS -->
        <!-- IF {PHP.cot_plugins_active.paypro} -->
        <li<!-- IF {PHP.forpro} --> class="uk-active"<!-- ENDIF -->><a class="uk-text-contrast uk-text-bold" href="{FORPRO_URL}">{PHP.L.paypro_forpro}</a></li>
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
                                    {SEARCH_SQ}
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
    </div>
        <div class="uk-grid uk-margin-bottom" data-uk-grid-margin="">
            <div class="uk-width-medium-3-4">
                <h1 class="uk-text-contrast uk-h2"><!-- IF {PHP.c} -->{CATTITLE}<!-- ELSE -->{PHP.L.projects}<!-- ENDIF --></h1>
                <!-- IF {PHP.env.ext} == 'projects' AND {PHP.c} == '' --> 
                <p class="uk-text-contrast uk-text-large">   
                {PHP.L.Projects_description_list}
                </p>
                <!-- ENDIF -->
                <!-- IF {CATDESC} -->
                <p class="uk-text-contrast uk-text-large">
                    {CATDESC}
                </p>
                <!-- ENDIF -->
            </div>
            <div class="uk-width-medium-1-4 uk-margin-small-top">
                <!-- IF {PHP.usr.id} == 0 -->
                <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-width-1-1" href="{PHP.cot_groups.4.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.L.I_am_an_freelancer}</a>
                <p><a class="tp-button uk-button tp-text-transform uk-width-1-1" href="{PHP.cot_groups.7.alias|cot_url('users', 'm=register&usergroup='$this)}">{PHP.L.I_am_an_employer}</a></p>
                <!-- ENDIF -->
                <!-- IF {PHP.usr.auth_write} -->
                <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-button-large uk-width-1-1" href="{SUBMITNEWPROJECT_URL}">{PHP.L.projects_add_to_catalog}</a>
                <!-- ENDIF -->
            </div>
        </div>
    </div>
</div>



<div class="uk-container uk-container-center uk-margin-large-bottom uk-margin-large-top">
    <ul class="tp-list uk-list uk-column-1-1 uk-column-medium-1-3" data-uk-nav="{multiple:true}">
        {CATALOG}
    </ul>
    <!-- IF {PHP.cot_plugins_active.paypro} -->
    <!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.projectslimit} > 0 AND {PHP.cfg.plugin.paypro.projectslimit} <= {PHP.usr.id|cot_getcountprjofuser($this)} -->
    <div class="uk-alert uk-alert-warning">{PHP.L.paypro_warning_projectslimit_empty}</div>
    <!-- ENDIF -->
    <!-- IF !{PHP|cot_getuserpro()} AND {PHP.cfg.plugin.paypro.offerslimit} > 0 AND {PHP.cfg.plugin.paypro.offerslimit} <= {PHP.usr.id|cot_getcountoffersofuser($this)} -->
    <div class="uk-alert uk-alert-warning">{PHP.L.paypro_warning_offerslimit_empty}</div>
    <!-- ENDIF -->
    <!-- ENDIF -->
</div>
<!-- IF {PHP.cot_plugins_active.paytop} -->
<div class="uk-block uk-block-muted uk-margin-remove">
    <div class="uk-text-center uk-width-1-2 uk-container-center uk-margin-bottom">
        <h4 class="uk-h6 uk-text-muted uk-margin-remove tp-text-transform">{PHP.L.Advertising_space_title}</h4>
        <h3 class="uk-margin-remove uk-text-bold tp-text-transform">{PHP.L.Advertising_space_description}</h3>
        <i class="uk-icon-minus tp-color-ts"></i>
    </div>
    {PHP|cot_get_paytop ('top')}
</div>
<!-- ENDIF -->
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
        <ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {BREADCRUMBS|ul_transform($this)}
        </ul>
        
        <!-- BEGIN: PRJ_ROWS -->
        <div class="uk-panel uk-panel-box uk-margin-bottom uk-position-relative <!-- IF {PRJ_ROW_ISBOLD} --> tp-prjbold<!-- ENDIF --> <!-- IF {PRJ_ROW_ISTOP} --> tp-prjtop<!-- ENDIF -->">
            <div class="tp-panel-body tp-example">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-small-1-1 uk-width-medium-1-2 uk-width-large-3-4">
                        <div class="uk-grid">
                            <div class="uk-width-1-10 uk-hidden-small">
                                <!-- IF {PRJ_ROW_OWNER_AVATAR_SRC} -->
                                <img data-uk-tooltip="{pos:'left'}" class="avatar uk-border-circle" width="70" height="70" title="{PRJ_ROW_OWNER_NICKNAME}" alt="{PRJ_ROW_OWNER_NICKNAME}" src="{PRJ_ROW_OWNER_AVATAR_SRC}">
                                <!-- ELSE -->
                                <img data-uk-tooltip="{pos:'left'}" class="avatar uk-border-circle" width="70" height="70" title="{PRJ_ROW_OWNER_NICKNAME}" alt="{PRJ_ROW_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                                <!-- ENDIF -->
                            </div>
                            <div class="uk-width-9-10">
                                <h4 class="uk-margin-bottom-remove uk-text-truncate">
                                    <a class="ti-linck-black uk-button uk-button-link" href="{PRJ_ROW_URL}">{PRJ_ROW_SHORTTITLE}</a>
                                </h4>
                                <b class="uk-text-muted"><a class="tp-color-ts" href="{PRJ_ROW_CATURL}">{PRJ_ROW_CATTITLE}</a></b>
                                <div class="uk-margin-top">
                                    {PRJ_ROW_TEXT|strip_tags($this)|mb_substr($this, 0, 280, 'UTF-8')}...
                                    <!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.projects} -->
                                    <hr />
                                    <ul class="tp-list-teg uk-hidden-small">
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
                        
                        <!-- IF {PHP.usr.id} == {PRJ_ROW_OWNER_ID} OR {PHP.usr.isadmin}  -->
                        <ul class="tp-navbar-nav">
                            <li data-uk-dropdown="{mode:'click'}" >
                                <a class="tp-hover-icons uk-text-muted" href="#"><i class="uk-icon-pencil uk-text-large"></i></a>
                                <div class="uk-dropdown uk-dropdown-small uk-dropdown-flip uk-dropdown-bottom">
                                    <ul class="uk-nav uk-nav-navbar">
                                        <!-- IF {PHP.cot_plugins_active.payprjtop} AND {PHP.usr.id} == {PRJ_ROW_OWNER_ID} -->
                                        <li>{PRJ_ROW_PAYTOP}</li>
                                        <!-- ENDIF -->
                                        <!-- IF {PHP.cot_plugins_active.payprjbold} AND {PHP.usr.id} == {PRJ_ROW_OWNER_ID} -->
                                        <li>{PRJ_ROW_PAYBOLD}</li>
                                        <!-- ENDIF -->
                                        <li><a href="{PRJ_ROW_ID|cot_url('projects','m=edit&id='$this)}">{PHP.L.Edit}</a></li>
                                    </ul>
                                </div>
                            </li>
                        </ul>
                        <!-- ENDIF -->
			<p class="uk-grid" data-uk-grid-margin="">
                <!-- IF {PRJ_ROW_COST} > 0 -->
                <span class="uk-width-2-3 uk-text-bold">{PRJ_ROW_COST} {PHP.cfg.payments.valuta}</span> 
                <!-- ENDIF -->
						<!-- IF {PRJ_ROW_TERM_END} -->
						<span class="uk-width-1-3"><i class="uk-icon-clock-o uk-text-warning uk-text-large" data-uk-tooltip="{pos:'left'}" title="{PRJ_ROW_TERM_END_TITLE} - {PRJ_ROW_TERM_END}"></i></span>
						<!-- ENDIF -->
			</p>
                        <p class="uk-grid" data-uk-grid-margin="">

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
                            
                        </p>
                        <!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_ROW_FORPRO} -->
                        <p>
                            <span class="uk-badge uk-badge-danger">{PHP.L.paypro_forpro}</span> 
                        </p>
                        <!-- ENDIF -->
                    </div>
                </div>
            </div>
        </div>
        <!-- END: PRJ_ROWS -->
        
        <!-- IF {PAGENAV_COUNT} > 0 -->
        <ul class="uk-pagination">
            {PAGENAV_PAGES}
        </ul>
        <!-- ELSE -->
        <div class="uk-alert">{PHP.L.projects_notfound}</div>
        <!-- ENDIF -->
        
        <!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.projects} -->
        {PRJ_TAG_CLOUD}
        <!-- ENDIF -->
    </div>
    <!-- IF {PHP.usr.auth_write} -->
    <a class="tp-add uk-hidden-small" href="{PHP|cot_url('projects', 'm=add')}"><i class="uk-icon-pencil"></i></a>
    <!-- ENDIF -->
</div>
<!-- END: MAIN -->