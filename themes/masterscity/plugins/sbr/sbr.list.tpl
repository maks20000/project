<!-- BEGIN: MAIN -->
<div class="uk-block-muted">
    <div class="uk-container-center uk-width-medium-1-1 tp-padd-large">
        <ul class="uk-breadcrumb tp-padd uk-margin-top uk-hidden-small">
            <li><a href="{PHP.cfg.mainurl}">{PHP.L.Home}</a></li>
            {SBR_TITLE|ul_transform($this)}
        </ul>
        <div class="uk-grid" data-uk-grid-margin="">
            <div class="uk-width-medium-2-10">
            <div class="tp-box">   
                <div class="tp-box-header tp-with-border">
                    <h3 class="uk-margin-bottom-remove">{PHP.L.sbr_mydeals}</h3>
                </div>
                
                <ul class="uk-list-pm uk-margin-top-remove">
                    <li<!-- IF !{PHP.status} --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr')}">{PHP.L.All} ({SBR_COUNTERS.all})</a></li>
                    <li<!-- IF {PHP.status} == 'new' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=new')}">{PHP.L.sbr_deals_new} ({SBR_COUNTERS.new})</a></li>
                    <li<!-- IF {PHP.status} == 'refuse' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=refuse')}">{PHP.L.sbr_deals_refuse} ({SBR_COUNTERS.refuse})</a></li>
                    <li<!-- IF {PHP.status} == 'confirm' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=confirm')}">{PHP.L.sbr_deals_confirm} ({SBR_COUNTERS.confirm})</a></li>
                    <li<!-- IF {PHP.status} == 'process' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=process')}">{PHP.L.sbr_deals_process} ({SBR_COUNTERS.process})</a></li>
                    <li<!-- IF {PHP.status} == 'done' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=done')}">{PHP.L.sbr_deals_done} ({SBR_COUNTERS.done})</a></li>
                    <li<!-- IF {PHP.status} == 'claim' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=claim')}">{PHP.L.sbr_deals_claim} ({SBR_COUNTERS.claim})</a></li>
                    <li<!-- IF {PHP.status} == 'cancel' --> class="uk-active"<!-- ENDIF -->><a href="{PHP|cot_url('sbr','status=cancel')}">{PHP.L.sbr_deals_cancel} ({SBR_COUNTERS.cancel})</a></li>
                </ul>
            
            </div>   
            </div>
            <div class="uk-width-medium-8-10">
                <div class="tp-box">
                    <div class="uk-panel-body">
                        <div class="uk-text-center">
                        {PHP.L.sbr_mydeals|cot_uk_heading(1, "$this", "uk-h2 tp-text-transform uk-text-bold")}
                        </div>
                        <hr />


<div class="uk-overflow-container">
	<table class="uk-table uk-table-striped">
	
		<thead>
			<tr>
				<th>ID</th>
				<th>Заголовок сделки</th>
				<th>Бюджет</th>
				<th>Создана</th>
				<th>{PHP.L.sbr_employer}</th>
				<th>{PHP.L.sbr_performer}</th>
				<th>Состояние</th>
			</tr>
		</thead>
	<!-- BEGIN: SBR_ROW -->
		<tbody>
			<tr>
				<td>{SBR_ROW_ID}</td>
				<td><a href="{SBR_ROW_URL}">{SBR_ROW_SHORTTITLE}</a></td>
                <td><b>{SBR_ROW_COST} {PHP.cfg.payments.valuta}</b></td>
				<td><!-- IF {SBR_ROW_CREATEDATE} -->{SBR_ROW_CREATEDATE_STAMP|cot_date('d.m.Y', $this)}<!-- ENDIF --></td>
				<td><a href="{SBR_ROW_EMPLOYER_DETAILSLINK}" target="blank">{SBR_ROW_EMPLOYER_NICKNAME}</a></td>
				<td><a href="{SBR_ROW_PERFORMER_DETAILSLINK}" target="blank">{SBR_ROW_PERFORMER_NICKNAME}</a></td>
				<td><!-- IF !{PHP.status} --><span class="uk-badge badge-{SBR_ROW_LABELSTATUS}">{SBR_ROW_LOCALSTATUS}</span><!-- ENDIF --></td>
			</tr>
		</tbody>
	<!-- END: SBR_ROW -->
	</table>
</div>

                    </div>
                </div>
            </div>
        </div>    
    </div>
</div>
<!-- END: MAIN -->