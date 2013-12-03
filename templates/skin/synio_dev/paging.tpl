{if $aPaging and $aPaging.iCountPage>1} 
	<div class="pagination">
                <div class="pagination_ul_1">
			{if $aPaging.iPrevPage}
				<a href="{$aPaging.sBaseUrl}/page{$aPaging.iPrevPage}/{$aPaging.sGetParams}" class="js-paging-prev-page" title="{$aLang.paging_previos}">&larr; {$aLang.paging_previos}</a>
			{else}
				<span>&larr; {$aLang.paging_previos}</span>
			{/if}
			
			
			{if $aPaging.iNextPage}
				<a href="{$aPaging.sBaseUrl}/page{$aPaging.iNextPage}/{$aPaging.sGetParams}" class="js-paging-next-page" title="{$aLang.paging_next}">{$aLang.paging_next} &rarr;</a>
			{else}
				<span>{$aLang.paging_next} &rarr;</span>
			{/if}
		</div>
		<div class="pagination_ul_2">
			{foreach from=$aPaging.aPagesLeft item=iPage}
				<a href="{$aPaging.sBaseUrl}/page{$iPage}/{$aPaging.sGetParams}">{$iPage}</a>
			{/foreach}
			
			<span class="active">{$aPaging.iCurrentPage}</span>
			
			{foreach from=$aPaging.aPagesRight item=iPage}
				<a href="{$aPaging.sBaseUrl}/page{$iPage}/{$aPaging.sGetParams}">{$iPage}</a>
			{/foreach}
			
                </div>
	</div>
{/if}