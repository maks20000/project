<!-- BEGIN: MAIN -->
<div class="tp-container uk-container-center uk-margin-large-top uk-margin-large-bottom uk-width-medium-1-1">
    <!-- IF {PHP.usr.id} == 0 -->
    <span class="login_block">
    <a class="btn-login uk-button uk-button-success tp-radius uk-float-right" href="" rel="nofollow">{PHP.L.forums_newtopic}</a>
    </span>
    <!-- ENDIF -->
    <!-- IF {PHP.usr.id} > 0 -->
    <a class="uk-button uk-button-success tp-radius uk-float-right" href="{FORUMS_TOPICS_NEWTOPICURL}" rel="nofollow">{PHP.L.forums_newtopic}</a>
    <!-- ENDIF -->
    <!-- BEGIN: FORUMS_SECTIONS_POLLS -->
    <a class="uk-button uk-button-primary tp-radius uk-float-right" href="{FORUMS_TOPICS_NEWPOLLURL}" rel="nofollow">{PHP.L.forums_newpoll}</a>
    <!-- END: FORUMS_SECTIONS_POLLS -->
    <ul class="uk-breadcrumb uk-hidden-small">
        <li><a href="/">{PHP.L.Home}</a></li>
        {FORUMS_TOPICS_PAGETITLE|ul_transform($this)}
    </ul>

   <div class="uk-margin-top">
    <div class="tp-forums-post-panel uk-contrast">
        <div class="uk-grid" data-uk-grid-margin>
            <div class="uk-width-large-1-2">
               Тема
            </div>
            <div class="uk-width-medium-1-2">
                <div class="uk-grid">
                    <div class="uk-width-medium-1-3 uk-text-center">
                        {FORUMS_TOPICS_TITLE_VIEWS}
                    </div>
                    <div class="uk-width-medium-1-3 uk-text-center">
                        {FORUMS_TOPICS_TITLE_POSTS}
                    </div>
                    <div class="uk-width-medium-1-3">
                        {FORUMS_TOPICS_TITLE_LASTPOST}
                    </div>
                </div>
            </div>
        </div>
    </div>

        <div class="tp-panel-border uk-margin-bottom">
           <!-- BEGIN: FORUMS_TOPICS_ROW -->
           <div class="tp-forums-panel-linck">
               <div class="uk-grid" data-uk-grid-margin>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-10 uk-text-center">
                                <div class="uk-margin-top">{FORUMS_TOPICS_ROW_ICON}</div>
                            </div>
                            <div class="uk-width-medium-5-6">
                                <h3 class="uk-h4"><a hreflang="{PHP.L.Hreflang}" class="tp-ahover uk-text-primary" href="{FORUMS_TOPICS_ROW_URL}">{FORUMS_TOPICS_ROW_TITLE}</a></h3>
                                <!-- IF {FORUMS_TOPICS_ROW_DESC} -->
                                <p class="tp-text-small">{FORUMS_TOPICS_ROW_DESC}</p>
                                <!-- ENDIF -->
                                
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-grid">
                            <div class="uk-width-medium-1-3 uk-text-center">
                                <p class="uk-margin-top">{FORUMS_TOPICS_ROW_VIEWCOUNT}</p>
                            </div>
                            <div class="uk-width-medium-1-3 uk-text-center">
                                <p class="uk-margin-top">{FORUMS_TOPICS_ROW_POSTCOUNT}</p>
                            </div>
                            <div class="uk-width-medium-1-3">
                                <div class="uk-grid">
                                    <div class="uk-width-medium-1-4 uk-padding-remove">
                                        {PHP.R.forums_noavatar}
                                    </div>
                                    <div class="uk-width-medium-3-4">
                                        {FORUMS_TOPICS_ROW_FIRSTPOSTER}<br/>
                                        <span class="uk-text-small uk-text-muted">{FORUMS_TOPICS_ROW_CREATIONDATE_STAMP|cot_date('j M Y в G:i', $this)} </span>
                                    </div>
                                </div>
                            </div>                            
                        </div>
                    </div>
               </div>
           </div>
           <!-- END: FORUMS_TOPICS_ROW -->
        </div>
        <!-- IF {FORUMS_TOPICS_PAGES} -->                
    <ul class="uk-pagination">{FORUMS_TOPICS_PAGES}</ul>       
    <!-- ENDIF -->  
    <div class="uk-grid uk-margin-large-top">
        <div class="uk-width-medium-1-6">
            <ul class="uk-tab uk-tab-left" data-uk-tab="{connect:'#tp-forums-id'}">
                <li><a href="#">{PHP.L.Help}</a></li>
                <li><a href="#">{PHP.L.forums_viewers}</a></li>
            </ul>
        </div>
        <div class="uk-width-medium-4-5">
            <ul id="tp-forums-id" class="uk-switcher">
                <li>
                    <div class="uk-grid uk-grid-width-small-1-3 uk-grid-width-medium-1-3">
                    <div>
                        <ul class="uk-list uk-list-line">
                            <li>{PHP.R.forums_icon_posts} <span class="uk-text-small">{PHP.L.forums_nonewposts}</span></li>
                            <li>{PHP.R.forums_icon_posts_new} <span class="uk-text-small">{PHP.L.forums_newposts}</span></li>
                            <li>{PHP.R.forums_icon_posts_hot} <span class="uk-text-small">{PHP.L.forums_nonewpostspopular}</span></li>
                            <li>{PHP.R.forums_icon_posts_new_hot} <span class="uk-text-small">{PHP.L.forums_newpostspopular}</span></li>
                        </ul>
                    </div>
                    <div>
                        <ul class="uk-list uk-list-line">
                            <li>{PHP.R.forums_icon_posts_sticky} <span class="uk-text-small">{PHP.L.forums_sticky}</span></li>
                            <li>{PHP.R.forums_icon_posts_new_sticky} <span class="uk-text-small">{PHP.L.forums_newpostssticky}</span></li>
                            <li>{PHP.R.forums_icon_posts_locked} <span class="uk-text-small">{PHP.L.forums_locked}</span></li>
                            <li>{PHP.R.forums_icon_posts_new_locked} <span class="uk-text-small">{PHP.L.forums_newpostslocked}</span></li>
                        </ul>
                    </div>
                    <div>
                        <ul class="uk-list uk-list-line">
                            <li>{PHP.R.forums_icon_posts_sticky_locked} <span class="uk-text-small">{PHP.L.forums_announcment}</span></li>
                            <li>{PHP.R.forums_icon_posts_new_sticky_locked} <span class="uk-text-small">{PHP.L.forums_newannouncment}</span></li>
                            <li>{PHP.R.forums_icon_posts_moved} <span class="uk-text-small">{PHP.L.forums_movedoutofthissection}</span></li>
                        </ul>
                    </div>
                    </div>
                </li>
                <!-- BEGIN: FORUMS_SECTIONS_VIEWERS -->
                <li>
                    {FORUMS_TOPICS_VIEWER_NAMES}
                </li>
                <!-- END: FORUMS_SECTIONS_VIEWERS -->
            </ul>
        </div>
        </div>                            
    </div>
</div>
<!-- END: MAIN -->