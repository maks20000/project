<!-- BEGIN: MAIN -->
<div class="uk-container-center uk-container">
<div class="uk-block" data-uk-grid-margin="">
    <div class="uk-container-center uk-width-medium-1-1">
        <ul class="uk-breadcrumb">
        <li><a href="/">{PHP.L.Home}</a></li>
        {FORUMS_NEWTOPIC_PAGETITLE|ul_transform($this)}
        </ul>
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <form class="uk-form uk-form-stacked" action="{FORUMS_NEWTOPIC_SEND}" method="post" name="newtopic">  
            <div class="uk-panel uk-panel-header">
                <div class="uk-grid uk-margin-bottom">
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row">
                            {PHP.L.Title|cot_uk_label("$this", "uk-form-label")}
                            <div class="uk-form-controls uk-margin-bottom">
                                {FORUMS_NEWTOPIC_TITLE}
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row">
                            {PHP.L.Description|cot_uk_label("$this", "uk-form-label")}
                            <div class="uk-form-controls uk-margin-bottom">
                                {FORUMS_NEWTOPIC_DESC}
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <!-- BEGIN: PRIVATE -->   
            <div class="uk-grid uk-margin-bottom">
                <div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        <div class="uk-form-controls uk-margin-bottom">
                            {PHP.L.forums_privatetopic1}
                            {FORUMS_NEWTOPIC_ISPRIVATE}
                            <p class="uk-text-small uk-text-success">{PHP.L.forums_privatetopic2}</p>
                        </div>
                    </div>
                </div>
            </div> 
            <!-- END: PRIVATE -->
            
            <div class="uk-grid uk-margin-bottom">
                <div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        <label class="uk-form-label"></label>
                        <div class="uk-form-controls uk-margin-bottom">
                            {FORUMS_NEWTOPIC_TEXT}
                        </div>
                    </div>
                </div>
            </div> 
            <!-- BEGIN: POLL -->
            <div class="uk-grid uk-margin-bottom">
                <div class="uk-width-medium-1-2">
                    <div class="uk-form-row">
                        {PHP.L.poll|cot_uk_label("$this", "uk-form-label")}
                        <div class="uk-form-controls uk-margin-bottom">
                            <script type="text/javascript" src="{PHP.cfg.modules_dir}/polls/js/polls.js"></script>
                            <script type="text/javascript">
                                    var ansMax = {PHP.cfg.polls.max_options_polls};
                            </script>
                            {EDIT_POLL_IDFIELD}
                            {EDIT_POLL_TEXT}
                            <p>{EDIT_POLL_MULTIPLE}</p>
                        </div>
                    </div>
                </div>
                <div class="uk-width-medium-1-2">
                    <div class="uk-form-row">
                        {PHP.L.Options|cot_uk_label("$this", "uk-form-label")}
                        <!-- BEGIN: OPTIONS -->
                        <div class="uk-form-controls uk-margin-bottom">
                            <div class="polloptiondiv uk-margin-bottom" style="position: relative">
                                {EDIT_POLL_OPTION_TEXT}
                                <button name="deloption" value="x" type="button" class="deloption uk-button-large uk-button uk-button-success" style="display:none;" title="{PHP.L.Delete}" data-uk-tooltip="{pos:'top'}"><i class="uk-icon-close"></i></button>
                            </div>
                        </div>
                        <!-- END: OPTIONS -->
                        <div class="uk-text-center">
                            <button id="addoption" name="addoption" type="button" style="display:none;" class="uk-button uk-button-primary uk-width-1-6" title="{PHP.L.Add}" data-uk-tooltip="{pos:'top'}"><i class="uk-icon-hand-o-right"></i></button> 
                        </div>    
                    </div>
                </div>
            </div>      
            <!-- END: POLL -->
            <!-- BEGIN: FORUMS_NEWTOPIC_TAGS -->
            <div class="uk-grid uk-margin-bottom">
                <div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        {PHP.L.Tags|cot_uk_label("$this", "uk-form-label")}
                        <div class="uk-form-controls uk-margin-bottom">
                            {FORUMS_NEWTOPIC_FORM_TAGS} 
                            <span class="uk-text-small uk-text-primary">{FORUMS_NEWTOPIC_TOP_TAGS_HINT}</span>
                        </div>
                    </div>
                </div>
            </div> 
            <!-- END: FORUMS_NEWTOPIC_TAGS -->
 
            <div class="uk-text-center"><button class="uk-button uk-button-large uk-button-success uk-width-1-5" type="submit">{PHP.L.Submit}</button></div>    
        </form>
    </div>
</div>

<script type="text/javascript" src="themes/{PHP.theme}/js/check/check.min.js"></script>
<script type="text/javascript" src="themes/{PHP.theme}/js/check/green.js"></script> 

</div>  
<!-- END: MAIN -->
                       