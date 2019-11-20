<!-- BEGIN: MAIN -->
<div class="uk-slidenav-position" data-uk-slider="{infinite: false}">
    <div class="uk-slider-container uk-margin-left uk-margin-right">
        <ul class="uk-slider uk-grid uk-grid-width-medium-1-4">
		<!-- BEGIN: ROW -->
            <li>
                <div class="uk-panel uk-panel-box uk-padding-remove">
                    <div class="tp-panel-body">
						<!-- IF {PRIMEBOX_ROW_IMAGE} -->
						<figure class="uk-overlay uk-overlay-hover">
							<img src="{PRIMEBOX_ROW_IMAGE}" class="uk-overlay-spin" alt="{PRIMEBOX_ROW_ALT}"/>
							<div class="uk-overlay-panel uk-ignore uk-flex uk-flex-center uk-flex-middle uk-text-center uk-overlay-background-dark uk-overlay-spin"><h3 class="uk-text-contrast uk-h2">{PRIMEBOX_ROW_TITLE|cot_string_truncate($this, 25, true, false, '...')}</h3></div>
							<a class="uk-position-cover" title="{PRIMEBOX_ROW_TITLE}" target="_blank" href="{PRIMEBOX_ROW_CLICK_URL}"></a>
						</figure>
						<!-- ENDIF -->
						<div class="uk-margin uk-margin-left">
						  <h4><a target="_blank" href="{PRIMEBOX_ROW_CLICK_URL}">{PRIMEBOX_ROW_TITLE}</a></h4>
						  <p data-uk-margin>
							{PRIMEBOX_ROW_DESCRIPTION}</p>
						  </div>
						
                    </div>
                </div>
            </li>
		<!-- END: ROW -->
            <!-- IF {PRIMEBOX_COUNT} <= 4 -->
            <!-- FOR {INDEX} IN {PHP|range(1, 4)} -->
            <!-- IF 4 - {INDEX} >= {PRIMEBOX_COUNT} -->
            <li>
                <div class="uk-panel uk-panel-box">
                    <div class="tp-panel-body">
						
						  <a href="{PHP|cot_url('plug', 'e=primebox')}"><img src="/themes/{PHP.theme}/plugins/primebox/primebox.jpg" class="" alt="{PRIMEBOX_ROW_ALT}"/></a>
						
						  <h3 class="tp-text-transform uk-text-center uk-text-bold">Prime Box свободен</h3>
						  <div class="textcenter">
							Prime Box - место для вашей рекламы на премиум позициях страниц нашего сайта. Здесь можна разместить свою картинку для баннера, свой текст и ссылку на свой сайт или другой интернет-ресурс для прамого перехода. Также можна видеть статистику показов и кликов по вашему Prime Box
						  </div>
					
                    </div>
					<!-- IF {PHP.usr.id} == 0 -->
                    <div class="uk-margin-top uk-text-center">
                        <a class="uk-button uk-button-primary" data-uk-modal="" href="#log">Купить Prime Box</a>
                    </div>
					<!-- ENDIF -->
					<!-- IF {PHP.usr.id} > 0 -->
                    <div class="uk-margin-top uk-text-center">
                        <a class="uk-button uk-button-success" href="{PHP|cot_url('plug', 'e=primebox')}">Купить Prime Box</a>
                    </div>
					<!-- ENDIF -->						
                </div>
            </li>
            <!-- ENDIF -->
            <!-- ENDFOR -->
            <!-- ENDIF -->
        </ul>
    </div>
    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-previous" data-uk-slider-item="previous"></a>
    <a href="#" class="uk-slidenav uk-slidenav-contrast uk-slidenav-next" data-uk-slider-item="next"></a>
</div>
<!-- END: MAIN -->
