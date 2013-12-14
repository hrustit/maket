{assign var="sidebarPosition" value='left'}

{include file='header.tpl' menu='people'}

<div class="wrap">
{include file='actions/ActionProfile/profile_top.tpl'}


{include file='user_list.tpl' aUsersList=$aFriends}
</div>


{include file='footer.tpl'}