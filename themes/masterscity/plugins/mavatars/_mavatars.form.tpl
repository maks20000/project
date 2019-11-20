<!-- BEGIN: MAIN -->
<div class="mavatar_uploadform">
	<div class="uploadedfiles rows">
            <!-- BEGIN: FILES -->
				<div class="uk-grid uk-margin-bottom" data-uk-grid-margin="">		
				<!-- BEGIN: ROW -->
				<div class="uk-width-medium-1-2">	
					<div class="uploadedfile uk-panel uk-panel-box">
						<div class="tp-panel-body uk-alert">
							<div class="uk-panel-badge uk-badge"># - {MAVATAR.ORDER}</div>
							<div class="uk-grid uk-margin-bottom" data-uk-grid-margin="">
								<div class="width-medium-1-2">
									<!-- IF {MAVATAR.FILEEXT} == 'png' OR {MAVATAR.FILEEXT} == 'jpg' OR {MAVATAR.FILEEXT} == 'jpeg' OR {MAVATAR.FILEEXT} == 'gif' OR {MAVATAR.FILEEXT} == 'bmp' -->
									
									<a class="uk-thumbnail" href="{MAVATAR.FILE}" data-uk-lightbox title="{MAVATAR.FILENAME}.{MAVATAR.FILEEXT}"><img src="{MAVATAR|cot_mav_thumb($this, 100, 100, auto)}" alt=""></a>
									
									<div class="media-body">
										<div class="inp">{FILEDESCTEXT|cot_rc_modify('$this', 'class="form-control"')}{FILENEW}</div>
										<label class="checkbox" style="display: none;">{DELETE} {PHP.L.Delete}</label>	
									</div>	
									<!-- ELSE -->
									<div class="media-body">
										<a href="{MAVATAR.FILE}" target="_blank" rel="gallery1">{MAVATAR.DESC}.{MAVATAR.FILEEXT}</a>
										<div class="inp">{FILEDESCTEXT|cot_rc_modify('$this', 'class="form-control"')}{FILENEW}</div>
										<label class="checkbox" style="display: none;">{DELETE} {PHP.L.Delete}</label>	 
									</div>
									<!-- ENDIF -->						
								</div>
								<div class="width-medium-1-2">
									<p><span class="ti-linck-black uk-text-bold uk-margin-bottom-remove">Порядок сортировки:</span>
										{FILEORDER|cot_rc_modify('$this', 'class="form-control"')}</p>
									<p><a class="uk-button uk-button-primary" data-uk-tooltip="{pos:'bottom-left'}" title="Сохраните изменения после нажатия этой кнопки" href="javascript:void(0);" onclick="$(this).parents('.uploadedfile').find('input').attr('checked', true); $(this).parents('.uploadedfile').css('height', 0); $(this).parents('.uploadedfile').css('overflow', 'hidden'); return false;">Удалить файл</a>	</p>	
								</div>
							</div>
						</div>
					</div>
				</div>
				<!-- END: ROW -->
				</div>	
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