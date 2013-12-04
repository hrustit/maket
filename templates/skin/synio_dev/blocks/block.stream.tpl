<section class="block block-type-stream">
	{hook run='block_stream_nav_item' assign="sItemsHook"}

	<header class="block-header sep">
		<h3><a href="{router page='comments'}" title="{$aLang.block_stream_comments_all}">{$aLang.block_stream}</a></h3>
        </header>
	
	<div class="block-content">
		<div class="js-block-stream-content">
			{$sStreamComments}
		</div>
	</div>
</section>

