<!-- BEGIN: MAIN -->
<div class="uk-cover-background uk-position-relative" style="min-height: 400px; background-image: url({PHP.cfg.index.mainbannerimage});">
	<!--<img class="uk-invisible" src="themes/{PHP.theme}/img/tp-header-bg-1.jpg" alt="" width="" height="540">-->
	<div class="uk-position-cover uk-padding-large uk-text-center uk-flex uk-flex-center uk-flex-top uk-margin-large-top">
		<div class="uk-animation-scale-up" style="">

		<h1 class="uk-main-banner tp-text-transform uk-text-bold uk-text-contrast uk-margin-large-left uk-margin-large-right">{PHP.cfg.index.mainbannertitle}</h1>
		<h4 class="tp-text-transform uk-text-bold uk-text-contrast uk-margin-large-left uk-margin-large-right">{PHP.cfg.index.mainbannersubtitle}</h4>

		</div>
	</div>
	<div class="uk-visible-small uk-position-cover uk-padding-large uk-text-center uk-flex uk-flex-center uk-flex-top uk-margin-large-top">
		<div class="uk-animation-scale-up uk-padding-large tp-text-transform uk-text-bold" style="background: rgba(108, 190, 3, 1); opacity: 0; font-size: 20px; line-height: 25px; color: #fff; padding: 5px;"></div>
	</div>
  
</div>
    <div class="uk-block uk-visible-small" style="background: rgba(108, 190, 3, 0.90);">
        <div class="uk-container uk-container-center">
            <div class="uk-grid" data-uk-grid-margin="">
                <div class="uk-width-medium-3-4">

					<h5 class="uk-visible-small tp-text-transform uk-text-bold uk-text-contrast uk-text-center">L’INSTITUT CHOISEUL</h5>
					<p class="uk-visible-small uk-text-bold uk-text-contrast">L’Institut Choiseul est un think tank indépendant dédié à l'analyse des grands enjeux économiques, politiques et sociétaux ainsi qu'à ceux associés aux défis d'une bonne gouvernance mondiale. L’Institut Choiseul est un think tank indépendant dédié à l'analyse des grands enjeux économiques, politiques et sociétaux ainsi qu'à ceux associés aux défis d'une bonne gouvernance mondiale.</p>
                </div>
                <div class="uk-width-medium-1-4 uk-margin-small-top">
                    <!-- IF {PHP.usr.maingrp} == 7 -->
                    <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-button-large uk-width-1-1" href="{PHP|cot_url('projects', 'm=add')}">Узнать подробнее</a>
                    <!-- ENDIF -->
					<!-- IF {PHP.usr.maingrp} == 4 OR {PHP.usr.maingrp} == 5 OR {PHP.usr.maingrp} == 8 -->
					<a class="tp-button uk-button-transparent tp-text-transform uk-button uk-button-large uk-width-1-1" href="{PHP|cot_url('market', 'm=add')}">Узнать подробнее</a>
					<!-- ENDIF -->
                    <!-- IF {PHP.usr.id} == 0 -->
                   <a class="tp-button uk-button-transparent tp-text-transform uk-button uk-button-large uk-width-1-1" href="{PHP|cot_url('projects', 'm=add')}">Узнать подробнее</a>
                    <!-- ENDIF -->
                </div>
            </div>
        </div>
    </div>
	<!-- {PHP.box1} -->
