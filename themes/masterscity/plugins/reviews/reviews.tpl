<!-- BEGIN: MAIN -->

{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<!-- BEGIN: REVIEWS_ROWS -->

<div class="uk-grid" data-uk-grid-margin="">
    <div class="uk-width-medium-1-1">
        <article class="uk-comment tp-block-background-white">
            <header class="uk-comment-header">
                <div class="uk-comment-avatar uk-position-relative">
                    <!-- IF {REVIEW_ROW_AVATAR_SRC} -->
                    <img class="tp-profile-user-img uk-border-circle" width="100" height="100" alt="{REVIEW_ROW_NICKNAME}" src="{REVIEW_ROW_AVATAR_SRC}">
                    <!-- ELSE -->
                    <img class="tp-profile-user-img uk-border-circle" width="100" height="100" alt="{REVIEW_ROW_NICKNAME}" src="themes/{PHP.theme}/img/avatar.png">
                    <!-- ENDIF -->
                    <span class="uk uk-position-bottom-right">
                    <!-- IF {REVIEW_ROW_SCORE} > 0 --> 
                    <i class="uk-icon-thumbs-up uk-text-success uk-text-large" title="Положительный" data-uk-tooltip="{pos:'top'}"></i>
                    <!-- ELSE --> 
                    <i class="uk-icon-thumbs-down uk-text-danger uk-text-large" title="Негативный" data-uk-tooltip="{pos:'top'}"></i>
                    <!-- ENDIF -->
                    </span>
                </div>
                <div class="uk-comment-body sw-text-small">{REVIEW_ROW_TEXT}</div>
                <div class="">
				
						<!-- IF {REVIEW_ROW_PERS_FIRSTNAME} AND {REVIEW_ROW_PERS_SURNAME} -->
<a href="{REVIEW_ROW_DETAILSLINK}">
						<span class="uk-text-bold">{REVIEW_ROW_PERS_FIRSTNAME} {REVIEW_ROW_PERS_SURNAME}</span></a>
						<!-- ELSE -->
						{REVIEW_ROW_OWNER}
						<!-- ENDIF -->
                    &nbsp;&nbsp;
                    <i class="uk-icon-clock-o"></i> &nbsp;<span class="uk-text-small">{REVIEW_ROW_DATE|date('d.m.Y H:i', $this)}</span>
                     <!-- IF {REVIEW_ROW_DELETE_URL} --> 
                     &nbsp;&nbsp;
                     <a class="uk-text-danger" href="{REVIEW_ROW_DELETE_URL}">{PHP.L.Delete}</a>
                     <!-- ENDIF -->
                     <!-- IF {PHP.usr.id} > 0 AND {PHP.usr.id} == {REVIEW_ROW_OWNERID} -->
                     &nbsp;&nbsp;
                     <a class="uk-text-success" href="{REVIEW_ROW_EDIT_URL}" data-uk-modal="{target:'#ReviewEditModal{REVIEW_ROW_ID}'}">{PHP.L.Edit}</a>
                     <!-- ENDIF -->
                </div>
            </header>
        </article>
    </div>
</div>

<!-- BEGIN: EDITFORM -->

<div id="ReviewEditModal{REVIEW_FORM_ID}" class="uk-modal uk-open" aria-hidden="">
    <form action="{REVIEW_FORM_SEND}" method="post" name="newreview" enctype="multipart/form-data" class="uk-form">
        <div class="uk-modal-dialog">
            <button class="uk-modal-close uk-close" type="button"></button>
            <div class="uk-modal-header">
                {PHP.L.reviews_edit_review|cot_uk_heading(3, "$this", "uk-text-bold")}
            </div>
            <p>{REVIEW_FORM_TEXT}</p>
            <div class="uk-modal-footer uk-text-right">
                <div class="uk-float-left">{REVIEW_FORM_SCORE}</div>
                <a class="uk-button uk-button-danger uk-button-small" href="{REVIEW_FORM_DELETE_URL}">{PHP.L.Delete}</a>
                <button class="uk-button uk-button-success uk-button-small" type="submit">{PHP.L.Edit}</button>
            </div>
        </div>
    </form>
</div>	   

<!-- END: EDITFORM -->
	
<!-- END: REVIEWS_ROWS -->

<!-- BEGIN: FORM -->

<div class="uk-margin-bottom uk-margin-top uk-text-center">
    <a class="uk-button uk-button-success uk-width-1-5" href="" data-uk-modal="{target:'#mboxHD'}">{PHP.L.rewes_title}</a>
</div>

<div id="mboxHD" class="uk-modal uk-open" aria-hidden="">
    <form action="{REVIEW_FORM_SEND}" method="post" name="newreview" enctype="multipart/form-data" class="uk-form">
        <div class="uk-modal-dialog">
            <button class="uk-modal-close uk-close" type="button"></button>
            <div class="uk-modal-header">
                <h3 class="uk-text-bold"><!-- IF {REVIEW_FORM_ACTION} == "EDIT" -->{PHP.L.reviews_edit_review}<!-- ELSE -->{PHP.L.reviews_add_review}<!-- ENDIF --></h3>
            </div>
            <!-- IF {REVIEW_FORM_PROJECTS} -->
            <div class="uk-alert">{PHP.L.reviews_projectsonly}</div>
            <div class="uk-form-row">
                {PHP.L.review_chooseprj|cot_uk_label("$this", "uk-form-label")}
                 {REVIEW_FORM_PROJECTS}
            </div>
            <!-- ENDIF -->
            <p>{REVIEW_FORM_TEXT}</p>
            <div class="uk-modal-footer uk-text-right">
                <div class="uk-float-left">{REVIEW_FORM_SCORE}</div>
                <!-- IF {REVIEW_FORM_ACTION} == "EDIT" --> <a class="uk-button uk-button-danger" href="{REVIEW_FORM_DELETE_URL}">{PHP.L.Delete}</a><!-- ENDIF -->
                <button class="uk-button uk-button-primary" type="submit"><!-- IF {REVIEW_FORM_ACTION} == "EDIT" -->{PHP.L.Edit}<!-- ELSE -->{PHP.L.Add}<!-- ENDIF --></button>
            </div>
        </div>
    </form>
</div>	
<!-- END: FORM -->

<!-- END: MAIN -->