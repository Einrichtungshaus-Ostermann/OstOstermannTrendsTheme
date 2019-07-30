
{* file to extend *}
{extends file="parent:frontend/detail/tabs.tpl"}



{* tab navigation *}
{block name="frontend_detail_tabs_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* append shipping details *}
    <a href="#" class="tab--link" title="Versandinfo" data-tabName="shipping-details">Versand</a>

    {* append supplier details *}
    {if $sArticle.supplierDescription != ""}
        <a href="#" class="tab--link" title="Hersteller" data-tabName="supplier">Hersteller</a>
    {/if}

{/block}



{* tab content *}
{block name="frontend_detail_tabs_content_description"}

    {* smarty parent *}
    {$smarty.block.parent}

    {* tab container for shipping details *}
    <div class="tab--container">
        <div class="tab--header">
            <a href="#" class="tab--title" title="Versandinfo">Versandinfo</a>
        </div>
        <div class="tab--preview">
            Informationen zum Versand
        </div>
        <div class="tab--content">
            {include file="frontend/detail/tabs/shipping_details.tpl"}
        </div>
    </div>

    {* tab container for supplier *}
    {if $sArticle.supplierDescription != ""}
        <div class="tab--container">
            <div class="tab--header">
                <a href="#" class="tab--title" title="Hersteller">Hersteller</a>
            </div>
            <div class="tab--preview">
                Informationen zum Hersteller
            </div>
            <div class="tab--content">
                {include file="frontend/detail/tabs/supplier.tpl"}
            </div>
        </div>
    {/if}

{/block}
