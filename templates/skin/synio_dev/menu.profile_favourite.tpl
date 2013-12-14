<div class="menu_blog_content_favorite">
	<div {if $sMenuSubItemSelect=='topics'}class="active"{else}class="inactive"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites_topics}  {if $iCountTopicFavourite} ({$iCountTopicFavourite}) {/if}</a>
	</div>
	<div {if $sMenuSubItemSelect=='comments'}class="active"{else}class="inactive"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}favourites/comments/">{$aLang.user_menu_profile_favourites_comments}  {if $iCountCommentFavourite} ({$iCountCommentFavourite}) {/if}</a>
	</div>
        <div style="clear: left"></div>
	{hook run='menu_profile_favourite_item' oUserProfile=$oUserProfile}
</div>

{hook run='menu_profile_favourite' oUserProfile=$oUserProfile}
