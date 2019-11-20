<!-- BEGIN: MAIN -->

	<!-- BEGIN: REVIEW_ROW -->
<div>
    <div class="uk-panel uk-panel-box">
        <div class="tp-panel-body">
            <div class="uk-grid">
                <div class="uk-width-1-4">
				{REVIEW_ROW_OWNER_AVATAR}
				</div>
			<div class="uk-width-3-4">
				
				<div class="owner">
						<!-- IF {REVIEW_ROW_OWNER_PERS_FIRSTNAME} AND {REVIEW_ROW_OWNER_PERS_SURNAME} -->
						<a href="{REVIEW_ROW_DETAILSLINK}">
						<span class="uk-text-bold">{REVIEW_ROW_OWNER_PERS_FIRSTNAME} {REVIEW_ROW_OWNER_PERS_SURNAME}</span></a>
						<!-- ELSE -->
						{REVIEW_ROW_OWNER_NAME}
						<!-- ENDIF -->
						&rarr; <span class="uk-text-bold uk-text-warning">{REVIEW_ROW_SCORE}</span> пользователю: 
						<!-- IF {REVIEW_ROW_TO_PERS_FIRSTNAME} AND {REVIEW_ROW_OWNER_PERS_SURNAME} -->
						<a href="{REVIEW_ROW_TO_DETAILSLINK}">
						<span class="uk-text-bold">{REVIEW_ROW_TO_PERS_FIRSTNAME} {REVIEW_ROW_TO_PERS_SURNAME}</span></a>
						<!-- ELSE -->
						{REVIEW_ROW_TO_NAME}
						<!-- ENDIF -->
						
				</div>
				<!-- IF {REVIEW_ROW_AREA} == 'projects' -->
				<p class="small">{PHP.L.reviews_reviewforproject}: <a href="{REVIEW_ROW_PRJ_URL}">{REVIEW_ROW_PRJ_SHORTTITLE}</a></p>
				<!-- ENDIF -->
				<p>{REVIEW_ROW_TEXT|cot_string_truncate($this,120)} ...</p>
				<p class="small">{REVIEW_ROW_DATE|date('d.m.Y', $this)}</p>
			</div>
		</div>	
	</div>
</div>
</div>
	<!-- END: REVIEW_ROW -->

<!-- END: MAIN -->