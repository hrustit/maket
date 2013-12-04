			{hook run='content_end'}
		</div> <!-- /content -->
	</div> <!-- /wrapper -->


	
	<footer id="footer">
            	<div class="copyright">
			
			<img src="{cfg name='path.static.skin'}/images/logo_dev.png" alt="{$sHtmlTitle}" class="footer_logo_img"/>
                        <p class="">
                            NewsTraveller - это информационно-новостной портал для туристов и путешественников. В NewsTraveller заложена модель взаимопомощи и обмене опыта между людьми.
                        </p>
                        <p class="">
                            Основная цель NewsTraveller - помогает в решении задачи людей, путём обмена опыта и имеющихся на базе проекта сервисов. Именно для этого мы создавали свой проект.
                        </p>
		</div>
                        

                <ul class="footer-list">
                        <li class="footer-list-header">СТРУКТУРА</li>
                        <li><a href="#">О проекте</a></li>
                        <li><a href="#">Команда</a></li>
                        <li><a href="#">Контакты</a></li>
                        <li><a href="#">Реклама на сайте</a></li>
                        <li><a href="#">Правообладателям</a></li>
                        <li><a href="#">Правила</a></li>
                        <li><a href="#">Помощь</a></li>
                        {hook run='footer_menu_project_item'}
                </ul>
               
                <ul class="footer-list">
                        <li class="footer-list-header">ПОСТЫ</li>
                        <li><a href="#">Все</a></li>
                        <li><a href="#">Колективные</a></li>
                        <li><a href="#">Персональные</a></li>
                        <li><a href="#">Лента</a></li>
                        <li><a href="#">Блоги</a></li>
                        {hook run='footer_menu_project_item'}
                </ul> 
                               
                <ul class="footer-list">
                        <li class="footer-list-header">СЕРВИСЫ</li>
                        <li><a href="#">Поиск попутчика</a></li>
                        <li><a href="#">Кто где был</a></li>
                        <li><a href="#">Бронирование</a></li>
                        <li><a href="#">Рейтинги</a></li>
                        <li><a href="#">Спец предложения</a></li>
                        {hook run='footer_menu_project_item'}
                </ul> 
                
		{if $oUserCurrent}
			<ul class="footer-list">
				<li class="footer-list-header word-wrap">{$oUserCurrent->getLogin()}</li>
				<li><a href="{$oUserCurrent->getUserWebPath()}">{$aLang.footer_menu_user_profile}</a></li>
				<li><a href="{router page='settings'}profile/">{$aLang.user_settings}</a></li>
				<li><a href="{router page='topic'}add/" class="js-write-window-show">{$aLang.block_create}</a></li>
				{hook run='footer_menu_user_item' oUser=$oUserCurrent}
				<li><a href="{router page='login'}exit/?security_ls_key={$LIVESTREET_SECURITY_KEY}">{$aLang.exit}</a></li>
			</ul>
		{else}
			<ul class="footer-list">
				<li class="footer-list-header word-wrap">{$aLang.footer_menu_user_quest_title}</li>
				<li><a href="{router page='registration'}" class="js-registration-form-show">{$aLang.registration_submit}</a></li>
				<li><a href="{router page='login'}" class="js-login-form-show sign-in">{$aLang.user_login_submit}</a></li>
				{hook run='footer_menu_user_item' isGuest=true}
			</ul>
		{/if}
		
		
	
		{hook run='footer_end'}

	</footer>
                <div class="mobi">
                    <div class="copiright_label">
                        <p>© 2013 NewsTraveller. Все права защищены.</p>
                        <img src="{cfg name='path.static.skin'}/images/16plus.png" alt="16+" class="plus16"/>
                    </div>
                    <div class="mobi_label">
                        <p><a href="#">Мобильная версия</a></p>
                    </div>
                    <div class="shared_buttons">
                        <a href="#"><img src="{cfg name='path.static.skin'}/images/yandex.png" alt="Яндекс" class=""/></a>
                        <a href="#"><img src="{cfg name='path.static.skin'}/images/facebook.png" alt="Яндекс" class=""/></a>
                        <a href="#"><img src="{cfg name='path.static.skin'}/images/twitter.png" alt="Яндекс" class=""/></a>
                        <a href="#"><img src="{cfg name='path.static.skin'}/images/vk.png" alt="Яндекс" class=""/></a>
                        <a href="#"><img src="{cfg name='path.static.skin'}/images/google-plus.png" alt="Яндекс" class=""/></a>
                        <a href="#"><img src="{cfg name='path.static.skin'}/images/rss.png" alt="Яндекс" class=""/></a>                        
                    </div>
                </div>        
</div> <!-- /container -->

{include file='toolbar.tpl'}

{hook run='body_end'}

</body>
</html>