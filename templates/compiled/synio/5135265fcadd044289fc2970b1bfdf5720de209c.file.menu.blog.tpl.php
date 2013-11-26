<?php /* Smarty version Smarty-3.1.8, created on 2013-11-27 02:07:07
         compiled from "/home/mig/www/loc/maket2/templates/skin/synio/menu.blog.tpl" */ ?>
<?php /*%%SmartyHeaderCode:12888116752951b8bb3f230-15707089%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '5135265fcadd044289fc2970b1bfdf5720de209c' => 
    array (
      0 => '/home/mig/www/loc/maket2/templates/skin/synio/menu.blog.tpl',
      1 => 1363893368,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '12888116752951b8bb3f230-15707089',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'sMenuItemSelect' => 0,
    'aLang' => 0,
    'oUserCurrent' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_52951b8bb92527_27351256',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52951b8bb92527_27351256')) {function content_52951b8bb92527_27351256($_smarty_tpl) {?><?php if (!is_callable('smarty_function_cfg')) include '/home/mig/www/loc/maket2/engine/modules/viewer/plugs/function.cfg.php';
if (!is_callable('smarty_function_router')) include '/home/mig/www/loc/maket2/engine/modules/viewer/plugs/function.router.php';
if (!is_callable('smarty_function_hook')) include '/home/mig/www/loc/maket2/engine/modules/viewer/plugs/function.hook.php';
?><ul class="nav nav-menu">
	<li <?php if ($_smarty_tpl->tpl_vars['sMenuItemSelect']->value=='index'){?>class="active"<?php }?>>
		<a href="<?php echo smarty_function_cfg(array('name'=>'path.root.web'),$_smarty_tpl);?>
/"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['blog_menu_all'];?>
</a>
	</li>

	<li <?php if ($_smarty_tpl->tpl_vars['sMenuItemSelect']->value=='blog'){?>class="active"<?php }?>>
		<a href="<?php echo smarty_function_router(array('page'=>'blog'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['blog_menu_collective'];?>
</a>
	</li>

	<li <?php if ($_smarty_tpl->tpl_vars['sMenuItemSelect']->value=='log'){?>class="active"<?php }?>>
		<a href="<?php echo smarty_function_router(array('page'=>'personal_blog'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['blog_menu_personal'];?>
</a>
	</li>
	
	<?php if ($_smarty_tpl->tpl_vars['oUserCurrent']->value){?>
		<li <?php if ($_smarty_tpl->tpl_vars['sMenuItemSelect']->value=='feed'){?>class="active"<?php }?>>
			<a href="<?php echo smarty_function_router(array('page'=>'feed'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['userfeed_title'];?>
</a>
		</li>
	<?php }?>

	<?php echo smarty_function_hook(array('run'=>'menu_blog'),$_smarty_tpl);?>

</ul><?php }} ?>