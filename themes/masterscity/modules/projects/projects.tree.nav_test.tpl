<!-- BEGIN: MAIN -->

<!-- BEGIN: CATS -->
<li <!-- IF {ROW_SELECTED} -->class="uk-active"<!-- ENDIF -->><a href="{ROW_HREF}">{ROW_TITLE} <!-- IF {ROW_SUBCAT} --><i class="uk-icon-angle-right uk-float-right"></i><!-- ENDIF --></a>
<!-- IF {ROW_SUBCAT} -->
<ul class="tp-submenu">
    {ROW_SUBCAT}
</ul>
<!-- ENDIF -->
</li>
<!-- END: CATS -->

<!-- END: MAIN -->


