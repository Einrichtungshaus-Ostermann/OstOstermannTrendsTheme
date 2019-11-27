
{* file to extend *}
{extends file="parent:frontend/listing/product-box/product-image.tpl"}



{* append color badge in listing *}
{block name='frontend_listing_box_article_image_element'}

    {* attribute set for article? *}
    {if is_array($sArticle.attributes) && isset($sArticle.attributes['core']) && $sArticle.attributes['core']->get('tpl_color_badge') == '1'}
        <img class="article--color-badge" src="https://sw50.ostermann.de/themes/Frontend/Ostermann/frontend/_public/src/img/badge-300x162.png" alt="Farbauswahl" title="Farbauswahl"/>
    {/if}

    {* append parent*}
    {$smarty.block.parent}

{/block}
