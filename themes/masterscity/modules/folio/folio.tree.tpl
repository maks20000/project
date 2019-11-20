<!-- BEGIN: MAIN -->
  <!-- BEGIN: CATS -->
    <li  class="<!-- IF {ROW_SELECTED} -->uk-active <!-- ENDIF --> <!-- IF {ROW_SUBCAT} -->uk-parent<!-- ENDIF -->">
        <i class="uk-icon-bookmark-o uk-text-warning"></i>
        <a href="<!-- IF {ROW_SUBCAT} -->#<!-- ELSE -->{ROW_HREF}<!-- ENDIF -->">{ROW_TITLE} <span class="uk-float-right tp-color-ts">({ROW_COUNT})</span></a>
        <!-- IF {ROW_SUBCAT} -->
            <ul>
                {ROW_SUBCAT}
            </ul>    
        <!-- ENDIF -->
    </li>
    <!-- END: CATS -->
<!-- END: MAIN -->