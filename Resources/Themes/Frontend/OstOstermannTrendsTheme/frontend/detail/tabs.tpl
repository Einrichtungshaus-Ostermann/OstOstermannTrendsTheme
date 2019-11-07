
{* file to extend *}
{extends file="parent:frontend/detail/tabs.tpl"}



{* tab navigation *}
{block name="frontend_detail_tabs_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* append shipping details *}
    <a href="#" class="tab--link" title="{s name="shipping-details-description-title"}Versand{/s}" data-tabName="shipping-details">{s name="shipping-details-description-title"}Versand{/s}</a>

    {* append supplier details *}
    {if $sArticle.supplierDescription != ""}
        <a href="#" class="tab--link" title="{s name="supplier-description-title"}Hersteller{/s}" data-tabName="supplier">{s name="supplier-description-title"}Hersteller{/s}</a>
    {/if}

{/block}



{* tab content *}
{block name="frontend_detail_tabs_content_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* tab container for shipping details *}
    <div class="tab--container" data-jumpToTab="shipping-details">
        <div class="tab--header">
            <a href="#" class="tab--title" title="{s name="shipping-details-title"}Versandinfo{/s}">{s name="shipping-details-title"}Versandinfo{/s}</a>
        </div>
        <div class="tab--preview">
            {s name="shipping-details-preview"}Weitere Informationen zum Versand...{/s}
        </div>
        <div class="tab--content">
            {include file="frontend/detail/tabs/shipping_details.tpl"}
        </div>
    </div>

    {* tab container for supplier *}
    {if $sArticle.supplierDescription != ""}
        <div class="tab--container">
            <div class="tab--header">
                <a href="#" class="tab--title" title="{s name="supplier-title"}Hersteller{/s}">{s name="supplier-title"}Hersteller{/s}</a>
            </div>
            <div class="tab--preview">
                {s name="supplier-preview"}Weitere Informationen zum Hersteller...{/s}
            </div>
            <div class="tab--content">
                {include file="frontend/detail/tabs/supplier.tpl"}
            </div>
        </div>
    {/if}

{/block}
