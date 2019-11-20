<!-- BEGIN: MAIN --> 
<!-- IF {PHP.usr.id} == 0 -->
<script type="text/javascript">
$(location).attr('href',"{PHP|cot_url('login')}");
</script>
<!-- ELSE -->       
<div class="uk-text-center uk-flex uk-flex-center uk-flex-middle" style="min-height: 180px; background-image: url('themes/{PHP.theme}/img/tp-header-marget-bg.png'); background-attachment: fixed;">
    <h1 class="tp-text-transform">«PrimeBox» - ваши баннеры</h1>
</div>
 
  <!-- BEGIN: EDIT -->
<div class="uk-block uk-block-muted">
	<div class="uk-container uk-container-center uk-margin-large-top">
		<div class="uk-panel uk-panel-box">
			<div class="tp-panel-body">
    <div class="uk-width-medium-1-1">
        <h2 class="uk-h1 tp-text-transform uk-text-success uk-margin-bottom">«PrimeBox» - {PAGE_TITLE}</h2>
		<hr class="uk-article-divider">
    </div>

		{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
				  <form action="{PRIMEBOX_FORM_ID|cot_url('plug', 'e=primebox&a=edit&act=save&id='$this)}" method="POST" ENCTYPE="multipart/form-data" class="form-horizontal">
						<div class="uk-margin-top">
							<div class="uk-form-row">
								<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.Title}:</span></label>
								<div class="uk-form-controls">
									{PRIMEBOX_FORM_TITLE}
								</div>
							</div>
						</div>
						<!-- IF {PHP.primebox.item_expire} == 0 AND {PHP.primebox.item_paused} == 0 -->
						<div class="uk-margin-top">
							<div class="uk-grid" data-uk-grid-margin="">
								<div class="uk-width-medium-1-2">
									<div class="uk-form-row">
										<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_place}:</span></label>
										<div class="uk-form-controls">
											{PRIMEBOX_FORM_CATEGORY}
										</div>
									</div>
								</div>
								
								<div class="uk-width-medium-1-2">
									<div class="uk-form-row">
										<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_expire_time}:</span></label>
										<div class="uk-form-controls">
											{PRIMEBOX_FORM_PERIOD}
										</div>
									</div>
								</div>
							</div>
						</div>
						<!-- ENDIF -->
						<div class="uk-margin-top">
							<div class="uk-form-row">
								<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.Image}:</span></label>
								<div class="uk-form-controls">
								<img src="{PRIMEBOX_FORM_IMAGE}" class="uk-width-medium-1-4" />
									<p>{PRIMEBOX_FORM_FILE}</p>
									
								</div>
							</div>
						</div>
						<div class="uk-margin-top">
							<div class="uk-form-row">
								<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_alt}:</span></label>
								<div class="uk-form-controls">
									{PRIMEBOX_FORM_ALT}
								</div>
							</div>
						</div>
						<div class="uk-margin-top">
							<div class="uk-form-row">
								<span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_click_url}:</span>
								<div class="uk-form-controls">
									<div class="tp-input-group">
									<span class="tp-input-group-addon uk-text-small">по шаблону: http://mysite.com
									</span>
									{PRIMEBOX_FORM_CLICKURL}
									</div>
								</div>
							</div>
						</div>
						<div class="uk-margin-top">
							<div class="uk-form-row">
								<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.Description}:</span></label>
								<div class="uk-form-controls">
									{PRIMEBOX_FORM_DESCRIPTION}
								</div>
							</div>
						</div>
						<!-- BEGIN: EXTRAFLD -->
						<div class="uk-margin-top">
							<div class="uk-form-row">
								<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PRIMEBOX_FORM_EXTRAFLD_TITLE}:</span></label>
								<div class="uk-form-controls">
									{PRIMEBOX_FORM_EXTRAFLD}
								</div>
							</div>
						</div>
						<!-- END: EXTRAFLD -->
			<div class="uk-container-center uk-margin-top uk-width-medium-1-4">
				<button class="uk-button uk-button-success uk-button-large uk-width-medium-1-1">{PHP.L.Save}</button>
			</div>
				  </form>
			</div>
		</div>
    </div>
 </div>
  <!-- END: EDIT -->
                        
  <!-- BEGIN: SHOW -->
<div class="uk-block uk-block-muted">
<div class="uk-container uk-container-center uk-margin-large-top">
    <div class="uk-width-medium-1-2">
        <h2 class="uk-h1 tp-text-transform uk-text-success uk-margin-bottom">«PrimeBox» - ваши баннеры</h2>
		<hr class="uk-article-divider">
    </div>
	<div>
    <!-- IF {PRIMEBOX_COUNT} == 0 -->
      <p>Активных primebox нет.</p>
    <!-- ENDIF -->
