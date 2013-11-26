<?php /* Smarty version Smarty-3.1.8, created on 2013-11-27 02:07:04
         compiled from "/home/mig/www/loc/maket2/templates/skin/synio/system_message.tpl" */ ?>
<?php /*%%SmartyHeaderCode:68567820152951b88d2c5e9-66590754%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'fa70382a978324c8d536c12579e75822f9cdacdf' => 
    array (
      0 => '/home/mig/www/loc/maket2/templates/skin/synio/system_message.tpl',
      1 => 1363893368,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '68567820152951b88d2c5e9-66590754',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'noShowSystemMessage' => 0,
    'aMsgError' => 0,
    'aMsg' => 0,
    'aMsgNotice' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_52951b88d71a77_98633014',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52951b88d71a77_98633014')) {function content_52951b88d71a77_98633014($_smarty_tpl) {?><?php if (!$_smarty_tpl->tpl_vars['noShowSystemMessage']->value){?>
	<?php if ($_smarty_tpl->tpl_vars['aMsgError']->value){?>
		<ul class="system-message-error">
			<?php  $_smarty_tpl->tpl_vars['aMsg'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['aMsg']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aMsgError']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['aMsg']->key => $_smarty_tpl->tpl_vars['aMsg']->value){
$_smarty_tpl->tpl_vars['aMsg']->_loop = true;
?>
				<li>
					<?php if ($_smarty_tpl->tpl_vars['aMsg']->value['title']!=''){?>
						<strong><?php echo $_smarty_tpl->tpl_vars['aMsg']->value['title'];?>
</strong>:
					<?php }?>
					<?php echo $_smarty_tpl->tpl_vars['aMsg']->value['msg'];?>

				</li>
			<?php } ?>
		</ul>
	<?php }?>


	<?php if ($_smarty_tpl->tpl_vars['aMsgNotice']->value){?>
		<ul class="system-message-notice">
			<?php  $_smarty_tpl->tpl_vars['aMsg'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['aMsg']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aMsgNotice']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['aMsg']->key => $_smarty_tpl->tpl_vars['aMsg']->value){
$_smarty_tpl->tpl_vars['aMsg']->_loop = true;
?>
				<li>
					<?php if ($_smarty_tpl->tpl_vars['aMsg']->value['title']!=''){?>
						<strong><?php echo $_smarty_tpl->tpl_vars['aMsg']->value['title'];?>
</strong>:
					<?php }?>
					<?php echo $_smarty_tpl->tpl_vars['aMsg']->value['msg'];?>

				</li>
			<?php } ?>
		</ul>
	<?php }?>
<?php }?><?php }} ?>