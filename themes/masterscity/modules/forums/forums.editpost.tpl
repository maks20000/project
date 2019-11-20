<!-- BEGIN: MAIN -->
<div class="uk-container-center uk-container">
<div class="uk-block" data-uk-grid-margin="">
    <div class="uk-container-center uk-width-medium-1-1">
        <ul class="uk-breadcrumb">
        <li><a href="/">{PHP.L.Home}</a></li>
        {FORUMS_EDITPOST_PAGETITLE|ul_transform($this)}
        </ul>
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
        <!-- IF {FORUMS_EDITPOST_SUBTITLE} --><p class="uk-text-small">{FORUMS_EDITPOST_SUBTITLE}</p><!-- ENDIF -->
        <form class="uk-form uk-form-stacked" action="{FORUMS_EDITPOST_SEND}" method="post" name="newtopic">
            <!-- BEGIN: FORUMS_EDITPOST_FIRSTPOST -->
            <div class="uk-panel uk-panel-header">
                <div class="uk-grid uk-margin-bottom">
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row">
                           {PHP.L.forums_topic|cot_uk_label("$this", "uk-form-label")}
                            <div class="uk-form-controls uk-margin-bottom">
                                {FORUMS_EDITPOST_TOPICTITTLE}
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-2">
                        <div class="uk-form-row">
                            {PHP.L.Description|cot_uk_label("$this", "uk-form-label")}
                            <div class="uk-form-controls uk-margin-bottom">
                                {FORUMS_EDITPOST_TOPICDESCRIPTION}
                            </div>
                        </div>
                    </div>
                </div> 
            </div>
            <!-- END: FORUMS_EDITPOST_FIRSTPOST -->
            
            <!-- BEGIN: PRIVATE -->   
            <div class="uk-grid uk-margin-bottom">
                <div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        {PHP.L.forums_privatetopic1|cot_uk_label("$this", "uk-form-label")}
                        <div class="uk-form-controls uk-margin-bottom">
                            {FORUMS_EDITPOST_ISPRIVATE}
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
                            {FORUMS_EDITPOST_TEXT}
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
                            <!-- BEGIN: EDIT -->
                            <div class="sw-b-b"></div>
                            <div class="uk-form-row uk-margin-top">
                                <div class="uk-form-controls uk-margin-bottom">
                                    <span class="uk-text-warning">{EDIT_POLL_LOCKED}</span> 
                                    <span class="uk-text-primary">{EDIT_POLL_RESET}</span> 
                                    <span class="uk-text-danger">{EDIT_POLL_DELETE}</span>
                                </div>
                            </div>                      
                            <!-- END: EDIT -->
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
                                <button name="deloption" value="x" type="button" class="deloption uk-button uk-button-success uk-button-large" style="display:none;" title="{PHP.L.Delete}" data-uk-tooltip="{pos:'top'}"><i class="uk-icon-close"></i></button>
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
            <!-- BEGIN: FORUMS_EDITPOST_TAGS -->
            <div class="uk-grid uk-margin-bottom">
                <div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        {PHP.L.Tags|cot_uk_label("$this", "uk-form-label")}
                        <div class="uk-form-controls uk-margin-bottom">
                            {FORUMS_EDITPOST_FORM_TAGS} 
                            <span class="uk-text-small uk-text-primary">{FORUMS_EDITPOST_TOP_TAGS_HINT}</span>
                        </div>
                    </div>
                </div>
            </div> 
            <!-- END: FORUMS_EDITPOST_TAGS -->
 
            <div class="uk-text-center"><button class="uk-button uk-button-large uk-button-success uk-width-1-5" type="submit">{PHP.L.Submit}</button></div>    
        </form>
    </div>
</div>
</div>
<!-- END: MAIN -->
                       