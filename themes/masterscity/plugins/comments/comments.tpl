<!-- BEGIN: MAIN -->

<!-- BEGIN: COMMENTS_TITLE -->
<h3><a href="{COMMENTS_TITLE_URL}">{COMMENTS_TITLE}</a></h3>
<!-- END: COMMENTS_TITLE -->
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- BEGIN: COMMENTS_FORM_EDIT -->
<div id="content" class="content_page">
<h2>Редактировать комментарий</h2>
    <form id="commentform" name="comments" action="{COMMENTS_FORM_POST}" method="post">
        <b>{COMMENTS_POSTER_TITLE}:</b>&nbsp;{COMMENTS_POSTER}<br />
        <b>{COMMENTS_IP_TITLE}:</b>&nbsp;{COMMENTS_IP} <br />
        <b>{COMMENTS_DATE_TITLE}:</b>&nbsp;{COMMENTS_DATE}
        <h3>Текст комментария</h3>
        {COMMENTS_FORM_TEXT}
        <button type="submit"  class="btn_a uk-button uk-button-success uk-button-small" >{COMMENTS_FORM_UPDATE_BUTTON}</button>
    </form>
</div>
<!-- END: COMMENTS_FORM_EDIT -->
<!-- END: MAIN -->
<!-- BEGIN: COMMENTS -->

<!-- IF !{COMMENTS_EMPTYTEXT} -->
    <div  class="comments_div"  style="display:{COMMENTS_DISPLAY}" >
<!-- ENDIF -->

<div id="ajax_display">
    <!-- BEGIN: COMMENTS_ROW -->
    <div id="pos{COMMENTS_ROW_ID}"  class="par_authorbox" style=" margin-left:{COMMENTS_ROW_REPLY_MARGIN}px;">
    <div class="startline" id="stline{COMMENTS_ROW_ID}"></div>
    <!-- IF {COMMENTS_ROW_LEVEL} > 0 -->
        <div class="rc_sub_line{COMMENTS_ROW_ID}" style="width:{COMMENTS_ROW_WL}px;left:-{COMMENTS_ROW_WL}px; border-top:1px dashed {COMMENTS_ROW_COLOR};" ><span class="rc_sub_line_arrow" style="border-color: transparent transparent transparent {COMMENTS_ROW_COLOR} ;" ></span></div>
    <!-- ENDIF -->
        <div class="authorbox">
            <div class="fright date_comm ">{COMMENTS_ROW_DATE}</div>
            <span class="avatar avatar-80">{COMMENTS_ROW_AUTHOR_AVATAR}</span>
            <div class="author_name ">
                <a href="{COMMENTS_ROW_URL}" id="c{COMMENTS_ROW_ID}" class="order_link">{COMMENTS_ROW_ORDER}.</a>&nbsp;{COMMENTS_ROW_AUTHOR}
                <!-- IF {COMMENTS_ROW_REPLY_NUM} -->
                &nbsp;&raquo;
                {COMMENTS_ROW_REPLY_LINK}
                <!-- ENDIF -->
            </div>
            <div class="author_desc tp-panel-border uk-block-muted uk-panel-body" id="commtxt{COMMENTS_ROW_ID}" >{COMMENTS_ROW_TEXT}</div>
            <!-- IF {COMMENTS_ROW_REPLY} -->
            <span class="icon-share-alt opac03"></span>&nbsp;{COMMENTS_ROW_REPLY}

            {COMMENTS_ROW_REPLY_BOX}
            <!-- ENDIF -->
            <div class="fright uk-text-small">{COMMENTS_ROW_ADMIN}{COMMENTS_ROW_EDIT}</div>
            <div class="clear"></div>
        </div><!-- END "div.authorbox" -->
    </div>
    <!-- END "div.pos" -->
    <!-- END: COMMENTS_ROW -->
 </div>

{COMMENTS_REPLY_PAGES}


<!-- BEGIN: PAGNAVIGATOR -->
    <!-- IF {COMMENTS_PAGES_PAGNAV} -->
    <div class="wp-pagenavi pagenavi_top">
        <span class="pages">{COMMENTS_PAGES_INFO}</span>
        <span class="fleft">{COMMENTS_PAGES_PAGESPREV}{COMMENTS_PAGES_PAGNAV}{COMMENTS_PAGES_PAGESNEXT}</span>
    </div>
    <!-- ENDIF -->
<!-- END: PAGNAVIGATOR -->

<!-- BEGIN: COMMENTS_EMPTY -->
<!-- IF {PHP.usr.id} > 0 -->
<div class="uk-width-medium-1-4 tp-here">
    <div class="tp-panel-border tp-panel-box" data-uk-alert="">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
                <div class="uk-panel-body">
                     {PHP|cot_uk_icon("uk-icon-bell tp-icon-warning")}
                </div>
            </div>
            <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
                <a class="uk-alert-close uk-close" href=""></a>
                <div class="uk-panel-body">
                    {PHP.L.Warning|cot_uk_heading(4, "$this", "uk-text-bold uk-margin-bottom-remove")}
                    <p class="uk-margin-top-remove">{COMMENTS_EMPTYTEXT}</p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ENDIF -->
<!-- END: COMMENTS_EMPTY -->

<!-- BEGIN: COMMENTS_NEWCOMMENT -->
<div class="clear"></div>
    <h3>Новый комментарий</h3>

    {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
    
    <div id="rcomm_mes" >{PHP.reply_error}</div>
    <form action="{COMMENTS_FORM_SEND}" {COMMENTS_REPLY_SEND_AJAX} method="post" name="newcomment" id="commentform">
    {COMMENTS_REPLY_ADD_INPUT}
        <!-- BEGIN: GUEST -->
        <div>{PHP.L.Name}: {COMMENTS_FORM_AUTHOR}</div>
        <!-- END: GUEST -->
        <div class="rcommenttxtarea" >{COMMENTS_FORM_TEXT}</div>
        <!-- IF {PHP.usr.id} == 0 AND {COMMENTS_FORM_VERIFYIMG} -->
        <div><span id="rcomm_verify0" >{COMMENTS_FORM_VERIFYIMG}</span> : {COMMENTS_FORM_VERIFY}</div>
        <!-- ENDIF -->
        <button type="submit"  class="uk-button uk-button-success" id="button_ajax_loader_main">{PHP.L.Submit}</button>
    </form>
<!-- END: COMMENTS_NEWCOMMENT -->

<!-- BEGIN: COMMENTS_CLOSED -->
<div class="uk-width-medium-1-4 tp-here">
    <div class="tp-panel-border tp-panel-box" data-uk-alert="">
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-1-4 uk-width-medium-2-5 uk-text-center">
                <div class="uk-panel-body">
                     {PHP|cot_uk_icon("uk-icon-volume-down tp-icon-here")}
                </div>
            </div>
            <div class="uk-width-3-4 uk-width-medium-3-5 uk-padding-left-remove">
                <a class="uk-alert-close uk-close" href=""></a>
                <div class="uk-panel-body">
                    <h4 class="uk-text-bold">Info</h4>
                    <p>{PHP.L.com_regonly} <br /><a href="{PHP|cot_url('users','m=register')}" > {PHP.L.Register}</a></p>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- END: COMMENTS_CLOSED -->

<!-- IF !{COMMENTS_EMPTYTEXT} -->
    </div>
<!-- ENDIF -->
{COMMENTS_REPLY_SCRIPT}
<!-- END: COMMENTS -->