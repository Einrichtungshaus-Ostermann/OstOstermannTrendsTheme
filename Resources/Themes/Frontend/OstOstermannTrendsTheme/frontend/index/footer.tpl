
{* file to extend *}
{extends file="parent:frontend/index/footer.tpl"}



{* remove copyright and shopware logo *}
{block name='frontend_index_shopware_footer'}{/block}

{* replace the complete footer with our grid *}
{block name='frontend_index_footer_menu'}

    <div class="grid--container">

        <div class="grid--service">
            <h5>{s name="service--title"}Kundenservice{/s}</h5>
            <nav>
                <ul class="navigation--list" role="menu">
                    {foreach $sMenu.bottom as $item}
                        <li class="navigation--entry" role="menuitem">
                            <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                {$item.description}
                            </a>
                        </li>
                    {/foreach}
                </ul>
            </nav>
        </div>

        <div class="grid--stores">
            <h5>{s name="stores--title"}Filialen{/s}</h5>
            {block name="stores--list"}{/block}
        </div>

        <div class="grid--payment-methods">
            <h5>{s name="payment-methods--title"}Zahlungsarten{/s}</h5>
            <div>
            {block name='payment-methods--list'}
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-paypal.png'}" alt="Paypal" title="Paypal">
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-sofort.png'}" alt="Sofort" title="Sofort">
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-kreditkarte.png'}" alt="Kreditkarte" title="Kreditkarte">
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-credit-plus.png'}" alt="Credit-Plus" title="Credit-Plus">
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-vorkasse.png'}" alt="Vorkasse" title="Vorkasse">
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-nachnahme.png'}" alt="Nachnahme" title="Nachnahme">
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-rechnung.png'}" alt="Rechnung" title="Rechnung">
                <img src="{link file='frontend/_public/src/img/payment-icons/payment-ratenkauf.png'}" alt="Ratenkauf" title="Ratenkauf">
            {/block}
            <div style="clear: both;"></div>
            </div>
        </div>

        <div class="grid--dispatch-countries">
            <h5>{s name="worldwide-shipping--title"}Weltweiter Versand{/s}</h5>
            <div>
            <img src="{link file='frontend/_public/src/img/footer-icons/multiple-flags.png'}" alt="{s name="worldwide-shipping--img-title"}Weltweiter Versand{/s}" title="{s name="worldwide-shipping--img-title"}Weltweiter Versand{/s}">
            </div>
        </div>

        <div class="grid--shops">
            <h5>{s name="shops--title"}Möbel Shops{/s}</h5>
            {block name="shops--list"}{/block}
        </div>

        <div class="grid--content">
            <h5>{s name="content--title"}Formales{/s}</h5>
            <nav>
                <ul class="navigation--list" role="menu">
                    {foreach $sMenu.bottom2 as $item}
                        <li class="navigation--entry" role="menuitem">
                            <a class="navigation--link" href="{if $item.link}{$item.link}{else}{url controller='custom' sCustom=$item.id title=$item.description}{/if}" title="{$item.description|escape}"{if $item.target} target="{$item.target}"{/if}>
                                {$item.description}
                            </a>
                        </li>
                    {/foreach}
                </ul>
            </nav>
        </div>

        <div class="grid--contact">
            <h5>{s name="contact--title"}Kontakt{/s}</h5>
            {block name="contact--content"}{/block}
        </div>

        <div class="grid--dispach-methods">
            <h5>{s name="dispatch-methods--title"}Versand{/s}</h5>
            <div>
                <img src="{link file='frontend/_public/src/img/shipping-icons/shipping-dhl.jpg'}" alt="{s name="dispatch-methods--dhl-img-alt"}DHL{/s}" title="{s name="dispatch-methods--dhl-img-title"}DHL{/s}">
                <img src="{link file='frontend/_public/src/img/shipping-icons/shipping-hermes.jpg'}" alt="{s name="dispatch-methods--hermes-img-alt"}Hermes{/s}" title="{s name="dispatch-methods--hermes-img-title"}Hermes{/s}">
                <img src="{link file='frontend/_public/src/img/shipping-icons/shipping-self-dispatch.jpg'}" alt="{s name="dispatch-methods--self-dispatch-img-alt"}Auslieferung{/s}" title="{s name="dispatch-methods--self-dispatch-img-title"}Auslieferung{/s}">
                <img src="{link file='frontend/_public/src/img/shipping-icons/shipping-pickup.jpg'}" alt="{s name="dispatch-methods--pickup-img-alt"}Selbstabholung{/s}" title="{s name="dispatch-methods--pickup-img-title"}Selbstabholung{/s}">
            </div>
        </div>

        <div class="grid--security">
            <div class="block-group">
                <div class="block">
                    <h5>{s name="security--title"}Geprüfte Sicherheit{/s}</h5>
                    <p>
                        {s name="security--content"}Mit geprüfter Qualität, Sicherheit und Transparenz ist ostermann.de in hohem Maße vertrauenswürdig.{/s}
                    </p>
                </div>
                <div class="block">
                    {block name="security--content"}
                        <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-google.jpg'}" alt="..." title="..."></a>
                        <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-ssl.jpg'}" alt="..." title="..."></a>
                        <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-top-shop.jpg'}" alt="..." title="..."></a>
                        <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-trusted-shop.jpg'}" alt="..." title="..."></a>
                    {/block}
                </div>
            </div>
        </div>

        <div class="grid--newsletter">
            <h5>{s name="newsletter--title"}Newsletter{/s}</h5>
            <div class="block-group">
                <form class="newsletter--form block" action="{url controller='newsletter'}" method="post">
                    <input type="hidden" value="1" name="subscribeToNewsletter" />
                    <div class="content">
                        <input type="email" name="newsletter" class="newsletter--field" placeholder="{s name="IndexFooterNewsletterValue"}{/s}" />
                        {if {config name="newsletterCaptcha"} !== "nocaptcha"}
                            <input type="hidden" name="redirect">
                        {/if}
                        <button type="submit" class="newsletter--button btn">
                            <i class="icon--mail"></i> <span class="button--text">{s name='IndexFooterNewsletterSubmit'}{/s}</span>
                        </button>
                    </div>
                    {if {config name=ACTDPRTEXT} || {config name=ACTDPRCHECK}}
                        {$hideCheckbox=false}
                        {if {config name=newsletterCaptcha} !== "nocaptcha"}
                            {$hideCheckbox=true}
                        {/if}
                        {include file="frontend/_includes/privacy.tpl" hideCheckbox=$hideCheckbox}
                    {/if}
                </form>
                <p class="block">
                    {s name="newsletter--content"}Tragen Sie Ihre E-Mail-Adresse ein und erhalten Sie einen 5€ Gutschein geschenkt, tolle Angebote und News vor allen anderen. Abmeldung jederzeit möglich.{/s}
                </p>
            </div>
        </div>

        <div class="grid--social-media">
            <h5>{s name="social-media--title"}Sie finden aus auch auf{/s}</h5>
            <div class="block-group">
                <p class="block">
                    {s name="social-media--content"}Folgen Sie uns und werden Sie Fan. Viele besondere Aktionen und Posts erwarten Sie und sorgen für Freunde am Einrichten.{/s}
                </p>
                <div class="block">
                    {block name="social-media--content"}{/block}
                </div>
            </div>
        </div>

        <div class="grid--seo-content">
            <h5>{block name="seo-content--title"}SEO Content Title{/block}</h5>
            <p>{block name="seo-content--content"}SEO Content Content{/block}</p>
        </div>

    </div>

{/block}
