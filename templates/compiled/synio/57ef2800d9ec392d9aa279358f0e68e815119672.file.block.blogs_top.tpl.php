<?php /* Smarty version Smarty-3.1.8, created on 2013-11-27 02:07:07
         compiled from "/home/mig/www/loc/maket2/templates/skin/synio/blocks/block.blogs_top.tpl" */ ?>
<?php /*%%SmartyHeaderCode:82442313652951b8bce3199-10154405%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '57ef2800d9ec392d9aa279358f0e68e815119672' => 
    array (
      0 => '/home/mig/www/loc/maket2/templates/skin/synio/blocks/block.blogs_top.tpl',
      1 => 1363893368,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '82442313652951b8bce3199-10154405',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'aBlogs' => 0,
    'oBlog' => 0,
    'aLang' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_52951b8bd121e8_85391836',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52951b8bd121e8_85391836')) {function content_52951b8bd121e8_85391836($_smarty_tpl) {?><ul class="block-blog-list">
	<?php  $_smarty_tpl->tpl_vars['oBlog'] = new Smarty_Variable; $_smarty_tpl->tpl_vars['oBlog']->_loop = false;
 $_from = $_smarty_tpl->tpl_vars['aBlogs']->value; if (!is_array($_from) && !is_object($_from)) { settype($_from, 'array');}
foreach ($_from as $_smarty_tpl->tpl_vars['oBlog']->key => $_smarty_tpl->tpl_vars['oBlog']->value){
$_smarty_tpl->tpl_vars['oBlog']->_loop = true;
?>
		<li>
			<a href="<?php echo $_smarty_tpl->tpl_vars['oBlog']->value->getUrlFull();?>
"><?php echo htmlspecialchars($_smarty_tpl->tpl_vars['oBlog']->value->getTitle(), ENT_QUOTES, 'UTF-8', true);?>
</a><?php if ($_smarty_tpl->tpl_vars['oBlog']->value->getType()=='close'){?><i title="<?php echo $_smarty_tpl->tpl_vars['aLang']->value['blog_closed'];?>
" class="icon-synio-topic-private"></i><?php }?>
			
			<strong><?php echo $_smarty_tpl->tpl_vars['oBlog']->value->getRating();?>
</strong>
		</li>
	<?php } ?>
</ul>				<?php }} ?>