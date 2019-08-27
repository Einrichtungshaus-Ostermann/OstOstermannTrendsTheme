
{* file to extend *}
{extends file='parent:frontend/listing/product-box/box-basic.tpl'}



{* add box--basic class as well *}
{block name="frontend_listing_box_article"}
    {$productBoxLayout = "basic box--3column"}
    {$smarty.block.parent}
{/block}
