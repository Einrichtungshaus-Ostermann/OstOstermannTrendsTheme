
{* file to extend *}
{extends file='parent:frontend/checkout/finish.tpl'}

{* remove shop name from header *}
{block name='frontend_checkout_finish_teaser_title'}
    <h2 class="panel--title teaser--title is--align-center">{s name="finish-header-thank-you"}Vielen Dank für Ihre Bestellung!{/s}</h2>
{/block}

{* remove print notice *}
{block name='frontend_checkout_finish_teaser_print_notice'}{/block}
