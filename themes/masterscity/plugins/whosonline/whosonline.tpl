<!-- BEGIN: MAIN -->
<div class="uk-block" style="position: relative; background-image: url('themes/{PHP.theme}/img/tp-folio-bg.png'); background-attachment: fixed;">
    <div class="uk-container uk-container-center"> 
        {PHP.L.WhosOnline|cot_uk_heading(1, "$this", "uk-text-bold")}
        <ul class="uk-breadcrumb">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            <li>{PHP.L.WhosOnline}</li>
        </ul>
    </div>
</div>
<div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center">
        <!-- IF {WHO_TOTALPAGES} > 1 -->
        <ul class="uk-pagination-right">{PHP.L.Page} {WHO_CURRENTPAGE} {PHP.L.Of} {WHO_TOTALPAGES} {WHO_PAGINATION} </ul>
        <!-- ENDIF -->
        <div class="tp-box">
            <div class="uk-panel-body">
            {PHP.L.WhosOnline|cot_uk_heading(3, "$this", "uk-text-center")}
            <div class="tp-block-background-white tp-padding-small">
                    <div class="uk-overflow-container">
                    <table class="uk-table">
                        <thead>
                            <tr>
                                <th>{PHP.L.User}</th>
                                <th>{PHP.L.Group}</th>
                                <th>{PHP.L.OnlineLocation}</th>
                                <th>{PHP.L.LastSeen}</th>
                                <!-- IF {PHP.usr.isadmin} --><th>{PHP.L.IPaddress}</th><!-- ENDIF -->
                            </tr>
                        </thead>
                        <tbody>
                            <!-- BEGIN: USERS -->
                            <tr>
                                <td>{USER_LINK}</td>
                                <td>{USER_MAINGRP}</td>
                                <td>{USER_LOCATION} {USER_SUBLOCATION}</td>
                                <td>{USER_LASTSEEN}</td>
                                <!-- IF {PHP.usr.isadmin} --><td>{USER_IP}</td><!-- ENDIF -->
                            </tr>
                            <!-- END: USERS -->
                            <!-- BEGIN: GUESTS -->
                            <tr>
                                <td colspan="2">{PHP.L.Visitor} #{GUEST_NUMBER}</td>
                                <td>{GUEST_LOCATION} {GUEST_SUBLOCATION}</td>
                                <td>{GUEST_LASTSEEN}</td>
                                <!-- IF {PHP.usr.isadmin} --><td>{GUEST_IP}</td><!-- ENDIF -->
                            </tr>
                            <!-- END: GUESTS -->
                        </tbody>
                    </table>
                    </div>
                </div>
            </div>
        </div>  
    </div>
</div>
<!-- END: MAIN -->