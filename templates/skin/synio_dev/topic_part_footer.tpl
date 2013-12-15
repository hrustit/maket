	{assign var="oBlog" value=$oTopic->getBlog()}
	{assign var="oUser" value=$oTopic->getUser()}
	{assign var="oVote" value=$oTopic->getVote()}
	{assign var="oFavourite" value=$oTopic->getFavourite()}


	<footer class="topic-footer">
		<div class="topic-share" id="topic_share_{$oTopic->getId()}">
			{hookb run="topic_share" topic=$oTopic bTopicList=$bTopicList}
				<div class="yashare-auto-init" data-yashareTitle="{$oTopic->getTitle()|escape:'html'}" data-yashareLink="{$oTopic->getUrl()}" data-yashareL10n="ru" data-yashareType="none" data-yashareQuickServices="yaru,vkontakte,facebook,twitter,odnoklassniki,moimir,lj,gplus"></div>
			{/hookb}
			<div class="arrow"></div>
			<div class="close" onclick="jQuery('#topic_share_{$oTopic->getId()}').slideToggle(); return false;"></div>
		</div>


		<ul class="topic-info">
                    
 {if !$bTopicList}{*   Если мы НЕ на странице со списком топиков  то не показываем рейтинг *}
			{if $oVote || ($oUserCurrent && $oTopic->getUserId() == $oUserCurrent->getId()) || strtotime($oTopic->getDateAdd()) < $smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time')}
				{assign var="bVoteInfoShow" value=true}
			{/if}
			
			<li class="topic_info_vote">
				<div id="vote_area_topic_{$oTopic->getId()}" class="vote-topic
                                            {if $oVote || ($oUserCurrent && $oTopic->getUserId() == $oUserCurrent->getId()) || strtotime($oTopic->getDateAdd()) < $smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time')}
                                                    {if $oTopic->getRating() > 0}
                                                            vote-count-positive
                                                    {elseif $oTopic->getRating() < 0}
                                                            vote-count-negative
                                                    {elseif $oTopic->getRating() == 0}
                                                            vote-count-zero
                                                    {/if}
                                            {/if}

                                            {if !$oUserCurrent or ($oUserCurrent && $oTopic->getUserId() != $oUserCurrent->getId())}
                                                    vote-not-self
                                            {/if}

                                            {if $oVote} 
                                                    voted

                                                    {if $oVote->getDirection() > 0}
                                                            voted-up
                                                    {elseif $oVote->getDirection() < 0}
                                                            voted-down
                                                    {elseif $oVote->getDirection() == 0}
                                                            voted-zero
                                                    {/if}
                                            {else}
                                                    not-voted
                                            {/if}

                                            {if (strtotime($oTopic->getDateAdd()) < $smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time') && !$oVote) || ($oUserCurrent && $oTopic->getUserId() == $oUserCurrent->getId())}
                                                    vote-nobuttons
                                            {/if}

                                            {if strtotime($oTopic->getDateAdd()) > $smarty.now-$oConfig->GetValue('acl.vote.topic.limit_time')}
                                                    vote-not-expired
                                            {/if}

                                            {if $bVoteInfoShow}js-infobox-vote-topic{/if}">
					<div class="vote-item vote-down" onclick="return ls.vote.vote({$oTopic->getId()},this,-1,'topic');"><span><i></i></span></div>
					<div class="vote-item vote-count" title="{$aLang.topic_vote_count}: {$oTopic->getCountVote()}">
						<span id="vote_total_topic_{$oTopic->getId()}">
							{if $bVoteInfoShow}
								{if $oTopic->getRating() > 0}+{/if}{$oTopic->getRating()}
							{else}
								<i onclick="return ls.vote.vote({$oTopic->getId()},this,0,'topic');"></i>
							{/if}
						</span>
					</div>
       
					<div class="vote-item vote-up" onclick="return ls.vote.vote({$oTopic->getId()},this,1,'topic');"><span><i></i></span></div>
					{if $bVoteInfoShow}
						<div id="vote-info-topic-{$oTopic->getId()}" style="display: none;">
							<ul class="vote-topic-info">
								<li><i class="icon-synio-vote-info-up"></i> {$oTopic->getCountVoteUp()}</li>
								<li><i class="icon-synio-vote-info-down"></i> {$oTopic->getCountVoteDown()}</li>
								<li><i class="icon-synio-vote-info-zero"></i> {$oTopic->getCountVoteAbstain()}</li>
								{hook run='topic_show_vote_stats' topic=$oTopic}
							</ul>
						</div>
					{/if}
				</div>
			</li>
 {/if}
                    
                    
                    
                    

			<li class="topic-info-author">
				<a href="{$oUser->getUserWebPath()}"><img src="{$oUser->getProfileAvatarPath(24)}" alt="avatar" class="avatar" /></a>
				<a rel="author" href="{$oUser->getUserWebPath()}">{$oUser->getLogin()}</a>
			</li>
			<li class="topic-info-date">
                                <img src="{cfg name='path.static.skin'}/images/cloc.png" class="topic_cloc_img" title="{date_format date=$oTopic->getDateAdd() format='j F Y, H:i'}">
				<time datetime="{date_format date=$oTopic->getDateAdd() format='c'}" title="{date_format date=$oTopic->getDateAdd() format='j F Y, H:i'}">
                                	{date_format date=$oTopic->getDateAdd() hours_back="12" minutes_back="60" now="60" day="day H:i" format="j F Y, H:i"}
				</time>
			</li>
			
			
			<li class="topic-info-favourite" onclick="return ls.favourite.toggle({$oTopic->getId()},$('#fav_topic_{$oTopic->getId()}'),'topic');">
				<i id="fav_topic_{$oTopic->getId()}" class="favourite {if $oUserCurrent && $oTopic->getIsFavourite()}active{/if}"></i>
				<span class="favourite-count" id="fav_count_topic_{$oTopic->getId()}">{if $oTopic->getCountFavourite()>0}{$oTopic->getCountFavourite()}{/if}</span>
			</li>
			{if $bTopicList}
				<li class="topic-info-comments">
					{if $oTopic->getCountCommentNew()}
						<a href="{$oTopic->getUrl()}#comments" title="{$aLang.topic_comment_read}" class="new">
							<i class="icon-synio-comments-green-filled"></i>
							<span>{$oTopic->getCountComment()}</span>
							<span class="count">+{$oTopic->getCountCommentNew()}</span>
						</a>
					{else}
						<a href="{$oTopic->getUrl()}#comments" title="{$aLang.topic_comment_read}">
							{if $oTopic->getCountComment()}
								<i class="icon-synio-comments-green-filled"></i>
							{else}
								<i class="icon-synio-comments-blue"></i>
							{/if}
							
							<span>{$oTopic->getCountComment()}</span>
						</a>
					{/if}
				</li>
			{/if}
<!-- Читать далее -->

	{if $bTopicList}
            {if $oTopic->getTextShort()!=$oTopic->getText()}
                <li class="topic-info-vote">
                    <a href="{$oTopic->getUrl()}#cut" title="{$aLang.topic_read_more}" class="topic_read_more">
				{if $oTopic->getCutText()}
					{$oTopic->getCutText()}
				{else}
					{$aLang.topic_read_more} &rarr;
				{/if}
                    </a>
                </li>
            {/if}
        {else}
            <!--   Кнопки соцсетей    -->
            <li class="topic_share">
                    {hookb run="topic_share" topic=$oTopic bTopicList=$bTopicList}
                        <div class="yashare-auto-init" data-yashareTitle="{$oTopic->getTitle()|escape:'html'}" data-yashareLink="{$oTopic->getUrl()}" data-yashareL10n="ru" data-yashareType="none" data-yashareQuickServices="vkontakte,facebook,twitter,odnoklassniki,lj,gplus"></div>
                    {/hookb}
                        <div class="arrow"></div>
                        <div class="close" onclick="jQuery('#topic_share_{$oTopic->getId()}').slideToggle(); return false;"></div>

            </li>
        {/if}
<!--   ****    -->

			{hook run='topic_show_info' topic=$oTopic}
		</ul>

		
		{if !$bTopicList}
			{hook run='topic_show_end' topic=$oTopic}
		{/if}
	</footer>
</article> <!-- /.topic -->