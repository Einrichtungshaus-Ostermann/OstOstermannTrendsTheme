
{* file to extend *}
{extends file='parent:widgets/recommendation/viewed.tpl'}



{* replace the default block to load 3 articles per column *}
{block name="frontend_detail_index_similar_viewed"}
    {include file="frontend/_includes/product_slider.tpl" articles=$viewedArticles articlesPerColumn=3}
{/block}
