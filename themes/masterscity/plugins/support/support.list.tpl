<!-- BEGIN: MAIN -->
<div class="tp-block tp-border-top">
    <div class="uk-container uk-container-center uk-margin-top">
        <ul class="uk-breadcrumb">
            
            <li class="uk-active"><h1>{PHP.L.support_tickets}</h1></li>
        </ul>
    </div>
	<div class="uk-container uk-container-center uk-width-medium-1-1">
	     <div class="uk-alert uk-alert-warning">
            Если Ваш вопрос технического плана, то желательно предоставить более подробную информацию о проблеме, такую как, например, не принимается заказ или при каких обстоятельствах проявляются ошибки. Данная информация значительно ускорит время ответа и избавит от лишних вопросов.
  </div>
  <br>
			<!-- IF {PHP.tickets_open} == 0 OR !{PHP.cfg.plugin.support.onlyoneticket} -->
<a class="uk-button uk-button-info uk-margin-bottom uk-width-medium-1-4" href="{PHP|cot_url('support', 'm=newticket')}">{PHP.L.support_tickets_add_button}</a>

<!-- ENDIF -->
  </div>
  
</div>


<div class="uk-container uk-container-center uk-margin-large-top">
    <div class="uk-grid" data-uk-tab>
         <div class="uk-tab-center">
            <ul class="uk-tab">
	<li<!-- IF {PHP.status} == 'open' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('support','status=open')}">{PHP.L.support_tickets_open}</a></li>
	<li<!-- IF {PHP.status} == 'closed' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('support','status=closed')}">Закрытые</a></li>	
	<li<!-- IF {PHP.status} == 'all' --> class="active"<!-- ENDIF -->><a href="{PHP|cot_url('support', 'status=all')}">{PHP.L.All}</a></li>
            </ul>
        </div>
 </div>     
<div class="uk-grid uk-text-muted tp-text-transform uk-margin-bottom" data-uk-grid-margin>	

	
            <div class="uk-width-medium-1-10">
                ID
            </div>
            <div class="uk-width-medium-1-2">
                Заголовок обращения
            </div>
            <div class="uk-width-medium-1-5">
            <!-- IF {PHP.usr.isadmin} -->
			Автор
			<!-- ENDIF -->
            </div>
            <div class="uk-width-medium-1-5">
               Статус
            </div>


  
</div>             <!-- IF {PAGENAV_COUNT} > 0 -->

		<!-- BEGIN: TICKET_ROW -->
<div class="uk-grid uk-text-muted tp-text-transform uk-margin-bottom" data-uk-grid-margin>	
        <div class="uk-width-medium-1-10">

                    <h4>&nbsp;&nbsp;#{TICKET_ROW_ID}</h4>


        </div>
		<div class="uk-width-medium-1-2">

                    <h4 class="uk-margin-small-top uk-text-break"><a href="{TICKET_ROW_URL}">{TICKET_ROW_TITLE} ({TICKET_ROW_COUNT})</a></h4>


        </div>
        <div class="uk-width-medium-1-5">
			<!-- IF {PHP.usr.isadmin} -->
			<td class="width15 tp-family-poiret uk-text-muted uk-text-bold uk-text-truncate uk-margin-small-top" style="text-align: center;"><!-- IF {TICKET_ROW_USER_ID} -->{TICKET_ROW_USER_NAME}<!-- ELSE -->{PHP.L.Guest}<!-- ENDIF --></td>
			<!-- ENDIF -->
			</div>
			<div class="uk-width-medium-1-5">
			
				<!-- IF {TICKET_ROW_STATUS} == 'open' -->
					<!-- IF {PHP.usr.id} == {TICKET_ROW_USER_ID} -->
						<!-- IF {TICKET_ROW_COUNT} == 0 -->
						<p>{PHP.L.support_tickets_new}</p>
						{TICKET_ROW_UPDATE|cot_build_timeago($this)}
						<!-- ELSE -->
							<!-- IF {TICKET_ROW_USER_ID} == {TICKET_ROW_LASTPOSTER_ID} -->
							<p>{PHP.L.support_tickets_notanswered}</p>
							{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}
							<!-- ELSE -->
							<p>{PHP.L.support_tickets_answer}</p>
							{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}
							<!-- ENDIF -->
						<!-- ENDIF -->
					<!-- ELSE -->   
						<!-- IF {TICKET_ROW_COUNT} == 0 -->
						<p>{PHP.L.support_tickets_new}</p>
						{TICKET_ROW_UPDATE|cot_build_timeago($this)}
						<!-- ELSE -->
							<!-- IF {TICKET_ROW_USER_ID} == {TICKET_ROW_LASTPOSTER_ID} -->
							<p>{PHP.L.support_tickets_waiting_answer}</p>
							{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}
							<!-- ELSE -->
							<p>{PHP.L.support_tickets_answered}</p>
							{PHP.L.support_tickets_lastpost_from}: {TICKET_ROW_LASTPOSTER_NAME}, {PHP.L.support_tickets_lastpost_when}: {TICKET_ROW_UPDATE|cot_build_timeago($this)}
							<!-- ENDIF -->
						<!-- ENDIF -->
					<!-- ENDIF -->
				<!-- ELSE -->
				
					<p>{PHP.L.support_tickets_closed}</p>
					{TICKET_ROW_UPDATE|cot_build_timeago($this)}
				<!-- ENDIF -->
            </div>

</div>

		<!-- END: TICKET_ROW -->


        </div>
    </div>
</div>
</form>
</div>

<ul class="pagination">{PAGENAV_PREV}{PAGENAV_PAGES}{PAGENAV_NEXT}</ul>	
<!-- ELSE -->
<br/>
<div class="alert alert-warning">{PHP.L.None}</div>
<!-- ENDIF -->
</div>	
</div>	
</div>
<!-- END: MAIN -->