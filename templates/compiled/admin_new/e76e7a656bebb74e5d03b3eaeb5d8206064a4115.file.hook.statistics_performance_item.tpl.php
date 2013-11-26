<?php /* Smarty version Smarty-3.1.8, created on 2013-11-27 03:08:44
         compiled from "/home/mig/www/loc/maket2/plugins/aceadminpanel/templates/skin/default/hook.statistics_performance_item.tpl" */ ?>
<?php /*%%SmartyHeaderCode:652462341529529fcebf0a2-03217762%%*/if(!defined('SMARTY_DIR')) exit('no direct access allowed');
$_valid = $_smarty_tpl->decodeProperties(array (
  'file_dependency' => 
  array (
    'e76e7a656bebb74e5d03b3eaeb5d8206064a4115' => 
    array (
      0 => '/home/mig/www/loc/maket2/plugins/aceadminpanel/templates/skin/default/hook.statistics_performance_item.tpl',
      1 => 1375374878,
      2 => 'file',
    ),
  ),
  'nocache_hash' => '652462341529529fcebf0a2-03217762',
  'function' => 
  array (
  ),
  'variables' => 
  array (
    'aMemoryStats' => 0,
  ),
  'has_nocache_code' => false,
  'version' => 'Smarty-3.1.8',
  'unifunc' => 'content_529529fceceda0_59223012',
),false); /*/%%SmartyHeaderCode%%*/?>
<?php if ($_valid && !is_callable('content_529529fceceda0_59223012')) {function content_529529fceceda0_59223012($_smarty_tpl) {?><td>
    <h4>Memory</h4>
    memory limit: <strong><?php echo $_smarty_tpl->tpl_vars['aMemoryStats']->value['memory_limit'];?>
</strong><br/>
    memory usage: <strong><?php echo $_smarty_tpl->tpl_vars['aMemoryStats']->value['usage'];?>
</strong><br/>
    peak usage: <strong><?php echo $_smarty_tpl->tpl_vars['aMemoryStats']->value['peak_usage'];?>
</strong><br/>
</td>
<?php }} ?>