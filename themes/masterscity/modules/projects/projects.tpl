<!-- BEGIN: MAIN -->
<div class="uk-block-muted">
<div class="uk-container uk-container-center">
    <ul class="uk-breadcrumb tp-padd uk-margin-top uk-float-left">
        <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
        {PRJ_TITLE|ul_transform($this)}
    </ul>
    <div class="uk-float-right uk-margin-top">
    <!-- IF {PRJ_REALIZED} -->
    <span class="uk-badge">{PHP.L.projects_isrealized}</span>
    <!-- ELSE -->
    <span class="uk-badge"><!-- IF {PRJ_PERFORMER_ID} -->{PHP.L.In_execution}<!-- ELSE -->{PHP.L.Opened}<!-- ENDIF --></span>    
    <!-- ENDIF -->
    <!-- IF {PHP.cot_plugins_active.paypro} AND {PRJ_FORPRO} -->
    <span class="uk-badge uk-badge-danger">{PHP.L.paypro_forpro}</span>
    <!-- ENDIF -->
    </div>
    <!-- IF {PRJ_STATE} == 2 -->
    <div class="uk-width-1-4 tp-here">
    <div class="tp-panel-border tp-panel-box" data-uk-alert="">
        <div class="uk-grid">
            <div class="uk-width-1-4 uk-text-center">
                <div class="uk-panel-body">
                    <i class="uk-icon-bell tp-icon-warning"></i>
                </div>
            </div>
            <div class="uk-width-3-4">
                <a class="uk-alert-close uk-close" href=""></a>
                <div class="uk-panel-body">
                    <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.L.Warning}</h4>
                    <p class="uk-margin-top-remove">
                    {PHP.L.projects_forreview}
                    </p>
                </div>
            </div>
        </div>
    </div>
    </div>  
    <!-- ENDIF -->
    <!-- IF {PRJ_STATE} == 1 -->
    <div class="uk-width-1-4 tp-here">
    <div class="tp-panel-border tp-panel-box" data-uk-alert="">
        <div class="uk-grid">
            <div class="uk-width-1-4 uk-text-center">
                <div class="uk-panel-body">
                    <i class="uk-icon-bell tp-icon-warning"></i>
                </div>
            </div>
            <div class="uk-width-3-4">
                <a class="uk-alert-close uk-close" href=""></a>
                <div class="uk-panel-body">
                    <h4 class="uk-text-bold uk-margin-bottom-remove">{PHP.L.Warning}</h4>
                    <p class="uk-margin-top-remove">
                    {PHP.L.projects_hidden}
                    </p>
                </div>
            </div>
        </div>
    </div>
    </div>  
    <!-- ENDIF -->
