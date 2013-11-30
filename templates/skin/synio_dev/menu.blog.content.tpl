{if $sMenuItemSelect=='index'}
	<div class="menu_blog_content">
		<div {if $sMenuSubItemSelect=='good'}class="active"{else}class="inactive"{/if}><a href="{cfg name='path.root.web'}/">{$aLang.blog_menu_all_good}</a></div>
		<div {if $sMenuSubItemSelect=='new'}class="active"{else}class="inactive"{/if}>
			<a href="{router page='index'}newall/" title="{$aLang.blog_menu_top_period_all}">{$aLang.blog_menu_all_new}</a>
			{if $iCountTopicsNew>0}<a href="{router page='index'}new/" class="new" title="{$aLang.blog_menu_top_period_24h}">+{$iCountTopicsNew}</a>{/if}
		</div>
		<div {if $sMenuSubItemSelect=='discussed'}class="active"{else}class="inactive"{/if}><a href="{router page='index'}discussed/">{$aLang.blog_menu_all_discussed}</a></div>
		<div {if $sMenuSubItemSelect=='top'}class="active"{else}class="inactive"{/if}><a href="{router page='index'}top/">{$aLang.blog_menu_all_top}</a></div>
                <div style="clear: left"></div>
		{hook run='menu_blog_index_item'}
	</div>
{/if}

{if $sMenuItemSelect=='blog'}
	<div class="menu_blog_content">
		<div {if $sMenuSubItemSelect=='good'}class="active"{else}class="inactive"{/if}><a href="{$sMenuSubBlogUrl}">{$aLang.blog_menu_collective_good}</a></div>
		<div {if $sMenuSubItemSelect=='new'}class="active"{else}class="inactive"{/if}>
			<a href="{$sMenuSubBlogUrl}newall/" title="{$aLang.blog_menu_top_period_all}">{$aLang.blog_menu_collective_new}</a>
			{if $iCountTopicsBlogNew>0} <a href="{$sMenuSubBlogUrl}new/" class="new" title="{$aLang.blog_menu_top_period_24h}">+{$iCountTopicsBlogNew}</a>{/if}
		</div>
		<div {if $sMenuSubItemSelect=='discussed'}class="active"{else}class="inactive"{/if}><a href="{$sMenuSubBlogUrl}discussed/">{$aLang.blog_menu_collective_discussed}</a></div>
		<div {if $sMenuSubItemSelect=='top'}class="active"{else}class="inactive"{/if}><a href="{$sMenuSubBlogUrl}top/">{$aLang.blog_menu_collective_top}</a></div>
                <div style="clear: left"></div>
		{hook run='menu_blog_blog_item'}
	</div>
{/if}

{if $sMenuItemSelect=='log'}
	<div class="menu_blog_content">
		<div {if $sMenuSubItemSelect=='good'}class="active"{else}class="inactive"{/if}><a href="{router page='personal_blog'}">{$aLang.blog_menu_personal_good}</a></div>
		<div {if $sMenuSubItemSelect=='new'}class="active"{else}class="inactive"{/if}>
			<a href="{router page='personal_blog'}newall/" title="{$aLang.blog_menu_top_period_all}">{$aLang.blog_menu_personal_new}</a>
			{if $iCountTopicsPersonalNew>0}<a href="{router page='personal_blog'}new/" class="new" title="{$aLang.blog_menu_top_period_24h}">+{$iCountTopicsPersonalNew}</a>{/if}
		</div>
		<div {if $sMenuSubItemSelect=='discussed'}class="active"{else}class="inactive"{/if}><a href="{router page='personal_blog'}discussed/">{$aLang.blog_menu_personal_discussed}</a></div>
		<div {if $sMenuSubItemSelect=='top'}class="active"{else}class="inactive"{/if}><a href="{router page='personal_blog'}top/">{$aLang.blog_menu_personal_top}</a></div>
		<div style="clear: left"></div>
                {hook run='menu_blog_log_item'}
	</div>
{/if}

{if $sPeriodSelectCurrent}
	<ul class="nav nav-pills nav-pills-dropdown mb-30">
		<li {if $sPeriodSelectCurrent=='1'}class="active"{/if}><a href="{$sPeriodSelectRoot}?period=1">{$aLang.blog_menu_top_period_24h}</a></li>
		<li {if $sPeriodSelectCurrent=='7'}class="active"{/if}><a href="{$sPeriodSelectRoot}?period=7">{$aLang.blog_menu_top_period_7d}</a></li>
		<li {if $sPeriodSelectCurrent=='30'}class="active"{/if}><a href="{$sPeriodSelectRoot}?period=30">{$aLang.blog_menu_top_period_30d}</a></li>
		<li {if $sPeriodSelectCurrent=='all'}class="active"{/if}><a href="{$sPeriodSelectRoot}?period=all">{$aLang.blog_menu_top_period_all}</a></li>
	</ul>
{/if}

