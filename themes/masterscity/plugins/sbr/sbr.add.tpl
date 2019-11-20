<!-- BEGIN: MAIN -->
<div class="uk-block-muted">
    <div class="uk-container uk-container-center">
        <ul class="uk-breadcrumb tp-padd uk-margin-top uk-hidden-small">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {SBRADD_TITLE|ul_transform($this)}
        </ul>
        {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"} 
        <form class="uk-form uk-form-stacked" action="{SBRADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="sbrform" id="sbrform">
        <input type="hidden" name="stagescount" value="{PHP.stagescount}"/>
        <div class="tp-box">
            <div class="uk-panel-body">
                <div class="uk-text-center">
                {SBRADD_SUBTITLE|cot_uk_heading(1, "$this", "uk-h2 tp-text-transform uk-text-bold")}
                </div>
                <hr />
                <div class="uk-grid" data-uk-grid-margin="">
                    <div class="uk-width-medium-3-4">
                        <div class="uk-form-row">
                            {PHP.L.sbr_title|cot_uk_label("$this", "uk-form-label uk-text-bold")}
                            <div class="uk-form-controls">
                                <input class="uk-width-1-1 uk-form-large" type="text" name="rsbrtitle" value="{SBR_PROJECT_SHORTTITLE}"/>
                            </div>
                        </div>
                    </div>
                    <div class="uk-width-medium-1-4">
                        <div class="uk-form-row">
                            {PHP.L.sbr_performer|cot_uk_label("$this", "uk-form-label uk-text-bold")}
                            <div class="uk-form-controls uk-text-truncate">
                                <!-- IF {PHP.uid} -->
                                <a class="uk-button uk-button-primary uk-button-large uk-width-1-1" href="{SBR_PERFORMER_DETAILSLINK}" target="blank">{SBR_PERFORMER_NICKNAME}</a>
                                <!-- ELSE -->
                                {SBRADD_FORM_PERFORMER}
                                <!-- ENDIF -->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="sbrstageslist">
            <!-- BEGIN: STAGE_ROW -->
            <div class="stageblock tp-box uk-margin-large-top<!-- IF {STAGEADD_FORM_NUM} == {PHP.stagescount} --> laststage<!-- ENDIF -->">
                <div class="uk-panel-body">    
                    <div class="removestage uk-float-right<!-- IF {STAGEADD_FORM_NUM} == 1 --> uk-hidden<!-- ENDIF -->">
                        <a href="" onclick="SbrRemoveStage(this); return false;"><i class="uk-icon-close uk-text-muted uk-text-large"></i></a>
                    </div>
                    <h3 class="uk-text-bold">{PHP.L.sbr_stage} № <span class="stagenum">{STAGEADD_FORM_NUM}</span></h3>
                    <div class="uk-form-row">
                        {PHP.L.sbr_stagetitle|cot_uk_label("$this", "uk-form-label uk-text-bold")}
                        <div class="uk-form-controls">
                           {STAGEADD_FORM_TITLE}
                        </div>
                    </div>
                    <div class="uk-form-row">
                        {PHP.L.sbr_stagetext|cot_uk_label("$this", "uk-form-label uk-text-bold")}
                        <div class="uk-form-controls">
                           {STAGEADD_FORM_TEXT}
                           <div class="stagefiles uk-margin-bottom">
                                <ul class="fileslist uk-list uk-list-striped">
                                </ul>
                                <a class="uk-button uk-button-small uk-button-success" href="javascript:void(0);" onclick="StageFileAdd(this); return false;">Прикрепить файл</a>
                            </div>
                        </div>
                    </div>
                    <div class="uk-grid" data-uk-grid-margin="">
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-form-label"><b>{PHP.L.sbr_stagecost} ({PHP.cfg.payments.valuta})</b></label>
                                <div class="uk-form-controls">
                                    <div class="stagecost">{STAGEADD_FORM_COST}</div>
                                    <!-- IF {PHP.cfg.plugin.sbr.mincost} > 0 -->
                                    <p class="uk-text-small uk-margin-remove uk-text-primary">{PHP.L.sbr_mincost} {PHP.cfg.plugin.sbr.mincost} {PHP.cfg.payments.valuta}</p>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                        <div class="uk-width-medium-1-2">
                            <div class="uk-form-row">
                                <label class="uk-form-label"><b>{PHP.L.sbr_stagedays} ({PHP|cot_declension(0, 'Days', true)})</b></label>
                                <div class="uk-form-controls">
                                    {STAGEADD_FORM_DAYS}
                                    <!-- IF {PHP.PHP.cfg.plugin.sbr.maxdays} > 0 -->
                                    <p class="uk-text-small">{PHP.L.sbr_maxdays} {PHP.cfg.plugin.sbr.maxdays|cot_declension($this, 'Days')}</p>
                                    <!-- ENDIF -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- END: STAGE_ROW -->
            <p>
                <a class="uk-button uk-button-small uk-button-primary" href="javascript:void(0);" onclick="SbrAddNewStage(); return false;"><i class="uk-icon-plus"></i> {PHP.L.sbr_addstagelink}</a>
            </p>
        </div>
        <div class="tp-box uk-margin-large-bottom">
            <div class="uk-panel-body">
                <div class="uk-text-center">
                <h3 class="tp-text-transform uk-text-bold uk-text-success">{PHP.L.sbr_calc_title}</h3>
                </div>
                <hr />
                <div class="uk-overflow-container">
                    <table class="uk-table uk-table-hover">
                        <tr class="uk-text-success">
                            <td>{PHP.L.sbr_calc_summ|cot_uk_bold("$this")}</td>
                            <td class="uk-text-right"><span id="summ">0</span> {PHP.cfg.payments.valuta}</td>
                        </tr>
                        <tr class="uk-text-primary">
                            <td>{PHP.L.sbr_calc_tax|cot_uk_bold("$this")}</td>
                            <td class="uk-text-right"><span id="taxsumm">0</span> {PHP.cfg.payments.valuta}</td>
                        </tr>
                        <tr class="uk-text-danger">
                            <td>{PHP.L.sbr_calc_total|cot_uk_bold("$this")}</td>
                            <td class="uk-text-right"><span id="total">0</span> {PHP.cfg.payments.valuta}</td>
                        </tr>
                    </table>
                </div>
                <div class="uk-text-center uk-margin-large-top">         
                <button class="uk-button uk-button-large uk-button-success" type="submit" name="rsbrsubmit" class="btn btn-success" value="send">{PHP.L.sbr_sendtoconfirm}</button>
                </div>
            </div>
        </div>
        </form>  
    </div>
</div>

<script>
	$().ready(function() {
		$('#sbrform').bind('change click keyup', function (){
			var stagescost = 0;
			var taxsumm = 0;
			var tax = {PHP.cfg.plugin.sbr.tax};
			$('.stagecost input').each(function(i) {
				var stagecost = parseInt($(this).val());
				stagecost = (stagecost > 0) ? stagecost : 0;
				stagescost += stagecost;
			});
			
			if(tax > 0)
			{
				taxsumm = stagescost*tax/100;
			}
			$('#summ').html(stagescost);
			$('#taxsumm').html(taxsumm);
			$('#total').html(stagescost + taxsumm);
		});
	});

	function SbrRemoveStage(obj)
	{
		$(obj).parent().parent().remove();
		$('.stageblock').removeClass('laststage');
		$('.stageblock:last').addClass('laststage');
		
		var laststagenum = 0;
		$('.stageblock').each(function(i, elem) {
			laststagenum++;
			$(elem).children().children('.stagenum').text(laststagenum);
			
			$(elem).find('input, textarea, select').each(function(j) {
				var newfieldname = $(this).attr('name').replace(/(.*\[)(\d+)(\])/, function(f, p1, p2, p3) {
					return p1 + laststagenum + p3;
				});
				$(this).attr('name', newfieldname);
			});
		});
		$('input[name="stagescount"]').val(laststagenum);
	}

	function SbrAddNewStage()
	{
		var laststagenum = $('.stagenum:last').text();
		$('.laststage').clone().insertAfter('.laststage').show();	
		$('.stageblock').removeClass('laststage');
		$('.stageblock:last').addClass('laststage');
		$('.laststage').find('input').val('');
		$('.laststage').find('textarea').val('');
		$('.laststage').find('.fileslist').html('');
		$('.laststage').find('.error').addClass('hidden');
		laststagenum++;
		$('input[name="stagescount"]').val(laststagenum);
		$('.stagenum:last').text(laststagenum);
		$('.removestage:last').removeClass('hidden');

		$('.laststage').find('input, textarea, select').each(function(j) {
			var newfieldname = $(this).attr('name').replace(/(.*\[)(\d+)(\])/, function(f, p1, p2, p3) {
				return p1 + laststagenum + p3;
			});
			$(this).attr('name', newfieldname);
		});

	}
	
	function StageFileAdd(obj)
	{
		var stagenum = $(obj).closest('.stageblock').find('.stagenum').text();
		$(obj).parent().children('.fileslist').append('<li>\n\
			<a href="javascript:void(0);" onclick="StageFileRemove(this); return false;" class="uk-float-right"><i class="uk-icon-close uk-text-muted uk-text-large"></i></a>\n\
			<input type="file" name="rstagefiles[' + stagenum + '][]" />\n\
		</li>');
	}
	
	function StageFileRemove(obj)
	{
		$(obj).parent().remove();
	}

</script>

<!-- END: MAIN -->