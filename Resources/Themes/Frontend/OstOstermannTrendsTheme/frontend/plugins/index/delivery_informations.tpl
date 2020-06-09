
{* file to extend *}
{extends file='parent:frontend/plugins/index/delivery_informations.tpl'}



{* replace default delivery information *}
{block name='frontend_widgets_delivery_infos'}

    {* outer container *}
    <div class="product--delivery">

        {* get attributes based on available data *}
        {$package = ( isset( $sArticle.additional_details.attributes.core ) ) ? $sArticle.additional_details.attributes.core->get( $theme.attribute_shipping_method ) : $sArticle[$theme.attribute_shipping_method]}
        {$deliveryTime = ( isset( $sArticle.additional_details.attributes.core ) ) ? $sArticle.additional_details.attributes.core->get( $theme.attribute_delivery_time ) : $sArticle[$theme.attribute_delivery_time]}
        {$dropShipping = ( isset( $sArticle.additional_details.attributes.core ) ) ? $sArticle.additional_details.attributes.core->get( 'attr23' ) : $sArticle['attr23']}

        {* do we have the article in stock? *}
        {if $sArticle.instock > 0}

            {* are we sending as default dhl package? *}
            {if $package == "P"}

                {* dropshipping? *}
                {if $dropShipping == '1'}

                    <p class="delivery--information">
                    <span class="delivery--text delivery--green">
                        <i class="delivery--status-icon delivery--status-green"></i>
                        {s name="detail-data-shipping--in-stock--package--dropshipping"}Sofort lieferbar, Lieferzeit ca. 2 - 4 Werktage{/s}
                    </span>
                    </p>
                    <meta itemprop="availability" content="InStock">

                {else}

                    <p class="delivery--information">
                    <span class="delivery--text delivery--green">
                        <i class="delivery--status-icon delivery--status-green"></i>
                        {s name="detail-data-shipping--in-stock--package"}Sofort lieferbar, Lieferzeit ca. 1 - 3 Werktage{/s}
                    </span>
                    </p>
                    <meta itemprop="availability" content="InStock">

                {/if}

            {else}

                {* dropshipping? *}
                {if $dropShipping == '1'}

                    <p class="delivery--information">
                    <span class="delivery--text delivery--green">
                        <i class="delivery--status-icon delivery--status-green"></i>
                        {s name="detail-data-shipping--in-stock--truck--dropshipping"}Sofort lieferbar, Lieferzeit ca. 7 - 10 Werktage{/s}
                    </span>
                    </p>
                    <meta itemprop="availability" content="InStock">

                {else}

                    <p class="delivery--information">
                    <span class="delivery--text delivery--green">
                        <i class="delivery--status-icon delivery--status-green"></i>
                        {s name="detail-data-shipping--in-stock--truck"}Sofort lieferbar, Lieferzeit ca. 7 - 10 Werktage{/s}
                    </span>
                    </p>
                    <meta itemprop="availability" content="InStock">

                {/if}

            {/if}

        {else}

            {* we do not buy the article again *}
            {if $sArticle.laststock == true}

                <p class="delivery--information">
                <span class="delivery--text delivery--red">
                    <i class="delivery--status-icon delivery--status-red"></i>
                    {s name="detail-data-shipping--no-stock--last-stock"}Derzeit nicht lieferbar{/s}
                </span>
                </p>
                <meta itemprop="availability" content="OutOfStock">

            {else}

                {if $deliveryTime|intval == 0}
                    {s name="detail-data-shipping--no-stock--delivery-time--short--zero-week" assign="deliveryTimeSnippet"}Lieferzeit unbekannt{/s}
                {elseif $deliveryTime|intval == 1}
                    {s name="detail-data-shipping--no-stock--delivery-time--short--one-week" assign="deliveryTimeSnippet"}Lieferzeit ca. 1 Woche{/s}
                {else}
                    {s name="detail-data-shipping--no-stock--delivery-time--short" assign="deliveryTimeSnippet"}Lieferzeit ca. {$deliveryTime} Wochen{/s}
                {/if}

                <p class="delivery--information">
                <span class="delivery--text delivery--yellow">
                    <i class="delivery--status-icon delivery--status-yellow"></i>
                    {$deliveryTimeSnippet}
                </span>
                </p>
                <meta itemprop="availability" content="OutOfStock">

            {/if}

        {/if}

    </div>

{/block}
