
{* file to extend *}
{extends file='parent:frontend/checkout/ajax_cart.tpl'}



{* capture checkout button in enabled and disabled state *}
{block name='frontend_checkout_ajax_cart_open_checkout_inner'}
    {capture name="checkout_button"}
        {$smarty.block.parent}
    {/capture}
{/block}

{block name='frontend_checkout_ajax_cart_open_checkout_inner_disabled'}
    {capture name="checkout_button_disabled"}
        {$smarty.block.parent}
    {/capture}
{/block}

{* prepend the basket button before the checkout button *}
{block name='frontend_checkout_ajax_cart_open_basket'}
    {$smarty.block.parent}
    {$smarty.capture.checkout_button}
    {$smarty.capture.checkout_button_disabled}
{/block}

{* remove "plus shipping costs" *}
{block name="frontend_checkout_ajax_cart_prices_info"}{/block}
