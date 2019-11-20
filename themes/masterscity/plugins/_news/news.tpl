<!-- BEGIN: NEWS -->

<!-- BEGIN: PAGE_ROW -->
<div class="uk-width-medium-1-3">
    <div class="uk-panel">
        <div class="uk-panel-teaser uk-margin-bottom-remove uk-position-relative">
            <div class="tp-position-left-top uk-text-center tp-text-transform">
                {PAGE_ROW_DATE_STAMP|cot_date('j', $this)} <br />
                {PAGE_ROW_DATE_STAMP|cot_date('M', $this)}
            </div>
            <!-- IF {PAGE_ROW_MAVATAR.1} -->
            <img class="uk-width-1-1" src="{PAGE_ROW_MAVATAR.1|cot_mav_thumb($this, 353, 236, crop)}" width="353" height="236" alt=""> 
            <!-- ELSE -->
            <img class="uk-width-1-1" src="themes/{PHP.theme}/img/no-img.png" width="800" height="300" alt="">
            <!-- ENDIF -->
        </div>
        <div class="tp-panel-border uk-position-relative">
            <!-- IF {PAGE_ROW_OWNER_AVATAR_SRC} -->
            <a class="tp-post-avatar" href="{PAGE_ROW_OWNER_DETAILSLINK}"><img src="{PAGE_ROW_OWNER_AVATAR_SRC}" height="160" width="160" alt="" /></a>
            <!-- ELSE -->
            <a class="tp-post-avatar" href="{PAGE_ROW_OWNER_DETAILSLINK}"><img src="img/avatar.png" height="160" width="160" alt="" /></a>
            <!-- ENDIF -->
            <div class="uk-panel-body">
                {PAGE_ROW_SHORTTITLE|cot_uk_heading(2, "$this", "uk-text-truncate uk-h3")}
                <hr />
                <div class="uk-grid uk-text-small">
                    <div class="uk-width-1-2 uk-text-truncate">
                        <span class="uk-text-muted tp-text-transform">{PAGE_ROW_OWNER_NICKNAME}</span>
                    </div>
                    <div class="uk-width-1-2 uk-text-truncate">
                        <span class="uk-text-muted tp-text-transform">{PAGE_ROW_CATTITLE}</span>
                    </div>
                </div>
                <hr />

                {PAGE_ROW_TEXT_CUT|strip_tags($this)|mb_substr($this, 0, 160, 'UTF-8')}...

            </div>

            <div class="tp-panel-footer">
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-medium-3-5">
                        <div class="uk-grid">
                            <div class="uk-width-1-2">
                                <div class="tp-button-white uk-text-muted uk-text-center">
                                    <div class="tp-padd"><i class="uk-icon-bar-chart"></i> {PAGE_ROW_COUNT}</div>
                                </div>
                            </div>
                            <div class="uk-width-1-2">
                                <div class="tp-button-white uk-text-muted uk-text-center">
                                    <div class="tp-padd"><i class="uk-icon-comment"></i> {PAGE_ROW_COMMENTS_COUNT}</div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-5 uk-hidden-small uk-text-right">
                        <a class="tp-color uk-button tp-button-white tp-text-transform" href="{PAGE_ROW_URL}">{PHP.L.ReadMore}</a>
                    </div>
                </div>
            </div>

        </div>
    </div>
</div>
<!-- END: PAGE_ROW -->

<!-- END: NEWS -->