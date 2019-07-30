
{* file to extend *}
{extends file="parent:frontend/index/main-navigation.tpl"}



{* remove home entry *}
{* not compatible with dreisc-advanced-menu *}
{block name='frontend_index_navigation_categories_top_home'}{/block}

{* force upper case category name *}
{* not compatible with dreisc-advanced-menu *}
{block name='frontend_index_navigation_categories_top_link'}
    <a class="navigation--link{if $sCategory.flag} is--active{/if}" href="{$sCategory.link}" title="{$sCategory.description|upper}" itemprop="url"{if $sCategory.external && $sCategory.externalTarget} target="{$sCategory.externalTarget}"{/if}>
        <span itemprop="name">{$sCategory.description|upper}</span>
    </a>
{/block}
