{if !$oUserCurrent}
	<div class="modal modal-login" id="window_login_form">
		<header class="modal-header">
			<a href="#" class="close jqmClose"></a>
		</header>
		
		
		<script type="text/javascript">
			jQuery(function($){
				$('#popup-login-form').bind('submit',function(){
					ls.user.login('popup-login-form');
					return false;
				});
				$('#popup-login-form-submit').attr('disabled',false);
			});
		</script>
		
		<div class="modal-content">
			<ul class="nav nav-pills nav-pills-tabs">
				<li class="active js-block-popup-login-item" data-type="login"><a href="#">{$aLang.user_login_submit}</a></li>
				{if !$oConfig->GetValue('general.reg.invite')}
					<li class="js-block-popup-login-item" data-type="registration"><a href="#">{$aLang.registration}</a></li>
				{else}
					<li><a href="{router page='registration'}">{$aLang.registration}</a></li>
				{/if}
				<li class="js-block-popup-login-item" data-type="reminder"><a href="#">{$aLang.password_reminder}</a></li>
			</ul>
			
			
			<div class="tab-content js-block-popup-login-content" data-type="login">
				{hook run='login_popup_begin'}
				<form action="{router page='login'}" method="post" id="popup-login-form">
					{*{hook run='form_login_popup_begin'}*}

					<p><input type="text" name="login" id="popup-login" placeholder="{$aLang.user_login}" class="input-text input-width-full"></p>
					
					<p><input type="password" name="password" id="popup-password" placeholder="{$aLang.user_password}" class="input-text input-width-300" style="width: 322px">
					<button type="submit"  name="submit_login" class="button button-primary" id="popup-login-form-submit" disabled="disabled">{$aLang.user_login_submit}</button></p>
					
					<label class="remember-label"><input type="checkbox" name="remember" class="input-checkbox" checked /> {$aLang.user_login_remember}</label>

					<small class="validate-error-hide validate-error-login"></small>
					{hook run='form_login_popup_end'}

					<input type="hidden" name="return-path" value="{$PATH_WEB_CURRENT|escape:'html'}">
				</form>
				{hook run='login_popup_end'}
                                
                                
             
                                
                                
                                
                                
                                
                                
                                
                                <link rel="stylesheet" type="text/css" href="{$aTemplateWebPathPlugin.openid}css/style.css" media="all" />

<div id="vk_api_transport"></div>
<script src="http://vkontakte.ru/js/api/openapi.js" type="text/javascript" charset="windows-1251"></script>

<div id="fb-root"></div>
<script src="http://connect.facebook.net/en_US/all.js"></script>

<div class="openid-block">
	<form method="post" action="{router page='login'}openid/enter/" name="fopenid" id="openid_form">
		<div style="overflow: hidden; zoom: 1;">
			<input type="hidden" style="float: left; width: 322px; " class="input-text input-width-300" maxlength="255" name="open_login" id="open_login" />
			<input type="hidden" name="submit_open_login" id="submit_open_login_hidden" value="go"/>
			<input type="hidden" value="{$_aRequest.return}" name="return" />
			<a href="#" style="margin-top: 1px; margin-left: 5px; display: none;" class="button button-primary" onclick="getEl('openid_form').submit(); return false;"><span>{$aLang.plugin.openid.enter}</span></a>
		</div>
		
		<div class="openid-services">
                    <p class="openid_inject_login">Или войдите через: 

			<a href="javascript: openid_fb()"><img src="{cfg name='path.static.skin'}/images/fb.png" alt="facebook" /></a>
			<a href="javascript: openid_vk()"><img src="{cfg name='path.static.skin'}/images/vk_opid.png" alt="vkontakte"  /></a>	
			<a href="javascript: openid_yandex()"><img src="{cfg name='path.static.skin'}/images/ya.png" alt="yandex"  /></a>
			<a href="javascript: openid_google()"><img src="{cfg name='path.static.skin'}/images/gplus.png"   alt="google"  /></a>
                        <a href="{router page='login'}openid/" title="{$aLang.plugin.openid.enter_title_alter}" ><img src="{$aTemplateWebPathPlugin.openid}img/openid.png" alt="{$aLang.plugin.openid.openid}" /></a>
                    </p>
		</div>					
	</form>
</div>
		
		
<script language="JavaScript" type="text/javascript">
var sVkTransportPath='{cfg name='plugin.openid.vk.transport_path'}';
var iVkAppId='{cfg name='plugin.openid.vk.id'}';
var iFbAppId='{cfg name='plugin.openid.fb.id'}';
var sVkLoginPath='{$aRouter.login}'+'openid/vk/';
var sFbLoginPath='{$aRouter.login}'+'openid/fb/';
var sTwitterLoginPath='{$aRouter.login}'+'openid/twitter/?authorize=1';
{literal}
	function getEl(id) {
		return document.getElementById(id);
	}

	function openid_yandex() {
		getEl('open_login').value='openid.yandex.ru';		
		getEl('openid_form').submit();
	}
	
	function openid_rambler() {
		getEl('open_login').value='rambler.ru';		
		getEl('openid_form').submit();
	}
	
	function openid_google() {
		getEl('open_login').value='https://www.google.com/accounts/o8/id';		
		getEl('openid_form').submit();
	}
	
	function openid_vk() {		
		VK.Auth.getLoginStatus(function(response) {
			if (response.session) {
				window.location = sVkLoginPath;
			} else {
				VK.Auth.login(function(response) {
					if (response.session) {
						window.location = sVkLoginPath;
					}
				},VK.access.FRIENDS);				
			}
		});
	}
	
	function openid_fb() {		
		FB.getLoginStatus(function(response) {
			if (response.session) {
				window.location = sFbLoginPath;
			} else {
				//FB.login(null,{scope:'read_stream,publish_stream,offline_access,email'});
				FB.login(function(response) {
					console.log('fsdfs',response);
					if (response.authResponse) {
						window.location = sFbLoginPath;
					}
				},{scope:'read_stream,publish_stream,offline_access,email'});
			}
		});
	}
	
	function openid_twitter() {
		window.location = sTwitterLoginPath;
	}
	
	VK.init({apiId: iVkAppId, nameTransportPath: sVkTransportPath});
	FB.init({appId: iFbAppId, status: true, cookie: true, xfbml: true});
		
