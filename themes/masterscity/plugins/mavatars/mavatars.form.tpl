<!-- BEGIN: MAIN -->
<div class="mavatar_uploadform">
	<div class="uploadedfiles rows">
            <!-- BEGIN: FILES -->	
		<!-- BEGIN: ROW -->
                <div class="uploadedfile uk-block-muted uk-margin-top uk-margin-bottom"  style="padding: 10px 15px 15px;">
                    <div class="uk-grid">
                        <div class="uk-width-medium-1-4">
                            <div class="uk-comment-avatar">
                                <a data-uk-lightbox="{group:'my-group'}" href="{MAVATAR.FILE}">
                                    <img src="themes/{PHP.theme}/img/icon/file/{MAVATAR.FILEEXT}.svg" alt="{MAVATAR.FILENAME}.{MAVATAR.FILEEXT}" />
                                </a>
                            </div>
                            <p class="uk-text-muted">{MAVATAR.FILENAME|cot_string_truncate($this,8)}.{MAVATAR.FILEEXT}</p>
                        </div>
                        <div class="uk-width-medium-3-4">
                            <div class="uk-grid" data-uk-grid-margin="">
                                <div class="uk-width-medium-1-3 uk-text-muted">
                                    <p class="uk-margin-top">{MAVATAR.FILESIZE|cot_build_filesize($this)}</p>
                                </div>
                                <div class="uk-width-medium-1-3 uk-text-muted">
                                    <p class="uk-margin-top">
                                    {FILEORDER|cot_rc_modify('$this', 'class="uk-form"')}
                                    </p>
                                </div>
                                <div class="uk-width-medium-1-3 uk-margin-top">
                                    <div class="uk-grid">
                                        <div class="uk-width-medium-1-2">
                                             <span class="uk-text-muted">{PHP.L.Delete}</span>
                                        </div>
                                        <div class="uk-width-medium-1-2">
                                            {DELETE}
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>			
                <!-- END: ROW -->	
	<!-- END: FILES -->
	</div>
        
        <!-- BEGIN: UPLOAD -->
	{PHP.L.mavatar_form_addfiles}
	<!-- FOR {INDEX} IN {PHP.cfg.plugin.mavatars.items|range(1,$this)} -->
	<div>{FILEUPLOAD_INPUT}</div>
	<!-- ENDFOR -->
	<!-- END: UPLOAD -->
	<!-- BEGIN: AJAXUPLOAD -->
    
	<script>
            window.FileAPI = {
                debug: false
              , staticPath: '{PHP.cfg.plugins_dir}/mavatars/lib/FileAPI/' /* path to *.swf*/
            };
	</script>
	<script src="{PHP.cfg.plugins_dir}/mavatars/lib/FileAPI/FileAPI.min.js"></script>
	<script src="{PHP.cfg.plugins_dir}/mavatars/lib/FileAPI/FileAPI.exif.js"></script>
	<script src="{PHP.cfg.plugins_dir}/mavatars/lib/jquery.fileapi.min.js"></script>

	<div id="uploader">
            <div class="uk-placeholder uk-text-center">
                <a class="uk-form-file">
                <!-- IF  {PHP.env.ext} == "projects" -->    
                {PHP.L.Files} 
                <!-- ENDIF -->
                <!-- IF  {PHP.env.ext} == "market" OR  {PHP.env.ext} == "folio" OR {PHP.env.ext} == "page"  -->    
                {PHP.L.Image}
                <!-- ENDIF -->
                <div class="js-fileapi-wrapper">
                <input type="file"  tabindex="-1" hidefocus="true" id="mavatar_file" name="mavatar_file[]" />
                </div>
                </a>
                <i class="uk-icon-cloud-upload uk-icon-medium uk-text-muted uk-margin-left uk-margin-right"></i>  
            </div>  
            <div data-fileapi="active.show" class="uk-progress">
                <div data-fileapi="progress" class="uk-progress-bar"></div>
            </div>
        </div>
  
	<script>
            jQuery(function ($){
                $('#uploader').fileapi({
                    url: '{FILEUPLOAD_URL}',
                    autoUpload: true,
                    /*accept: 'image/*',*/
                    multiple: true,
                    maxSize: FileAPI.MB*10, /*max file size*/
                    imageTransform: {
                            maxWidth: 5000,
                            maxHeight: 5000
                    },
                    onFileComplete: function (evt, uiEvt){
                        var file = uiEvt.file;
                        var data = uiEvt.result;
                        if (data == 1 || data.success == 1) {
                        /*uploadobj.remove();*/
                                var decoded = $('<textarea/>').html(data.form).val();
                                        $('.uploadedfiles').append(decoded);
                                }
                        else {
                                $(this).prepend(alertmessage.replace(/\%text\%/g, data.error));
                        }
                    }
                });
            });
	</script>

	<!-- END: AJAXUPLOAD -->
	
	<!-- BEGIN: CURLUPLOAD -->
	{PHP.L.mavatar_form_addcurl}
	<!-- FOR {INDEX} IN {PHP.cfg.plugin.mavatars.items|range(1,$this)} -->
	<div>{CURLUPLOAD_INPUT}</div>
	<!-- ENDFOR -->	
	<!-- END: CURLUPLOAD -->
</div>

<!-- END: MAIN -->