<div class="uk-grid-width-small-1-1 uk-margin-large-top uk-margin-large-bottom" data-uk-grid="{gutter: 30}">            
    <!-- BEGIN: PRIMEBOX_ROW -->
		<div>
                <div class="uk-panel uk-panel-box">
                    <div class="tp-panel-body">
				<div class="uk-grid" data-uk-grid-margin=""> 
					<div class="uk-width-medium-1-4 uk-position-relative">
						<!-- IF {PRIMEBOX_ROW_IMAGE} -->    
						<img alt="{LIST_ROW_SHORTTITLE}" src="{PRIMEBOX_ROW_IMAGE}" width="402" height="268" />
						<!-- ENDIF -->
						<div class="uk-grid">
							<div class="uk-width-medium-1-2">
								<div class="uk-margin-small-top">
									<a class="uk-width-medium-1-1 uk-button uk-button-primary tp-text-transform" href="{PRIMEBOX_ROW_EDIT_URL}">{PHP.L.Edit}</a>
								</div>
										</div>
										<div class="uk-width-medium-1-2">
								<div class="uk-margin-small-top">
									<a class="uk-width-medium-1-1 uk-button uk-button-danger tp-text-transform" href="{PRIMEBOX_ROW_DEL_URL}">{PHP.L.Delete}</a>
								</div>
							</div>
						</div>
					</div>
					<div class="uk-width-medium-3-4">
						
							<h2>{PRIMEBOX_ROW_TITLE}</h2>
							<hr class="uk-margin-remove" />

                            <dl class="uk-description-list-horizontal">
                                <dt class="uk-text-bold uk-text-large uk-text-danger">Место размещения</dt>
                                <dd class="ti-linck-black">{PRIMEBOX_ROW_CATEGORY_TITLE}</dd>
								<hr />
                                <dt class="uk-text-bold uk-text-large uk-text-danger">Описание</dt>
                                <dd class="ti-linck-black">{PRIMEBOX_ROW_DESCRIPTION}</dd>
								<hr />
								<!-- IF {PRIMEBOX_ROW_ALT} -->
                                <dt class="uk-text-bold uk-text-large uk-text-danger">Alt текст</dt>
                                <dd class="ti-linck-black">{PRIMEBOX_ROW_ALT}</dd>
								<hr />
								<!-- ENDIF -->
                                <dt class="uk-text-bold uk-text-large uk-text-danger">Url для перехода</dt>
                                <dd class="ti-linck-black">{PRIMEBOX_ROW_URL}</dd>
								<hr />
                                <dt class="uk-text-bold uk-text-large uk-text-danger">Срок размещения</dt>
                                <dd>
								 <span class="uk-text-bold uk-text-large uk-text-warning">{PRIMEBOX_ROW_PERIOD}</span>
								   <!-- IF {PRIMEBOX_ROW_EXPIRE} == 0 AND {PRIMEBOX_ROW_PAUSED} == 0 -->
									<a class="btn btn-warning btn-sm" href="{PRIMEBOX_ROW_ID|cot_url('plug', 'e=primebox&act=buy&id='$this)}">Оплатить размещение</a>
								   <!-- ELSE -->
									 <!-- IF {PRIMEBOX_ROW_EXPIRE} > {PHP.sys.now} -->
									  Размещен до <b>{PRIMEBOX_ROW_EXPIRE|cot_date('d.m.Y',$this)}</b>
									   <br>
									  <a href="{PRIMEBOX_ROW_ID|cot_url('plug', 'e=primebox&act=paused&id='$this)}">Приостановить показ</a>
									 <!-- ELSE -->
									   <!-- IF {PRIMEBOX_ROW_EXPIRE} > 0 -->
										Завершен <b>{PRIMEBOX_ROW_EXPIRE|cot_date('d.m.Y',$this)}</b>
									   <!-- ENDIF -->
									   <!-- IF {PRIMEBOX_ROW_PAUSED} > 0 -->
										Остановлен <b>(Остаток {PRIMEBOX_ROW_PAUSED_TIME})</b>
										 <br>
										<a href="{PRIMEBOX_ROW_ID|cot_url('plug', 'e=primebox&act=unpaused&id='$this)}">Возобновить показ</a>
									   <!-- ENDIF -->                            
									 <!-- ENDIF -->
								   <!-- ENDIF -->
								</dd>
								<hr />
								<!-- IF {PRIMEBOX_ROW_SHOWS} > 0 -->
                                <dt class="uk-text-bold uk-text-large uk-text-danger">Показов: </dt>
                                <dd class="ti-linck-black">{PRIMEBOX_ROW_SHOWS}</dd>
								<hr />
								<!-- ENDIF -->
								<!-- IF {PRIMEBOX_ROW_CLICKS} > 0 -->
                                <dt class="uk-text-bold uk-text-large uk-text-danger">Кликов: </dt>
                                <dd class="ti-linck-black">{PRIMEBOX_ROW_CLICKS}</dd>
								<!-- ENDIF -->
                            </dl>

						
					</div>
				</div>
			</div>
		</div>	 
		</div>	      
      <!-- END: PRIMEBOX_ROW -->
  </div>  </div>
