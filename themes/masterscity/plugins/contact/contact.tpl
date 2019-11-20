<!-- BEGIN: MAIN -->
<!-- IF {PHP.cfg.plugin.contact.map} -->
<p>{PHP.cfg.plugin.contact.map}</p>
<script src="https://api-maps.yandex.ru/2.1/?lang=ru_RU" type="text/javascript"></script>
<script type="text/javascript">
    ymaps.ready(init);
    var myMap, 
        myPlacemark;

    function init(){ 
        myMap = new ymaps.Map("map", {
            center: [55.76, 37.64],
            zoom: 7
        }); 

        myPlacemark = new ymaps.Placemark([55.76, 37.64], {
            hintContent: 'Москва!',
            balloonContent: 'Столица России'
        });

        myMap.geoObjects.add(myPlacemark);
    }
</script>
<!-- ENDIF -->

<div class="uk-container-center uk-container uk-margin-large-top uk-margin-large-bottom">
    <div class="uk-grid" data-uk-grid-margin="">
        <div class="uk-width-medium-2-4">
            {FILE "{PHP.cfg.themes_dir}/{PHP.usr.theme}/warnings.tpl"}
            <!-- BEGIN: FORM -->
            <form class="uk-form uk-form-stacked" action="{CONTACT_FORM_SEND}" method="post" name="contact_form" enctype="multipart/form-data">
            <div class="uk-grid" data-uk-grid-margin>
                <div class="uk-width-medium-1-1">
                    {PHP.L.Username|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-icon">
                        {PHP|cot_uk_icon("uk-icon-user")}
                        {CONTACT_FORM_AUTHOR}
                    </div>
                </div>
                <div class="uk-width-medium-1-1">
                    {PHP.L.Email|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-icon">
                        {PHP|cot_uk_icon("uk-icon-envelope")}
                        {CONTACT_FORM_EMAIL}
                    </div>
                </div>
                <div class="uk-width-medium-1-1">
                    {PHP.L.Subject|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-icon">
                         {PHP|cot_uk_icon("uk-icon-ticket")}
                        {CONTACT_FORM_SUBJECT}
                    </div>
                </div>
                <div class="uk-width-medium-1-1">
                    <div class="uk-form-row">
                        {CONTACT_FORM_TEXT}
                    </div>
                </div>
                <!-- BEGIN: EXTRAFLD -->
                <div class="uk-width-medium-1-1">
                    {CONTACT_FORM_EXTRAFLD_TITLE|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-row">
                        {CONTACT_FORM_EXTRAFLD}
                    </div>
                </div>
                <!-- END: EXTRAFLD -->
                <!-- BEGIN: CAPTCHA -->
                <div class="uk-width-medium-1-1">
                    {CONTACT_FORM_VERIFY_IMG|cot_uk_label("$this", "uk-form-label")}
                    <div class="uk-form-row">
                        {CONTACT_FORM_VERIFY}
                    </div>
                </div>
                <!-- END: CAPTCHA -->
                <div class="uk-container-center">
                   <button class="uk-button uk-button-large uk-button-success uk-width-1-1" type="submit">{PHP.L.Submit}</button>
                </div>
            </div>
            </form>
            <!-- END: FORM -->
        </div>
        <div class="uk-width-medium-2-4">
            <!-- IF {PHP.cfg.plugin.contact.about} -->
            <p>{PHP.cfg.plugin.contact.about}</p>
            <!-- ENDIF -->
        </div>
    </div>
</div>
<!-- END: MAIN -->