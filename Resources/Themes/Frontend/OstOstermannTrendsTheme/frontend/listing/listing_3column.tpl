
{* file to extend *}
{extends file='parent:frontend/listing/index.tpl'}



{* add custom outer container *}
{block name='frontend_index_content'}
    <div class="3column-listing">
        {$smarty.block.parent}
    </div>
{/block}

{* add custom outer container *}
{block name='frontend_listing_list_inline'}
    <div class="3column-listing--listing">
        {foreach $sArticles as $sArticle}
            {include file="frontend/listing/product-box/box-3column.tpl" productBoxLayout="3column"}
        {/foreach}
    </div>
{/block}
