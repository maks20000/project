<!-- BEGIN: MAIN -->
    <!-- BEGIN: CAT_ROW -->
        <li  class="<!-- IF {CAT_ROW_SELECTED} -->uk-active <!-- ENDIF --> <!-- IF {CAT_ROW_SUBCAT} -->uk-parent<!-- ENDIF -->">
            <i class="uk-icon-star-o uk-text-warning"></i>
            <a href="<!-- IF {ROW_SUBCAT} -->#<!-- ELSE -->{CAT_ROW_URL}<!-- ENDIF -->">{CAT_ROW_TITLE} <span class="uk-float-right tp-color-ts">({CAT_ROW_COUNT})</span></a>
            <!-- IF {CAT_ROW_SUBCAT} -->
                <ul>
                    {CAT_ROW_SUBCAT}
                </ul>    
            <!-- ENDIF -->
        </li>
    <!-- END: CAT_ROW -->
<!-- END: MAIN -->