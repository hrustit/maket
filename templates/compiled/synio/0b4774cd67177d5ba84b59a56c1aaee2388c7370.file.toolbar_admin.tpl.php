<?php /* Smarty version Smarty-3.1.8, created on 2013-11-27 02:07:04
         compiled from "/home/mig/www/loc/maket2/templates/skin/synio/toolbar_admin.tpl" */ ?>
<?php /*%%SmartyHeaderCode:114068193152951b88e6e3f1-56656609%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '0b4774cd67177d5ba84b59a56c1aaee2388c7370' => 
    array (
      0 => '/home/mig/www/loc/maket2/templates/skin/synio/toolbar_admin.tpl',
      1 => 1363893368,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '114068193152951b88e6e3f1-56656609',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'oUserCurrent' => 0,
    'aLang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_52951b88e843f5_59946941',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52951b88e843f5_59946941')) {function content_52951b88e843f5_59946941($_smarty_tpl) {?><?php if (!is_callable('smarty_function_router')) include '/home/mig/www/loc/maket2/engine/modules/viewer/plugs/function.router.php';
?><?php if ($_smarty_tpl->tpl_vars['oUserCurrent']->value&&$_smarty_tpl->tpl_vars['oUserCurrent']->value->isAdministrator()){?>
<section class="toolbar-admin">
	<a href="<?php echo smarty_function_router(array('page'=>'admin'),$_smarty_tpl);?>
" title="<?php echo $_smarty_tpl->tpl_vars['aLang']->value['admin_title'];?>
">
		<i></i>
	</a>
</section>
<?php }?><?php }} ?>