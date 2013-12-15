<header id="header" role="banner">
	{hook run='header_banner_begin'}

	<ul class="nav nav-main" id="nav-main">
		<li {if $sMenuHeadItemSelect=='blog'}class="active"{/if}><a href="{cfg name='path.root.web'}">{$aLang.topic_title}</a> <i></i></li>
		<li {if $sMenuHeadItemSelect=='blogs'}class="active"{/if}><a href="{router page='blogs'}">{$aLang.blogs}</a> <i></i></li>
		<li {if $sMenuHeadItemSelect=='people'}class="active"{/if}><a href="{router page='people'}">{$aLang.people}</a> <i></i></li>
		<li {if $sMenuHeadItemSelect=='stream'}class="active"{/if}><a href="{router page='stream'}">{$aLang.stream_menu}</a> <i></i></li>

		{hook run='main_menu_item'}

		<li class="nav-main-more"><a href="#" id="dropdown-mainmenu-trigger" onclick="return false">{$aLang.more}</a></li>
	</ul>

	<ul class="dropdown-nav-main dropdown-menu" id="dropdown-mainmenu-menu"></ul>

	{hook run='main_menu'}
	
	
	{hook run='userbar_nav'}
	
	{if $oUserCurrent}
		<div class="dropdown-user" id="dropdown-user">	
                    <div class="username_dev">
                        <a href="{$oUserCurrent->getUserWebPath()}" >{$oUserCurrent->getLogin()}</a>
                        <div class="rating_blok">
                            <div class="rating_blok_left">
                                <span class="strength" title="{$aLang.user_skill}">{$oUserCurrent->getSkill()}</span>
                            </div>
                            <div class="rating_blok_right">
                                <span class="rating {if $oUserCurrent->getRating() < 0}negative{/if}" title="{$aLang.user_rating}">{$oUserCurrent->getRating()}</span>
                            </div>
                        </div>
                    </div>
                    
                    <div class="dropdown-user-trigger" id="dropdown-user-trigger"><img src="{cfg name='path.static.skin'}/images/triangle.png" alt="menu" /></div>
                    <div class="avatar_dev"><a href="{$oUserCurrent->getUserWebPath()}"><img src="{$oUserCurrent->getProfileAvatarPath(48)}" alt="avatar" class="img_avatar" /></a></div>	
                    <div style="clear: left"></div>
                    
                    <ul class="dropdown-user-menu" id="dropdown-user-menu" style="display: none">

				{hook run='userbar_item_first'}
                                <li class="item-top"><img src="{cfg name='path.static.skin'}/images/item_top.png" alt="menu" class="item_top_img"/></li>
				<li class="item-profile"><i class="item-icon"></i><a href="{$oUserCurrent->getUserWebPath()}">{$aLang.footer_menu_user_profile}</a></li>
				<li class="item-settings"><i class="item-icon"></i><a href="{router page='settings'}profile/">{$aLang.user_settings}</a></li> 
				<li class="item-messages">
					<a href="{router page='talk'}" id="new_messages">
						<i class="item-icon"></i>
						{$aLang.user_privat_messages}
						{if $iUserCurrentCountTalkNew}<div class="new">{$iUserCurrentCountTalkNew}</div>{/if}
					</a>
				</li>
                                <li class="item-favourite"><i class="item-icon"></i><a href="{$oUserCurrent->getUserWebPath()}favourites/topics/">{$aLang.user_menu_profile_favourites}</a></li>				
				<li class="item-create"><i class="item-icon"></i><a href="{router page='topic'}add/">{$aLang.block_create}</a></li>
				{hook run='userbar_item_last'}
				<li class="item-signout"><i class="item-icon"></i><a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a></li>
                    </ul>
		</div>
	{else}
		<ul class="auth">
			{hook run='userbar_item'}
			<li><a href="{router page='registration'}" class="js-registration-form-show">{$aLang.registration_submit}</a></li>
			<li><a href="{router page='login'}" class="js-login-form-show sign-in">{$aLang.user_login_submit}</a></li>
		</ul>
	{/if}
        
	
	{if $iUserCurrentCountTalkNew}<a href="{router page='talk'}" class="new-messages">{$iUserCurrentCountTalkNew} </a>{/if}
	
	
	{hook run='header_banner_end'}
        
</header>
        <div class="blok_logo">
            <div class="logo_div">
                <a href="{cfg name='path.root.web'}"><img src="{cfg name='path.static.skin'}/images/logo_dev.png" alt="{$sHtmlTitle}" class="logo_img"/></a>
            </div>
            <div class="search_big">
                <div class="search_header">
                    <form class="search_form" id="search_form" action="{router page='search'}topics/" >
                        <input type="text" placeholder="{$aLang.search}" maxlength="255" name="q" class="input_text">
                        <input type="submit" value="" title="{$aLang.search_submit}" class="input_submit">
                    </form>
                </div>
            </div>
            <div style="clear: left"></div>
        </div>
        <div class="green_line">
        </div>
                    
<div class="blok_menu_service">
        
            <div class="menu_service_posts">
                <a href="{cfg name='path.root.web'}" {if $sMenuHeadItemSelect=='blog'}class="posts_active"{else}class="posts"{/if} >
                    <p class="posts_text">посты</p>
                </a>
            </div>
        
            <div class="menu_service_companions">
                <a href="#">
                <div class="companions">
                    <p class="companions_text">поиск попутчика</p>
                </div>
                </a>
            </div>
            <div class="menu_service_maps">
                <a href="#">
                <div class="maps">
                    <p class="maps_text">ваша карта</p>
                </div>
                </a>
            </div>
            <div class="menu_service_reservation">
                <a href="#">
                <div class="reservation">
                    <p class="reservation_text">бронирование</p>
                </div>
                </a>
            </div>
            <div class="menu_service_rating">
                <a href="#">
                <div class="rating">
                    <p class="rating_text">рейтинг</p>
                </div>
                </a>
            </div>
            <div class="menu_service_special">
                <a href="#">
                <div class="special">
                    <p class="special_text">спец предложения</p>
                </div>
                </a>
            </div>
            <div style="clear: left"></div>
        </div>