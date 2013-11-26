<?php /* Smarty version Smarty-3.1.8, created on 2013-11-27 02:07:07
         compiled from "/home/mig/www/loc/maket2/templates/skin/synio/actions/ActionIndex/index.tpl" */ ?>
<?php /*%%SmartyHeaderCode:41381363352951b8babb480-47690511%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '09497f8b7b2bdf6425743909713e4217b48eb96c' => 
    array (
      0 => '/home/mig/www/loc/maket2/templates/skin/synio/actions/ActionIndex/index.tpl',
      1 => 1363893368,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '41381363352951b8babb480-47690511',
  'function' => 
  array (
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_52951b8bb16443_89397248',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52951b8bb16443_89397248')) {function content_52951b8bb16443_89397248($_smarty_tpl) {?><?php echo $_smarty_tpl->getSubTemplate ('header.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array('menu'=>'blog','menu_content'=>'blog'), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ('topic_list.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>

<?php echo $_smarty_tpl->getSubTemplate ('footer.tpl', $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, null, null, array(), 0);?>
<?php }} ?>