<div class="uk-block-muted">
  <div class="uk-block tp-bottom-bloc uk-hidden-small uk-container-center uk-margin-large-bottom">
        <div class="uk-container uk-container-center">
            <div class="uk-grid" data-uk-grid-margin="">
                <div class="uk-width-medium-4-4">
                    <h2 class="uk-text-center uk-hidden-small tp-text-transform uk-text-bold uk-text-contrast">L’INSTITUT CHOISEUL</h2>
					<p class="uk-hidden-small uk-text-bold uk-text-contrast">L’Institut Choiseul est un think tank indépendant dédié à l'analyse des grands enjeux économiques, politiques et sociétaux ainsi qu'à ceux associés aux défis d'une bonne gouvernance mondiale. L’Institut Choiseul est un think tank indépendant dédié à l'analyse des grands enjeux économiques, politiques et sociétaux ainsi qu'à ceux associés aux défis d'une bonne gouvernance mondiale.</p>
					<p class="uk-hidden-small uk-text-bold uk-text-contrast">L’Institut Choiseul est un think tank indépendant dédié à l'analyse des grands enjeux économiques, politiques et sociétaux ainsi qu'à ceux associés aux défis d'une bonne gouvernance mondiale. L’Institut Choiseul est un think tank indépendant dédié à l'analyse des grands enjeux économiques, politiques et sociétaux ainsi qu'à ceux associés aux défis d'une bonne gouvernance mondiale.</p>
                
				  <p class="uk-text-center uk-banner-button"><a class="tp-button tp-text-transform uk-button uk-width-1-3" href="{PHP.cot_groups.8.alias|cot_url('users', 'm=register&usergroup='$this)}">Узнать больше</a></p>
				
				</div>
               
            </div>
        </div>
    </div>
	
	
	 <div class="uk-container uk-container-center uk-letters-container">
	 <div class="word-first tp-text-transform">Погружай</div>
	 <div class="word-second tp-text-transform">себя</div>
	 </div>
	
	
    <div class="uk-container uk-container-center uk-margin-large-top">
	 <h2 class="uk-h2 uk-text-main uk-text-bold uk-text-center tp-text-transform">Сервисы</h2>
        <div class="uk-grid uk-margin-large-top" data-uk-grid-margin="">
            <!-- BLOCK 1 -->
          <div class="serv uk-width-medium-1-2 uk-text-center uk-cover-container">
            <a href="#" class="uk-link uk-image-link-service">
			<div class="uk-bg-cover-service" style="min-height:330px; position: relative; background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTgSCy-V9lo0mWHkPfmJi1hpf6Dsc1gKq44dNimooz93RwjWLbd'); background-attachment: fixed;">
              <div class="uk-margin uk-container uk-container-center">
                <div class="uk-grid uk-margin-bottom" data-uk-grid-margin="">
                  <div class="uk-width-medium-4-4 uk-margin-large-top">
             <div class="uk-text-contrast uk-h2 tp-text-transform uk-image-title-service  uk-margin-large-bottom">Услуги</div>
                <p class="uk-text-contrast text-service uk-text-large">   
                Здесь выводиться описание каждой категории который прописывается в настройках админ панели, когда строиться структура сайта.
                </p>
                  </div>
               </div>
             </div>
            </div>
			</a>
            </div>
            <!-- END BLOCK 1 -->
            
            <!-- BLOCK 2 -->
            <div class="turn uk-width-medium-1-2 uk-text-center uk-cover-container">
             <a href="#" class="uk-image-link-turn">
			<div class="uk-bg-cover-turn" style="min-height:330px; position: relative; background-image: url('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTM0WkNiLiodt7HtXQ8hh121ZfKF2rqcmD9RtnhlGGe11QC68tb'); background-attachment: fixed;">
              <div class="uk-margin uk-container uk-container-center">
                <div class="uk-grid uk-margin-bottom" data-uk-grid-margin="">
                   <div class="uk-width-medium-4-4 uk-margin-large-top">
             <div class="uk-text-contrast uk-h2 tp-text-transform uk-image-title-turn uk-margin-large-bottom">Очередь</div>
                <p class="uk-text-contrast text-turn uk-text-large">   
                Здесь выводиться описание каждой категории который прописывается в настройках админ панели, когда строиться структура сайта.
                </p>
                  </div>
               </div>
             </div>
            </div>
			</a>
            </div>
          <!-- END BLOCK 2 -->
            
        </div>
    </div>

</div>







<div class="uk-container uk-container-center uk-margin-large-top">
            
</div>

<div class="uk-container uk-container-center uk-margin-large-top">
            
</div>



<!-- IF {PHP.cot_modules.projects} AND {PHP.usr.maingrp} == 7 -->
<!-- IF {PHP.usr.auth_write} -->
<!-- <a class="tp-add" href="{PHP|cot_url('projects', 'm=add')}"><i class="uk-icon-pencil"></i></a> -->
<!-- ENDIF -->
<!-- ENDIF -->
<!-- <div class="uk-block uk-block-muted">
    <div class="uk-container uk-container-center uk-margin-bottom">
        <ul class="tp-list uk-list uk-column-1-1 uk-column-medium-1-2" data-uk-nav="{multiple:true}">
            {PHP|cot_build_structure_projects_tree('', '', 0, 'indexbottom')}

        </ul>
    </div>
</div> -->



<!-- END: MAIN -->
