
{* file to extend *}
{extends file='parent:frontend/_includes/product_slider_item.tpl'}



{* loop the grouped articles for every slider item *}
{block name="frontend_common_product_slider_item"}
    <div class="product-slider--item">
        {foreach $group as $article}
            {include file="frontend/listing/box_article.tpl" sArticle=$article productBoxLayout=$productBoxLayout fixedImageSize=$fixedImageSize}
        {/foreach}
    </div>
{/block}
