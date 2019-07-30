
{* file to extend *}
{extends file="parent:frontend/listing/product-box/product-price.tpl"}



{* catch default price *}
{block name='frontend_listing_box_article_price_default'}
    {capture name="default_price"}
        {$smarty.block.parent}
    {/capture}
{/block}

{* and append default price after pseudo price *}
{block name='frontend_listing_box_article_price_discount'}

    {* only show the pseudo price if we have NO variants. *}
    {* both prices are too long for 1x1 product boxes *}
    {if !$sArticle.priceStartingFrom}
        {$smarty.block.parent}
    {/if}

    {* drop the default price here *}
    {$smarty.capture.default_price}

{/block}
