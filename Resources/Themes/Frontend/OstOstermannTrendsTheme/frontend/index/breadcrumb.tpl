
{* file to extend *}
{extends file="parent:frontend/index/breadcrumb.tpl"}



{* always prepend our home *}
{block name='frontend_index_breadcrumb_content'}

    {* we need a flag to prepend the home button in front *}
    {$ostFirst = true}

    {* append the parent *}
    {$smarty.block.parent}

{/block}



{* always prepend our home *}
{block name='frontend_index_breadcrumb_entry'}

    {* first entry? *}
    {if $ostFirst}

        {* prepend our home *}
        <li class="breadcrumb--entry is--home-entry" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
            <a class="breadcrumb--link" href="{url controller='index'}" title="{s name="home-title"}Home{/s}" itemprop="item">
                <i class="icon--house"></i>
                <link itemprop="url" href="{url controller='index'}" />
                <span class="breadcrumb--title" itemprop="name" style="display: none;">{s name="home-title"}Home{/s}</span>
            </a>
            <meta itemprop="position" content="0" />
        </li>

        <li class="breadcrumb--separator">
            <i class="icon--arrow-right"></i>
        </li>

        {* and set the flag *}
        {$ostFirst = false}

    {/if}

    {* append every other entry *}
    {$smarty.block.parent}

{/block}



{* we need to increase the meta position of every element because we preprended the home button *}
{block name="frontend_index_breadcrumb_entry_inner"}
    {if $breadcrumb.link}
        <a class="breadcrumb--link" href="{$breadcrumb.link}" title="{$breadcrumb.name|escape}" itemprop="item">
            <link itemprop="url" href="{$breadcrumb.link}" />
            <span class="breadcrumb--title" itemprop="name">{$breadcrumb.name}</span>
        </a>
    {else}
        <span class="breadcrumb--link" itemprop="item">
            <span class="breadcrumb--title" itemprop="name">{$breadcrumb.name}</span>
        </span>
    {/if}
    <meta itemprop="position" content="{$breadcrumb@index + 1}" />
{/block}
