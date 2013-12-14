<div class="menu_blog_content">
        <div {if $sMenuSubItemSelect=='topics'}class="active"{else}class="inactive"{/if}>
            <a href="{$oUserProfile->getUserWebPath()}created/topics/">{$aLang.topic_title}  {if $iCountTopicUser} ({$iCountTopicUser}) {/if}</a>
	</div>
	
	<div {if $sMenuSubItemSelect=='comments'}class="active"{else}class="inactive"{/if}>
		<a href="{$oUserProfile->getUserWebPath()}created/comments/">{$aLang.user_menu_publication_comment}  {if $iCountCommentUser} ({$iCountCommentUser}) {/if}</a>
	</div>
	
	{if $oUserCurrent and $oUserCurrent->getId()==$oUserProfile->getId()}
		<div {if $sMenuSubItemSelect=='notes'}class="active"{else}class="inactive"{/if}>
			<a href="{$oUserProfile->getUserWebPath()}created/notes/">{$aLang.user_menu_profile_notes}  {if $iCountNoteUser} ({$iCountNoteUser}) {/if}</a>
		</div>
	{/if}
	<div style="clear: left"></div>
	{hook run='menu_profile_created_item' oUserProfile=$oUserProfile}
</div>
{hook run='menu_profile_created' oUserProfile=$oUserProfile}
