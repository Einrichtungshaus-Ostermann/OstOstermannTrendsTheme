
{* file to extend *}
{extends file="parent:frontend/index/sidebar.tpl"}



{* replace sites navigation with our own *}
{block name='frontend_index_left_menu'}
    {include file='frontend/faq/sites-navigation.tpl'}
{/block}
