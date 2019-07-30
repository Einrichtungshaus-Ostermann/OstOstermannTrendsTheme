
{* file to extend *}
{extends file='parent:widgets/checkout/info.tpl'}



{* add name to default notepad and add service icon *}
{block name="frontend_index_checkout_actions_notepad"}




    {s name="notepad-link-title" assign="snippetNotepadLinkTitle"}Merkzettel{/s}
    {s name="notepad-item-name" assign="snippetNotepadItemName"}Merkzettel{/s}

    <li class="navigation--entry entry--notepad" role="menuitem">
        <a href="{url controller='note'}" title="{$snippetNotepadLinkTitle|escape}" class="btn entry--link">
            <i class="icon--heart"></i>
            {if $sNotesQuantity > 0}
                <span class="badge notes--quantity">
                    {$sNotesQuantity}
                </span>
            {/if}
            <span class="name">{$snippetNotepadItemName}</span>
        </a>
    </li>




    {s name="service-link-title" assign="snippetServiceLinkTitle"}Service{/s}
    {s name="service-item-name" assign="snippetServiceItemName"}Service{/s}

    <li class="navigation--entry entry--service" role="menuitem">
        <a href="{url controller='home'}" title="{$snippetServiceLinkTitle|escape}" class="btn entry--link">
            <i class="icon--phone"></i>
            <span class="name">{$snippetServiceItemName}</span>
        </a>
    </li>
{/block}



{* add name to account icon *}
{block name="frontend_index_checkout_actions_account"}
    <a href="{url controller='account'}"
       title="{"{if $userInfo}{s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}{$userInfo['firstname']}{s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s} - {/if}{s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}"|escape}"
       class="btn entry--link account--link{if $userInfo} account--user-loggedin{/if}"


    >
        <i class="icon--account"></i>
        {if $userInfo}
            <span class="account--display navigation--personalized">
                        <span class="account--display-greeting">
                            {s name="AccountGreetingBefore" namespace="frontend/account/sidebar"}{/s}
                            {$userInfo['firstname']}
                            {s name="AccountGreetingAfter" namespace="frontend/account/sidebar"}{/s}
                        </span>
                {s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}
                    </span>
        {else}
            <span class="account--display">
                        {s namespace='frontend/index/checkout_actions' name='IndexLinkAccount'}{/s}
                    </span>
        {/if}

        <span class="name">Mein Konto</span>
    </a>
{/block}



{* add name to cart item *}
{block name="frontend_index_checkout_actions_cart"}
    <li class="navigation--entry entry--cart" role="menuitem">
        {s namespace="frontend/index/checkout_actions" name="IndexLinkCart" assign="snippetIndexLinkCart"}{/s}
        <a class="btn entry--link cart--link" href="{url controller='checkout' action='cart'}" title="{$snippetIndexLinkCart|escape}">
            <span class="cart--display">
                {if $sUserLoggedIn}
                    {s name='IndexLinkCheckout' namespace='frontend/index/checkout_actions'}{/s}
                {else}
                    {s namespace='frontend/index/checkout_actions' name='IndexLinkCart'}{/s}
                {/if}
            </span>

            <span class="badge is--primary is--minimal cart--quantity{if $sBasketQuantity < 1} is--hidden{/if}">{$sBasketQuantity}</span>

            <i class="icon--basket"></i>

            <span class="cart--amount">
                {$sBasketAmount|currency} {s name="Star" namespace="frontend/listing/box_article"}{/s}
            </span>


            <span class="name">Warenkorb</span>


        </a>

        <div class="ajax-loader">&nbsp;</div>



    </li>
{/block}