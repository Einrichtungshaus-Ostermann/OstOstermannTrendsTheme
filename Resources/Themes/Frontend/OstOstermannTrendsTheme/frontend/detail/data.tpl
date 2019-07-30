
{* file to extend *}
{extends file='parent:frontend/detail/data.tpl'}





{* capture default price to append it after pseudo price *}
{block name='frontend_detail_data_price_configurator'}
    {capture name="default_price"}
        {$smarty.block.parent}
    {/capture}
{/block}

{block name='frontend_detail_data_pseudo_price'}
    {$smarty.block.parent}
    {$smarty.capture.default_price}
{/block}








{* remove unit price *}
{block name='frontend_detail_data_price'}{/block}




{* prepend shipping costs to delivery time and put them both into a container *}
{block name="frontend_detail_data_delivery"}



    <div class="product--delivery-and-shipping-costs">


        {* show shipping costs when we dont have a full service price *}
        {if $sArticle[$theme.attribute_fullservice] != "2"}

            {* free shipping?! *}
            {if $sArticle[$theme.attribute_shipping_costs]|floatval == 0}
                <div class="shipping-costs--free">
                    {s name="shipping-costs--free"}Kostenloser Versand{/s}
                </div>
            {else}
                <div class="shipping-costs">
                    {s name="shipping-costs"}Versand: {$sArticle[$theme.attribute_shipping_costs]|currency}{/s}
                </div>
            {/if}

        {/if}


        {$smarty.block.parent}


    </div>

{/block}