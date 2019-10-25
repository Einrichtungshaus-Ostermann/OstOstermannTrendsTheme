
{* file to extend *}
{extends file='parent:frontend/detail/header.tpl'}



{* meta title *}
{block name='frontend_index_header_title'}{strip}
    {if !$sArticle.attr6}
        {$sArticle.articleName} |
        {if $sBreadcrumb}
            {foreach from=$sBreadcrumb|array_reverse item=breadcrumb} {$breadcrumb.name} | {/foreach}
        {/if}
        {s name='frontend-detail-meta-title-automatic'}Alles Wohnen dieser Welt im Einrichtungs-Centrum und auf OSTERMANN.de{/s}
    {else}
        {$sArticle.attr6} {s name='frontend-detail-meta-title-individual-meta'}im Einrichtungs-Centrum und auf OSTERMANN.de{/s}
    {/if}
{/strip}{/block}

{* meta keywords *}
{block name='frontend_index_header_meta_keywords'}{strip}
    {config name=sShopname}
    {if $sArticle.attr17},{$sArticle.attr17}{/if}
    {if $sArticle.attr10},{$sArticle.attr10}{/if}
    {if $sArticle.supplierName},{$sArticle.supplierName}{/if}
    {if $sArticle.attr9},{$sArticle.attr9}{/if}
    {if $sArticle.ean},{$sArticle.ean}{/if}
    {if $sArticle.keywords},{$sArticle.keywords|escapeHtml}{/if}
    {s name='frontend-detail-meta-keywords-additional'},möbel,moebel,ostermann,einrichten,wohnen,onlineshop,auf rechnung{/s}
    {if $sArticle.sDescriptionKeywords},{$sArticle.sDescriptionKeywords|escapeHtml}{/if}
{/strip}{/block}

{* meta description *}
{block name="frontend_index_header_meta_description"}{strip}
    {s name='frontend-detail-meta-description-additional'}Bei Ostermann auf Rechnung kaufen oder zu 0% Finanzieren.{/s}
    {if $sArticle.description}
        {$sArticle.description|escape}
    {else}
        {$sArticle.description_long|strip_tags|escape}
    {/if}
    {if $sArticle.attr17},{$sArticle.attr17}{/if}
    {if $sArticle.attr10},{$sArticle.attr10}{/if}
{/strip}{/block}
