<?php /* Smarty version Smarty-3.1.8, created on 2013-11-27 02:07:07
         compiled from "/home/mig/www/loc/maket2/templates/skin/synio/blocks/block.blogs.tpl" */ ?>
<?php /*%%SmartyHeaderCode:150138718052951b8bd17eb9-02617784%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    '2b9e9315ff3c680a6a1e5e8cc3d35ff7b5c95673' => 
    array (
      0 => '/home/mig/www/loc/maket2/templates/skin/synio/blocks/block.blogs.tpl',
      1 => 1363893368,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '150138718052951b8bd17eb9-02617784',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'aLang' => 0,
    'oUserCurrent' => 0,
    'sBlogsTop' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_52951b8bd3fd02_21286694',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_52951b8bd3fd02_21286694')) {function content_52951b8bd3fd02_21286694($_smarty_tpl) {?><?php if (!is_callable('smarty_function_router')) include '/home/mig/www/loc/maket2/engine/modules/viewer/plugs/function.router.php';
?><div class="block block-type-blogs" id="block_blogs">
	<header class="block-header sep">
		<h3><?php echo $_smarty_tpl->tpl_vars['aLang']->value['block_blogs'];?>
</h3>
		<div class="block-update js-block-blogs-update"></div>
		
		<ul class="nav nav-pills js-block-blogs-nav">
			<li class="active js-block-blogs-item" data-type="top"><a href="#"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['block_blogs_top'];?>
</a></li>
			<?php if ($_smarty_tpl->tpl_vars['oUserCurrent']->value){?>
				<li class="js-block-blogs-item" data-type="join"><a href="#"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['block_blogs_join'];?>
</a></li>
				<li class="js-block-blogs-item" data-type="self"><a href="#"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['block_blogs_self'];?>
</a></li>
			<?php }?>
		</ul>
	</header>
	
	
	<div class="block-content">
		
		
		<div class="js-block-blogs-content">
			<?php echo $_smarty_tpl->tpl_vars['sBlogsTop']->value;?>

		</div>

		
		<footer>
			<a href="<?php echo smarty_function_router(array('page'=>'blogs'),$_smarty_tpl);?>
"><?php echo $_smarty_tpl->tpl_vars['aLang']->value['block_blogs_all'];?>
</a>
		</footer>
	</div>
</div>
<?php }} ?>