
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
            </a>
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
