<!-- BEGIN: MAIN -->
<div class="tp-container uk-container-center uk-margin-large-top uk-width-medium-1-1">
    <!-- BEGIN: FORUMS_POSTS_TOPICPRIVATE -->
    <div class="uk-alert uk-alert-danger">{PHP.L.forums_privatetopic}</div>
    <!-- END: FORUMS_POSTS_TOPICPRIVATE -->
    
    <!-- BEGIN: FORUMS_POSTS_ADMIN -->
    <div class="uk-margin-top">
    <div class="tp-forums-post-panel uk-contrast">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-medium-1-1"> {PHP.L.forums_topicoptions}</div>
        </div>
    </div>
    </div>
    
   <form id="movetopic" action="{FORUMS_POSTS_MOVE_URL}" method="post" class="uk-form">
    <div class="tp-panel-border uk-margin-bottom">

        <div class="tp-forums-panel-linck">
            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-medium-1-2">
                    <div class="uk-button-group">
                    <a class="uk-button uk-button-success" data-uk-tooltip="{pos:'top'}" href="{FORUMS_POSTS_BUMP_URL}" title="{PHP.L.forums_explainbump}">{PHP.L.forums_bump}</a>
                    <a class="uk-button uk-button-danger"  data-uk-tooltip="{pos:'top'}" href="{FORUMS_POSTS_LOCK_URL}" title="{PHP.L.forums_explainlock}">{PHP.L.Lock}</a>
                    <a class="uk-button uk-button-primary" data-uk-tooltip="{pos:'top'}" href="{FORUMS_POSTS_STICKY_URL}" title="{PHP.L.forums_explainsticky}">{PHP.L.forums_makesticky}</a>
                    <a class="uk-button uk-button-success" data-uk-tooltip="{pos:'top'}" href="{FORUMS_POSTS_ANNOUNCE_URL}" title="{PHP.L.forums_explainannounce}">{PHP.L.forums_announcement}</a>
                    <a class="uk-button uk-button-primary" data-uk-tooltip="{pos:'top'}" href="{FORUMS_POSTS_PRIVATE_URL}" title="{PHP.L.forums_explainprivate}">{PHP.L.forums_private} (#)</a>
                    <a class="uk-button" data-uk-tooltip="{pos:'top'}" href="{FORUMS_POSTS_CLEAR_URL}" title="{PHP.L.forums_explaindefault}">{PHP.L.Default}</a>
                    <a class="confirmLink uk-button uk-button-danger" data-uk-tooltip="{pos:'top'}" href="{FORUMS_POSTS_DELETE_URL}" title="{PHP.L.forums_explaindelete}">{PHP.L.Delete}</a>
                    </div>
                    <p>{FORUMS_POSTS_MOVEBOX_KEEP} {PHP.L.forums_keepmovedlink}</p>
                    <script type="text/javascript" src="themes/{PHP.theme}/js/check/check.min.js"></script>
                    <script type="text/javascript" src="themes/{PHP.theme}/js/check/green.js"></script> 
                </div>
                <div class="uk-width-medium-1-2">
                    <div class="uk-grid">
                        <div class="uk-width-medium-3-4">
                            <label class="uk-form-label">{PHP.L.Move}</label>
                            {FORUMS_POSTS_MOVEBOX_SELECT}
                        </div>
                        <div class="uk-width-medium-1-4">
                            <button class="uk-button uk-button-primary tp-radius uk-margin-top uk-button-large" type="submit">{PHP.L.Move}</button>
                        </div>
                    </div>
                </div>
                
            </div>
        </div>
    </div>
    </form>
    <!-- END: FORUMS_POSTS_ADMIN -->
    
    <ul class="uk-breadcrumb uk-hidden-small">
        <li><a href="/">{PHP.L.Home}</a></li>
        {FORUMS_POSTS_PAGETITLE|ul_transform($this)}
    </ul>
    <div class="uk-margin-top">
        <div class="tp-forums-post-panel uk-contrast">
            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-medium-1-6">
                    {PHP.L.Author}
                </div>
                <div class="uk-width-medium-5-6 uk-text-center">
                    {PHP.L.Message}
                </div>
            </div>
        </div>
        <div class="tp-panel-border uk-margin-bottom">  
            <div style="border: 1px solid #dbe4ef;">
            <div style="border-bottom: 7px solid #ebf0f3;"></div>
            <!-- BEGIN: FORUMS_POSTS_ROW -->     
            <div class="tp-postbox">
                <div class="tp-postforums-panel tp-ahover">
                    <div class="uk-grid" data-uk-grid-margin>
                        <div class="uk-width-medium-1-6">
                            {FORUMS_POSTS_ROW_USERNAME|cot_uk_bold("$this")}
                            <img class="uk-float-right" src="themes/{PHP.theme}/img/online{FORUMS_POSTS_ROW_USERONLINE}.png" title="{PHP.L.Status}: {FORUMS_POSTS_ROW_USERONLINETITLE}" alt="" class="userstatus"/>
                        </div>

                        <div class="uk-width-medium-5-6">
                            <div class="uk-float-right tp-text-small">
                            <a name="{FORUMS_POSTS_ROW_ID}" id="{FORUMS_POSTS_ROW_POSTID}" href="{FORUMS_POSTS_ROW_IDURL}" rel="nofollow">#{FORUMS_POSTS_ROW_ORDER}</a>
                            <span class="spaced">{PHP.cfg.separator}</span>{FORUMS_POSTS_ROW_CREATION}
                            <!-- IF {FORUMS_POSTS_ROW_POSTERIP} --><span class="spaced">{PHP.cfg.separator}</span>{FORUMS_POSTS_ROW_POSTERIP}<!-- ENDIF -->
                            <!-- IF {FORUMS_POSTS_ROW_QUOTE} --><span class="spaced">{PHP.cfg.separator}</span>{FORUMS_POSTS_ROW_QUOTE}<!-- ENDIF -->
                            <!-- IF {FORUMS_POSTS_ROW_EDIT} --><span class="spaced">{PHP.cfg.separator}</span>{FORUMS_POSTS_ROW_EDIT}<!-- ENDIF -->
                            <!-- IF {FORUMS_POSTS_ROW_DELETE} --><span class="spaced">{PHP.cfg.separator}</span>{FORUMS_POSTS_ROW_DELETE}<!-- ENDIF --> 
                            {FORUMS_POSTS_ROW_BOTTOM}
                            {FORUMS_POSTS_ROW_ANCHORLINK}
                            </div>
                        </div>
                        
                    </div>
                </div>
                <div class="uk-grid" data-uk-grid-margin>    
                    <div class="uk-width-medium-1-6">
                        <div class="tp-block-post">
                            <div class="uk-grid">
                                <div class="uk-width-medium-1-3">
                                    <!-- IF {FORUMS_POSTS_ROW_USERAVATAR} -->
                                    {FORUMS_POSTS_ROW_USERAVATAR}
                                    <!-- ELSE -->
                                    {PHP.R.forums_noavatar}
                                    <!-- ENDIF -->  
                                </div>
                                <div class="uk-width-medium-3-5">
                                    {FORUMS_POSTS_ROW_USERMAINGRPTITLE}
                                    <p class="uk-text-small uk-text-bold">{PHP.L.forums_posts}: {FORUMS_POSTS_ROW_USERPOSTCOUNT}</p>
                                </div>    
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-5-6">
                        <div class="tp-block-post">
                        {FORUMS_POSTS_ROW_TEXT}
                        <!--<div class="uk-text-small">{FORUMS_POSTS_ROW_UPDATEDBY}</div>-->
                        </div>  
                    </div>
                    <!-- IF {FORUMS_POSTS_ROW_USERTEXT} -->    
                    <div class="uk-width-medium-1-1">
                        <div class="tp-text-small tp-post-text uk-contrast">{FORUMS_POSTS_ROW_USERTEXT}</div>
                    </div> 
                    <!-- ENDIF -->
                </div>    
            </div>
            <!-- END: FORUMS_POSTS_ROW -->
            <div style="border-bottom: 7px solid #ebf0f3;"></div>
           <!-- IF {FORUMS_POSTS_PAGES} -->
           <ul class="uk-pagination">{FORUMS_POSTS_PAGEPREV}{FORUMS_POSTS_PAGENEXT}{FORUMS_POSTS_PAGES}</ul>
           <!-- ENDIF -->
           </div>
        </div>
    </div>
    <!-- BEGIN: FORUMS_POSTS_TOPICLOCKED -->
        <div class="uk-alert uk-alert-danger">{FORUMS_POSTS_TOPICLOCKED_BODY}</div>
    <!-- END: FORUMS_POSTS_TOPICLOCKED -->
    <!-- BEGIN: FORUMS_POSTS_ANTIBUMP -->
    <div>{FORUMS_POSTS_ANTIBUMP_BODY}</div>
    <!-- END: FORUMS_POSTS_ANTIBUMP -->
    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    <!-- BEGIN: FORUMS_POSTS_NEWPOST -->

    <form action="{FORUMS_POSTS_NEWPOST_SEND}" method="post" name="newpost" class="uk-form">
        {FORUMS_POSTS_NEWPOST_TEXT}
        <!-- IF {PHP.cfg.forums.edittimeout} != 0 -->
        <div class="uk-text-small uk-text-primary">{PHP.L.forums_edittimeoutnote} {FORUMS_POSTS_NEWPOST_EDITTIMEOUT}</div>
        <!-- ENDIF -->
        <div class="tp-container uk-container-center uk-margin-top uk-width-medium-1-4">
            <p><button class="uk-width-1-1 uk-button uk-button-large uk-button-primary tp-radius" type="submit">{PHP.L.Reply}</button></p>
        </div>
    </form>

    <!-- END: FORUMS_POSTS_NEWPOST -->
</div>
<!-- END: MAIN -->