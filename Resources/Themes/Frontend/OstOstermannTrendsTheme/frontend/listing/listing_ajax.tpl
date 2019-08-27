
{* file to extend *}
{extends file='parent:frontend/listing/listing_ajax.tpl'}



{* add our custom listing templates *}
{block name="frontend_listing_list_inline_ajax"}

    {if $sCategoryContent.template == 'listing_3column.tpl'}
        {foreach $sArticles as $sArticle}
            {include file="frontend/listing/product-box/box-3column.tpl" productBoxLayout="3column"}
        {/foreach}
    {elseif $sCategoryContent.template == 'listing_4column.tpl'}
        {foreach $sArticles as $sArticle}
            {include file="frontend/listing/product-box/box-4column.tpl" productBoxLayout="4column"}
        {/foreach}
    {else}
        {$smarty.block.parent}
    {/if}

{/block}