</div>
</div>
<div class="uk-container uk-container-center uk-margin-large-bottom">
    <hr>
    <div class="uk-block uk-block-muted uk-margin-bottom">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-3-5">
            
            <div class="uk-panel">
                <div class="uk-panel-body">
                    {PRJ_SHORTTITLE|cot_uk_heading(1, "$this", "class")}
                    {PRJ_TEXT}
                </div>
            </div>
            
        </div>
        <div class="uk-width-medium-4-10 uk-panel-body">
            <!-- IF {PRJ_USER_IS_ADMIN} -->
            <ul class="tp-navbar-nav">
                <li data-uk-dropdown="{mode:'click'}" >
                    <a class="tp-hover-icons uk-text-muted" href="#"><i class="uk-icon-pencil uk-text-large"></i></a>
                    <div class="uk-dropdown uk-dropdown-small uk-dropdown-flip uk-dropdown-bottom">
                        <ul class="uk-nav uk-nav-navbar">
                            <li>{PRJ_ADMIN_EDIT}</li>
                            <!-- IF {PRJ_STATE} != 2 -->
                            <li><a href="{PRJ_HIDEPROJECT_URL}">{PRJ_HIDEPROJECT_TITLE}</a></li>
                            <!-- IF {PRJ_PERFORMER} -->
                            <li><a href="{PRJ_REALIZEDPROJECT_URL}">{PRJ_REALIZEDPROJECT_TITLE}</a></li>					
                            <!-- ENDIF -->
                            <!-- ENDIF -->
                        </ul>
                    </div>
                </li>
            </ul>
            <!-- ENDIF -->
            <div class="uk-panel uk-panel-box">
                <div class="uk-panel-body">
                    <div class="uk-grid">
                        <div class="uk-width-1-4">
                            <!-- IF {PRJ_OWNER_AVATAR_SRC} -->
                            <img class="avatar uk-border-circle" width="100" height="100" alt="{PRJ_OWNER_NICKNAME}" src="{PRJ_OWNER_AVATAR_SRC}">
                            <!-- ELSE -->
                            <img class="avatar uk-border-circle" width="100" height="100" alt="{PRJ_OWNER_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                            <!-- ENDIF -->
                        </div>
                        <div class="uk-width-3-4">
                            <h5 class="uk-text-truncate uk-margin-bottom-remove">
                                <a class="uk-text-bold tp-text-transform ti-linck-black" href="{PRJ_OWNER_DETAILSLINK}">{PRJ_OWNER_NICKNAME}</a>
                            </h5>
                            <div class="uk-text-small uk-text-success">{PHP.L.Build_timeago_title}: <span class="uk-text-bold">{PRJ_OWNER_LASTLOG_STAMP|cot_build_timeago()}</span></div> 
                            <!-- IF {PRJ_OWNER_ISPRO} -->
                            <span class="uk-text-small uk-text-danger uk-text-bold tp-text-transform">{PHP.L.Ak_pro}</span>
                            <!-- ENDIF -->
                            <div class="uk-text-muted uk-text-small">
                               <!-- IF {PRJ_OWNER_TEXT} -->
                               {PRJ_OWNER_TEXT}
                               <!-- ELSE -->
                               {PHP.L.Users_signature_description}
                               <!-- ENDIF -->
                            </div>
                            <hr />
                            <div class="uk-grid" data-uk-grid-margin="">
                                <!-- IF {PHP.cot_plugins_active.userpoints} AND {PHP.cot_plugins_active.pointstostars} -->
                                <div class="uk-width-3-4 uk-text-warning">
                                    <div data-uk-tooltip="{pos:'left'}" title="{PRJ_OWNER_USERPOINTS}">{PRJ_OWNER_USERPOINTS|cot_pointstostars($this)}</div>
                                </div>
                                <!-- ENDIF -->
                                <div class="uk-width-1-4">
                                    <!-- IF {PHP.cot_plugins_active.whosonline} -->
                                        <!-- IF {PRJ_OWNER_ONLINE} > 0 -->
                                        <img width="18" height="18" alt="" src="themes/{PHP.theme}/img/onli.png">
                                        <!-- ELSE -->
                                        <img width="18" height="18" alt="" src="themes/{PHP.theme}/img/offlajn.png">
                                        <!-- ENDIF -->
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <hr>
            <ul class="uk-list uk-list-line uk-text-large">
                        <!-- IF {PHP.cot_plugins_active.payprjtop} AND {PHP.usr.id} == {PRJ_OWNER_ID} -->
                        <li>{PRJ_PAYTOP}</li>
                        <!-- ENDIF -->
                        <!-- IF {PHP.cot_plugins_active.payprjbold} AND {PHP.usr.id} == {PRJ_OWNER_ID} -->
                        <li>{PRJ_PAYBOLD}</li>
                        <!-- ENDIF -->
            </ul>
			<hr>
            <ul class="uk-list uk-list-line uk-text-large">
                <!-- IF {PRJ_COST} > 0 -->
                <li><span class="ti-linck-black tp-text-transform">{PHP.L.offers_budget}:</span> <span class="uk-text-bold">{PRJ_COST}</span> {PHP.cfg.payments.valuta}</li>
                <!-- ENDIF -->
                <!-- IF {PRJ_TERM_END} -->
                <li><span class="ti-linck-black tp-text-transform">{PRJ_TERM_END_TITLE}:</span> <span class="uk-text-bold uk-text-warning">{PRJ_TERM_END}</span></li>
                <!-- ENDIF -->
                <li><span class="ti-linck-black tp-text-transform">{PHP.L.Category}</span> {PRJ_CATTITLE}</li>
                <!-- IF {PRJ_COUNTRY} {PRJ_REGION} {PRJ_CITY} OR {PRJ_REGION} {PRJ_CITY} OR {PRJ_CITY} -->
                <li><span class="ti-linck-black tp-text-transform">{PHP.L.Region_title}</span> {PRJ_COUNTRY} {PRJ_REGION} {PRJ_CITY}</li>
                <!-- ENDIF -->
                <li><span class="ti-linck-black tp-text-transform">Опубликовано:</span> {PRJ_DATE}</li>
            </ul>
            <hr>
            <!-- IF {PHP.cot_plugins_active.tags} AND {PHP.cot_plugins_active.tagslance} AND {PHP.cfg.plugin.tagslance.projects} -->
            <ul class="tp-list-teg">
                <li>{PHP.L.Tags}:</li> 
                <!-- BEGIN: PRJ_TAGS_ROW -->
                <!-- IF {PHP.tag_i} > 0 --> <!-- ENDIF -->
                    <li><a href="{PRJ_TAGS_ROW_URL}" title="{PRJ_TAGS_ROW_TAG}" rel="nofollow">{PRJ_TAGS_ROW_TAG}</a></li>
                <!-- END: PRJ_TAGS_ROW -->
                <!-- BEGIN: PRJ_NO_TAGS -->
                    <li>{PRJ_NO_TAGS}</li>
                <!-- END: PRJ_NO_TAGS -->
            </ul>
            <!-- ENDIF -->
        
        </div>
    </div>
    </div>
    <div class="uk-grid" data-uk-grid-margin="">
    <div class="uk-width-medium-3-5">
    <!-- IF {PHP.cot_plugins_active.mavatars} -->
    <!-- IF {PRJ_MAVATARCOUNT} -->
        <div class="uk-container-center uk-width-medium-1-1 uk-margin-large-bottom uk-margin-large-top">
            <div class="tp-padd">
            <!-- FOR {KEY}, {VALUE} IN {PRJ_MAVATAR} -->
            <div class="uk-grid uk-text-center" data-uk-grid-margin="">
                <div class="uk-width-medium-4-10 uk-text-truncate">
                    <div class="uk-comment-avatar">
                        <img src="themes/{PHP.theme}/img/icon/file/{VALUE.FILEEXT}.svg" alt="{VALUE.FILENAME}.{VALUE.FILEEXT}" />
                    </div>
                    <p class="uk-text-muted">{VALUE.FILENAME|cot_string_truncate($this,8)}.{VALUE.FILEEXT}</p>
                </div>
                <div class="uk-width-medium-3-5">
                    <div class="uk-grid" data-uk-grid-margin="">
                        <div class="uk-width-medium-1-2 uk-text-muted">
                            <p class="uk-margin-top">
                            <i class="uk-icon-upload"></i>
                            <span>{VALUE.DATE|cot_date('j M Y G:i', $this)}</span>
                            </p>
                        </div>
                        <!-- IF {PHP.usr.id} > 0 -->
                        <div class="uk-width-medium-1-2">
                            <a class="uk-button uk-button-link uk-width-1-1" style="margin-top: 11px;" target="_blank" href="{VALUE.FILE}">{PHP.L.Download}</a>
                        </div>
                        <!-- ENDIF -->
                        <!-- IF {PHP.usr.id} == 0 -->
                        <div class="uk-width-medium-1-2">
                            <a class="uk-button uk-button-link uk-width-1-1" style="margin-top: 11px;" href="#" data-uk-tooltip="{pos:'top'}" title="Скачать файл могут только зарегистрированные пользователи ">{PHP.L.Download}</a>
                        </div>
                        <!-- ENDIF -->
                    </div>
                </div>
            </div>
            <!-- ENDFOR -->
            </div>
        </div>
    <!-- ENDIF -->
    <!-- ENDIF -->
    {OFFERS}
    </div>

    <!-- IF {PHP.cot_plugins_active.simprojects} -->
    <div class="uk-width-medium-4-10">
        <div class="tp-box">    
            <div class="tp-box-header tp-with-border">
                {PHP.L.Simprojects_title|cot_uk_heading(3, "$this", "uk-margin-bottom-remove")}
            </div>
            {PRJ_SIMPROJECTS}
        </div>
    </div>
    <!-- ENDIF -->
    </div>
    <!-- IF {PHP.usr.auth_write} -->
    <a class="tp-add" href="{PHP|cot_url('projects', 'm=add')}"><i class="uk-icon-pencil"></i></a>
    <!-- ENDIF -->
</div>
<!-- END: MAIN -->