
{* file to extend *}
{extends file="parent:frontend/detail/tabs/description.tpl"}



{* remove article name from description tab header *}
{block name='frontend_detail_description_title'}
    <div class="content--title">
        {s name="header-title"}Produktinformationen{/s}
    </div>
{/block}

{* remove trailing <br> within the description to always have the same gap between description and properties *}
{block name='frontend_detail_description_text'}
    <div class="product--description" itemprop="description">
        {$sArticle.description_long|trim|regex_replace:'#(\s*<br\s*/?>)*\s*$#i':""}
    </div>
{/block}

{* add header to properties *}
{block name='frontend_detail_description_properties'}
    {if $sArticle.sProperties}
        <div class="content--title product-properties--title">
            {s name="properties-title"}Produkteigenschaften{/s}
        </div>

        <div class="product--properties panel has--border">
            <table class="product--properties-table">
                {foreach $sArticle.sProperties as $sProperty}
                    {if in_array($sProperty.name|strtolower, $ostOstermannTrendsThemeFilterProperties)}
                        {continue}
                    {/if}
                    <tr class="product--properties-row">
                        <td class="product--properties-label is--bold">{$sProperty.name|escape}:</td>
                        <td class="product--properties-value">{$sProperty.value|escape}</td>
                    </tr>
                {/foreach}
            </table>
        </div>
    {/if}
{/block}

{* remove content fields *}
{block name='frontend_detail_description_links'}{/block}
{block name='frontend_detail_description_our_comment'}{/block}
{block name='frontend_detail_description_downloads'}{/block}
