
{* file to extend *}
{extends file='parent:frontend/_includes/product_slider_items.tpl'}



{* replace the outer slider items with grouped articles to get multiple articles in one column *}
{block name="frontend_common_product_slider_items"}

    {* remove non-finished groups? *}
    {assign var="dropNoFullColumns" value=true}

    {* force a valid parameter *}
    {$articlesPerColumn = ($articlesPerColumn) ? $articlesPerColumn : 1}

    {* reduce the articles per column if we dont have enought for 1 full view in desktop viewport *}
    {if $articlesPerColumn == 3 && count($articles) < 15}
        {$articlesPerColumn = 2}
    {/if}

    {* same with two columns *}
    {if $articlesPerColumn == 2 && count($articles) < 10}
        {$articlesPerColumn = 1}
    {/if}

    {* default values *}
    {$groupedArticles = []}
    {$i = 0}
    {$currentGroup = []}

    {* group every article per column *}
    {foreach $articles as $article}
        {* add to current group *}
        {$currentGroup[] = $article}
        {$i = $i + 1}

        {* is this group full? *}
        {if $i >= $articlesPerColumn}
            {* add to grouped articles *}
            {$groupedArticles[] = $currentGroup}

            {* and reset current group *}
            {$i = 0}
            {$currentGroup = []}
        {/if}
    {/foreach}

    {* do we have articles in a non-finished group left? *}
    {if count($currentGroup) > 0 && $dropNoFullColumns == false}
        {* add as group *}
        {$groupedArticles[] = $currentGroup}
    {/if}

    {* loop every group *}
    {foreach $groupedArticles as $group}
        {* and show the slider item for every group *}
        {include file="frontend/_includes/product_slider_item.tpl"}
    {/foreach}

{/block}
