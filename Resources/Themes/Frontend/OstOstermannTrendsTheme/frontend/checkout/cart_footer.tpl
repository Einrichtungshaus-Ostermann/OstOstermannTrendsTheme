
{* file to extend *}
{extends file='parent:frontend/checkout/cart_footer.tpl'}



{* remove the voucher input and always show shipping costs calculation *}
{block name='frontend_checkout_cart_footer_add_voucher'}

    {* remove voucher input without any replacement *}
    {* and append the shipping costs table here without any login/logout check *}
    {include file="frontend/checkout/shipping_costs.tpl" calculateShippingCosts=true}

{/block}

{* remove the default shipping costs calculator which is within a few checks *}
{block name='frontend_checkout_shipping_costs_country_trigger'}{/block}
{block name='frontend_checkout_shipping_costs_country_include'}{/block}
