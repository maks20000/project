<!-- BEGIN: MAIN -->


<div class="uk-container uk-container-center uk-margin-large-top">
<div class="breadcrumb">{TICKETADD_TITLE}</div>
<h1>{TICKETADD_SUBTITLE}</h1>
{FILE "{PHP.cfg.themes_dir}/{PHP.cfg.defaulttheme}/warnings.tpl"}
<form action="{TICKETADD_FORM_SEND}" enctype="multipart/form-data" method="post" name="ticketform" id="ticketform" class="form-horizontal">
	<p>{TICKETADD_FORM_TITLE}</p>
	<p>{TICKETADD_FORM_TEXT}<!--{TICKETADD_FORM_MYPFS}--></p>
	<!-- IF {PHP.usr.id} == 0 -->
	<b>{PHP.L.support_newticket_name}:</b>
	<p>{TICKETADD_FORM_NAME}</p>
	<b>{PHP.L.support_newticket_email}:</b>
	<p>{TICKETADD_FORM_EMAIL}</p>
	<!-- ENDIF -->
	<p>
	<button class="uk-button uk-button-success uk-text-center uk-width-medium-1-4" href="{PHP|cot_url('support', 'm=newticket')}">{PHP.L.support_tickets_add_button}</a></button>
	
	</p>
</form>

</div>	
<!-- END: MAIN -->