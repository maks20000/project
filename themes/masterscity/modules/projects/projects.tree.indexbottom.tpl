<!-- BEGIN: MAIN -->
    <!-- BEGIN: CATS -->
    <li<!-- IF {ROW_SELECTED} --> class="uk-active"<!-- ENDIF -->>
        <i class="uk-icon-check-square-o uk-text-warning"></i>
        <a href="{ROW_HREF}">{ROW_TITLE} <span class="uk-float-right tp-color-ts">({ROW_COUNT})</span></a>
        <!-- IF {ROW_SUBCAT} -->
        {ROW_SUBCAT}   
        <!-- ENDIF -->
    </li>
    <!-- END: CATS -->
<!-- END: MAIN -->