</div>
</div> 
<div class="uk-block uk-block-muted">
<div class="uk-container uk-container-center uk-margin-large-top">



      <!-- <a href="{PHP|cot_url('plug', 'e=primebox')}#create" data-toggle="tab" class="btn btn-success pull-right">Создать</a> -->

		 {FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
                <div class="uk-panel uk-panel-box  ">
                    <div class="tp-panel-body">
    <div class="uk-width-medium-1-2">
        <h2 class="uk-h1 tp-text-transform uk-text-success uk-margin-bottom">«PrimeBox» - {PAGE_TITLE}</h2>
    </div>
        <form  class="uk-form uk-form-stacked" action="{PHP|cot_url('plug', 'e=primebox&a=edit&act=add')}" method="POST" ENCTYPE="multipart/form-data">
			<div class="uk-margin-top">
				<div class="uk-form-row">
					<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.Title}:</span></label>
					<div class="uk-form-controls">
						{PRIMEBOX_FORM_TITLE}
					</div>
				</div>
			</div>
			<div class="uk-margin-top">
				<div class="uk-grid" data-uk-grid-margin="">
					<div class="uk-width-medium-1-2">
						<div class="uk-form-row">
							<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_place}:</span></label>
							<div class="uk-form-controls">
								{PRIMEBOX_FORM_CATEGORY}
							</div>
						</div>
					</div>
					
					<div class="uk-width-medium-1-2">
						<div class="uk-form-row">
							<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_expire_time}:</span></label>
							<div class="uk-form-controls">
								{PRIMEBOX_FORM_PERIOD}
							</div>
						</div>
					</div>
				</div>
			</div>
			<div class="uk-margin-top">
				<div class="uk-form-row">
					<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.Image}:</span></label>
					<div class="uk-form-controls">
						{PRIMEBOX_FORM_FILE}
						
					</div>
				</div>
			</div>
			
			<div class="uk-margin-top">
				<div class="uk-form-row">
					<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_alt}:</span></label>
					<div class="uk-form-controls">
						{PRIMEBOX_FORM_ALT}
					</div>
				</div>
			</div>
			<div class="uk-margin-top">
				<div class="uk-form-row">
					<span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.primebox_click_url}:</span>
					<div class="uk-form-controls">
						<div class="tp-input-group">
						<span class="tp-input-group-addon uk-text-small">по шаблону: http://mysite.com
						</span>
						{PRIMEBOX_FORM_CLICKURL}
						</div>
					</div>
				</div>
			</div>
			<div class="uk-margin-top">
				<div class="uk-form-row">
					<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PHP.L.Description}:</span></label>
					<div class="uk-form-controls">
						{PRIMEBOX_FORM_DESCRIPTION}
					</div>
				</div>
			</div>
			<!-- BEGIN: EXTRAFLD -->
			<div class="uk-margin-top">
				<div class="uk-form-row">
					<label class="uk-form-label"><span class="tp-text-transform uk-text-bold uk-text-large uk-text-primary">{PRIMEBOX_FORM_EXTRAFLD_TITLE}:</span></label>
					<div class="uk-form-controls">
						{PRIMEBOX_FORM_EXTRAFLD}
					</div>
				</div>
			</div>
			<!-- END: EXTRAFLD -->
			<div class="uk-container-center uk-margin-top uk-width-medium-1-4">
				<button class="uk-button uk-button-success uk-button-large uk-width-medium-1-1">{PHP.L.primebox_publish}</button>
			</div>
	    </form>
     </div>
    </div>
</div>
</div> 
              
    <!-- END: SHOW -->



<!-- ENDIF -->
<!-- END: MAIN -->