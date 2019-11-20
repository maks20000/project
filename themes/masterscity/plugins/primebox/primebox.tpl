<!-- BEGIN: MAIN -->
<div class="uk-slidenav-position" data-uk-slider="{infinite: false}">
    <div class="uk-slider-container uk-margin-left uk-margin-right">
        <ul class="uk-slider uk-grid uk-grid-width-medium-1-4">
		<!-- BEGIN: ROW -->
            <li>
                <div class="uk-panel uk-panel-box">
                    <div class="tp-panel-body">
						<!-- IF {PRIMEBOX_ROW_IMAGE} -->
						  <a href="{PRIMEBOX_ROW_CLICK_URL}"><img src="{PRIMEBOX_ROW_IMAGE}" class="width100" alt="{PRIMEBOX_ROW_ALT}"/></a>
						
						  <h4><a href="{PRIMEBOX_ROW_CLICK_URL}">{PRIMEBOX_ROW_TITLE}</a></h4>
						  <div class="textcenter">
							{PRIMEBOX_ROW_DESCRIPTION}
						  </div>
						<!-- ENDIF -->
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
                    <div class="uk-margin-top uk-text-center">
                        <a class="uk-button uk-button-primary" href="{PHP|cot_url('plug', 'e=primebox')}">Купить Prime Box</a>
                    </div>	
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
<!-- IF {PHP.usr.id} > 0 -->
<div class="uk-container uk-container-center">

        <p class="uk-text-center">

            <a class="uk-button uk-button-success uk-margin-left" href="{PHP|cot_url('plug', 'e=primebox')}">Купить Prime Box</a>
        </p>
</div>
<!-- ENDIF -->
<!-- END: MAIN -->
