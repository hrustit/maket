{assign var="oBlog" value=$oTopic->getBlog()}
{assign var="oUser" value=$oTopic->getUser()}
{assign var="oVote" value=$oTopic->getVote()}


<article class="topic topic-type-{$oTopic->getType()} js-topic">
	<header class="topic-header">
		<h1 class="topic-title word-wrap">
			{if $bTopicList}
				<a href="{$oTopic->getUrl()}">{$oTopic->getTitle()|escape:'html'}</a>
                                {if $oUserCurrent and ($oUserCurrent->getId()==$oTopic->getUserId() or $oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getUserIsModerator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
                                    <a href="{cfg name='path.root.web'}/{$oTopic->getType()}/edit/{$oTopic->getId()}/" title="{$aLang.topic_edit}" class="actions-edit"><img src="{cfg name='path.static.skin'}/images/edit.png" alt="{$aLang.topic_edit}"></a>
				{/if}
                                {if $oUserCurrent and ($oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
					<a href="{router page='topic'}delete/{$oTopic->getId()}/?security_ls_key={$LIVESTREET_SECURITY_KEY}" title="{$aLang.topic_delete}" onclick="return confirm('{$aLang.topic_delete_confirm}');" class="actions-delete"><img src="{cfg name='path.static.skin'}/images/delet.png" alt="{$aLang.topic_delete}"></a>
				{/if}
			{else}
				{$oTopic->getTitle()|escape:'html'}
                                {if $oUserCurrent and ($oUserCurrent->getId()==$oTopic->getUserId() or $oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getUserIsModerator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
                                    <a href="{cfg name='path.root.web'}/{$oTopic->getType()}/edit/{$oTopic->getId()}/" title="{$aLang.topic_edit}" class="actions-edit"><img src="{cfg name='path.static.skin'}/images/edit.png" alt="{$aLang.topic_edit}"></a>
				{/if}
                                {if $oUserCurrent and ($oUserCurrent->isAdministrator() or $oBlog->getUserIsAdministrator() or $oBlog->getOwnerId()==$oUserCurrent->getId())}
					<a href="{router page='topic'}delete/{$oTopic->getId()}/?security_ls_key={$LIVESTREET_SECURITY_KEY}" title="{$aLang.topic_delete}" onclick="return confirm('{$aLang.topic_delete_confirm}');" class="actions-delete"><img src="{cfg name='path.static.skin'}/images/delet.png" alt="{$aLang.topic_delete}"></a>
				{/if}
			{/if}
			
			{if $oTopic->getPublish() == 0}   
				<i class="icon-synio-topic-draft" title="{$aLang.topic_unpublish}"></i>
			{/if}
			
			{if $oTopic->getType() == 'link'} 
				<i class="icon-synio-topic-link" title="{$aLang.topic_link}"></i>
			{/if}
		</h1>
		
		
		<div class="topic-info">
                    <img src="{cfg name='path.static.skin'}/images/tegs.png" alt="" class="topic_info_img" >
			<a href="{$oBlog->getUrlFull()}" class="topic-blog">{$oBlog->getTitle()|escape:'html'}</a> 
			{if $oBlog->getType() != 'personal'}
				<a href="#" class="blog-list-info" onclick="return ls.infobox.showInfoBlog(this,{$oBlog->getId()});"></a>
			{/if}
		</div>
		

	</header>