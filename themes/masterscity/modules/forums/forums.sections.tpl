<!-- BEGIN: MAIN -->
<div class="tp-container uk-container-center uk-margin-large-top uk-margin-large-bottom uk-width-1-1">
    <ul class="uk-breadcrumb uk-hidden-small">
        <li><a href="/">{PHP.L.Home}</a></li>
        {FORUMS_SECTIONS_PAGETITLE|ul_transform($this)}
    </ul>
    <!-- BEGIN: FORUMS_SECTIONS -->
    <div class="tp-forums-panel uk-contrast uk-margin-bottom uk-hidden-small">
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-large-1-2">
               Темы
            </div>
            <div class="uk-width-medium-1-2">
                <div class="uk-grid">
                    <div class="uk-width-medium-1-4 uk-text-center">
                         {PHP.L.Lastpost}
                    </div>
                    <div class="uk-width-medium-1-4 uk-text-center">
                        {PHP.L.forums_topics}
                    </div>
                    <div class="uk-width-medium-1-4 uk-text-center">
                        {PHP.L.forums_posts}
                    </div>
                    <div class="uk-width-medium-1-4 uk-text-center">
                        {PHP.L.Activity}
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- BEGIN: CAT -->                
    <div class="uk-margin-top" id="{FORUMS_SECTIONS_ROW_CAT}">
    <div class="tp-forums-post-panel uk-contrast">
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-large-1-1">
                <h3 class="uk-h5 tp-text-transform">{FORUMS_SECTIONS_ROW_TITLE}</h3>
            </div>
        </div>
    </div>
        <div class="tp-panel-border uk-margin-bottom">
           <!-- BEGIN: SECTION -->
           <div class="tp-forums-panel-linck">
               <div class="uk-grid" data-uk-grid-margin>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-6 uk-text-center uk-hidden-small">
                                {FORUMS_SECTIONS_ROW_ICON}
                            </div>
                            <div class="uk-width-medium-5-6">
                                <h3><a hreflang="{PHP.L.Hreflang}" class="tp-ahover uk-text-primary" href="{FORUMS_SECTIONS_ROW_URL}">{FORUMS_SECTIONS_ROW_TITLE}</a></h3>
                                <!-- IF {FORUMS_SECTIONS_ROW_DESC} -->
                                <p class="">{FORUMS_SECTIONS_ROW_DESC}</p>
                                <!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-4 uk-text-center">
                                <p class="uk-margin-top uk-text-small tp-ahover">{FORUMS_SECTIONS_ROW_LASTPOST}<br /> 
                                <!-- IF {FORUMS_SECTIONS_ROW_LASTPOSTDATE} -->
                                    {PHP|cot_uk_icon("uk-icon-calendar")} {FORUMS_SECTIONS_ROW_LASTPOSTDATE_STAMP|cot_date('j M Y', $this)} 
                                <!-- ENDIF -->
                                {FORUMS_SECTIONS_ROW_LASTPOSTER}
                                </p>
                            </div>
                              
                            <div class="uk-width-medium-1-4 uk-text-center uk-hidden-small">
                                <p class="uk-margin-top">{FORUMS_SECTIONS_ROW_TOPICCOUNT}</p>
                            </div>
                            <div class="uk-width-medium-1-4 uk-text-center uk-hidden-small">
                                <p class="uk-margin-top">{FORUMS_SECTIONS_ROW_POSTCOUNT}</p>
                            </div>
                            <div class="uk-width-medium-1-4 uk-text-center uk-hidden-small">
                                <p class="uk-margin-top">{FORUMS_SECTIONS_ROW_ACTIVITY}</p>
                            </div>
                            
                        </div>
                    </div>
               </div>
           </div>
           <!-- END: SECTION -->
        </div>    
    </div>
    <!-- END: CAT -->
    <!-- END: FORUMS_SECTIONS -->
    <div id="SFOR" class="uk-modal"> 
        <div class="uk-modal-dialog tp-radius">
            <button class="uk-modal-close uk-close" type="button"></button>
            <div class="uk-modal-header"><h4>{PHP.L.Search_the_forum}</h4></div>
            <div class="uk-grid " data-uk-grid-margin>
                <div class="uk-width-1-1">
                    <form class="uk-form uk-margin-top uk-margin-bottom" action="{PHP|cot_url('plug','e=search')}" method="post">
                        <div class="uk-form-icon">
                            {PHP|cot_uk_icon("uk-icon-search")}
                            <input class="uk-form-large uk-width-1-1" type="text" name="sq" placeholder="{PHP.L.Search}" value="" required="" /> 
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <div class="uk-text-center uk-hidden-small">
    <div class="uk-margin-top uk-button-group">
        <a class="uk-button uk-button-primary" href="" data-uk-modal="{target:'#SFOR'}">{PHP.L.Search_the_forum}</a>
        <!-- IF {PHP.cot_plugins_active.forumstats} -->
        <a class="uk-button  uk-button-mini" href="{PHP|cot_url('plug','e=forumstats')}">{PHP.L.Statistics}</a>
        <!-- ENDIF -->
        <a class="uk-button uk-button-danger" href="{PHP|cot_url('forums','n=markall')}" rel="nofollow">{PHP.L.forums_markasread}</a>
    </div>
    </div>
    <div class="uk-margin-large-top">
        {FORUMS_SECTIONS_TAG_CLOUD}
    </div>
</div>
<!-- END: MAIN -->