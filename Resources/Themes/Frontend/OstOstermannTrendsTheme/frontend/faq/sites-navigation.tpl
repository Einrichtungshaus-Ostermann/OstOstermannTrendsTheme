
{* file to extend *}
{extends file="parent:frontend/index/sites-navigation.tpl"}



{* replace sites navigation with faq categories *}
{block name="frontend_index_left_menu_container"}
    <div class="shop-sites--container is--rounded">
        {block name='frontend_index_left_menu_headline'}
            <div class="shop-sites--headline navigation--headline">
                FAQ Kategorien
            </div>
        {/block}
        <ul class="shop-sites--navigation sidebar--navigation navigation--list is--drop-down is--level0" role="menu">
            {foreach from=$faq.categories item=category}
                <li class="navigation--entry{if $faq.category_selected_id == $category.id} is--active{/if}" role="menuitem">
                    <a class="navigation--link{if $faq.category_selected_id == $category.id} is--active{/if}" href="{$category.url}" title="{$category.title}">
                        {$category.title}
                    </a>
                </li>
            {/foreach}
        </ul>
    </div>
{/block}
