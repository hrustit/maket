<h2 class="page-header">{$aLang.talk_menu_inbox}</h2>

<div class="menu_blog_content_talk">					
	<div {if $sMenuSubItemSelect=='inbox'}class="active"{else}class="inactive"{/if}><a href="{router page='talk'}">{$aLang.talk_menu_inbox}</a></div>
	{if $iUserCurrentCountTalkNew}
		<div {if $sMenuSubItemSelect=='new'}class="active"{else}class="inactive"{/if}><a href="{router page='talk'}inbox/new/">{$aLang.talk_menu_inbox_new}</a></div>
	{/if}
	<div {if $sMenuSubItemSelect=='add'}class="active"{else}class="inactive"{/if}><a href="{router page='talk'}add/">{$aLang.talk_menu_inbox_create}</a></div>
	<div {if $sMenuSubItemSelect=='favourites'}class="active"{else}class="inactive"{/if}><a href="{router page='talk'}favourites/">{$aLang.talk_menu_inbox_favourites}{if $iCountTalkFavourite} ({$iCountTalkFavourite}){/if}</a></div>
	<div {if $sMenuSubItemSelect=='blacklist'}class="active"{else}class="inactive"{/if}><a href="{router page='talk'}blacklist/">{$aLang.talk_menu_inbox_blacklist}</a></div>
        <div style="clear: left"></div>
	{hook run='menu_talk_talk_item'}	
</div>

{hook run='menu_talk'}