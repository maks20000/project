<!-- BEGIN: MAIN -->

<!-- BEGIN: LIST -->
<li>
    <div class="uk-grid">
        <div class="uk-width-1-4">
            {PMLIST_FROM_USER_AVATAR}
        </div>
        <div class="uk-width-3-4">
            <a class="tp-color-ts" href="{PMLIST_URL}">{PMLIST_TITLE}</a>
            
            <div class="uk-text-small uk-text-muted uk-margin-remove">{PMLIST_TEXT|strip_tags($this)|mb_substr($this, 0, 100, 'UTF-8')}...</div>

        </div>
    </div>
</li>
<!-- END: LIST -->

<!-- END: MAIN -->