</script>
{/literal}
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
                                
			</div>


			{if !$oConfig->GetValue('general.reg.invite')}
			<div data-type="registration" class="tab-content js-block-popup-login-content" style="display:none;">
				<script type="text/javascript">
					jQuery(document).ready(function($){
						$('#popup-registration-form').find('input.js-ajax-validate').blur(function(e){
							var aParams={ };
							if ($(e.target).attr('name')=='password_confirm') {
								aParams['password']=$('#popup-registration-user-password').val();
							}
							if ($(e.target).attr('name')=='password') {
								aParams['password']=$('#popup-registration-user-password').val();
								if ($('#popup-registration-user-password-confirm').val()) {
									ls.user.validateRegistrationField('password_confirm',$('#popup-registration-user-password-confirm').val(),$('#popup-registration-form'),{ 'password': $(e.target).val() });
								}
							}
							ls.user.validateRegistrationField($(e.target).attr('name'),$(e.target).val(),$('#popup-registration-form'),aParams);
						});
						$('#popup-registration-form').bind('submit',function(){
							ls.user.registration('popup-registration-form');
							return false;
						});
						$('#popup-registration-form-submit').attr('disabled',false);
					});
				</script>

				{hook run='registration_begin' isPopup=true}
				<form action="{router page='registration'}" method="post" id="popup-registration-form">
					

					<p>
					<input type="text" name="login" placeholder="{$aLang.registration_login}" id="popup-registration-login" value="{$_aRequest.login}" class="input-text input-width-300 js-ajax-validate" />
					<i class="icon-question-sign js-tip-help" title="{$aLang.registration_login_notice}"></i>
					<i class="icon-ok-green validate-ok-field-login" style="display: none"></i>
					<small class="validate-error-hide validate-error-field-login"></small></p>

					<p>
					<input type="text" name="mail" placeholder="{$aLang.registration_mail}" id="popup-registration-mail" value="{$_aRequest.mail}" class="input-text input-width-300 js-ajax-validate" />
					<i class="icon-question-sign js-tip-help" title="{$aLang.registration_mail_notice}"></i>
					<i class="icon-ok-green validate-ok-field-mail" style="display: none"></i>
					<small class="validate-error-hide validate-error-field-mail"></small></p>

					<p>
					<input type="password" name="password" placeholder="{$aLang.registration_password}" id="popup-registration-user-password" value="" class="input-text input-width-300 js-ajax-validate" />
					<i class="icon-question-sign js-tip-help" title="{$aLang.registration_password_notice}"></i>
					<i class="icon-ok-green validate-ok-field-password" style="display: none"></i>
					<small class="validate-error-hide validate-error-field-password"></small></p>

					<p>
					<input type="password" name="password_confirm" placeholder="{$aLang.registration_password_retry}" id="popup-registration-user-password-confirm" value="" class="input-text input-width-300 js-ajax-validate" />
					<i class="icon-ok-green validate-ok-field-password_confirm" style="display: none"></i>
					<small class="validate-error-hide validate-error-field-password_confirm"></small></p>

					{hookb run="popup_registration_captcha"}
					<p><label for="popup-registration-captcha">{$aLang.registration_captcha}</label>
					<img src="{cfg name='path.root.engine_lib'}/external/kcaptcha/index.php?{$_sPhpSessionName}={$_sPhpSessionId}" 
						 onclick="this.src='{cfg name='path.root.engine_lib'}/external/kcaptcha/index.php?{$_sPhpSessionName}={$_sPhpSessionId}&n='+Math.random();"
						 class="captcha-image" />
					<input type="text" name="captcha" id="popup-registration-captcha" value="" maxlength="3" class="input-text input-width-100 js-ajax-validate" />
					<small class="validate-error-hide validate-error-field-captcha"></small></p>
					{/hookb}

					{hook run='form_registration_end' isPopup=true}

					<input type="hidden" name="return-path" value="{$PATH_WEB_CURRENT|escape:'html'}">
					<button type="submit"  name="submit_register" class="button button-primary" id="popup-registration-form-submit" disabled="disabled">{$aLang.registration_submit}</button>
				</form>
				{hook run='registration_end' isPopup=true}
			</div>
			{/if}
			
			
			<div data-type="reminder" class="tab-content js-block-popup-login-content" style="display:none;">
				<script type="text/javascript">
					jQuery(document).ready(function($){
						$('#popup-reminder-form').bind('submit',function(){
							ls.user.reminder('popup-reminder-form');
							return false;
						});
						$('#popup-reminder-form-submit').attr('disabled',false);
					});
				</script>
				<form action="{router page='login'}reminder/" method="POST" id="popup-reminder-form">
					<p>
					<input type="text" name="mail" placeholder="{$aLang.password_reminder_email}" id="popup-reminder-mail" class="input-text input-width-300" />
					<small class="validate-error-hide validate-error-reminder"></small></p>

					<button type="submit" name="submit_reminder" class="button button-primary" id="popup-reminder-form-submit" disabled="disabled">{$aLang.password_reminder_submit}</button>
				</form>
			</div>
		</div>
	</div>
{/if}