
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
            {block name="payment-methods--list"}{/block}
        </div>

        <div class="grid--dispatch-countries">
            <h5>{s name="worldwide-shipping--title"}Weltweiter Versand{/s}</h5>
            <img src="{link file='frontend/_public/src/img/footer-icons/multiple-flags.png'}" alt="{s name="worldwide-shipping--img-title"}Weltweiter Versand{/s}" title="{s name="worldwide-shipping--img-title"}Weltweiter Versand{/s}">
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
            <h5>{s name="dispach-methods--title"}Versand{/s}</h5>
            <img src="{link file='frontend/_public/src/img/footer-icons/dispatch-methods.jpg'}" alt="{s name="dispach-methods--img-title"}Versand{/s}" title="{s name="dispach-methods--img-title"}Versand{/s}">
        </div>

        <div class="grid--security">
            <h5>{s name="security--title"}Geprüfte Sicherheit{/s}</h5>
            <div class="block-group">
                <p class="block">
                    {s name="security--content"}Mit geprüfter Qualität, Sicherheit und Transparenz ist ostermann.de in hohem Maße vertrauenswürdig.{/s}
                </p>
                <div class="block">
                    <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-google.jpg'}" alt="..." title="..."></a>
                    <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-ssl.jpg'}" alt="..." title="..."></a>
                    <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-top-shop.jpg'}" alt="..." title="..."></a>
                    <a href="google.de"><img src="{link file='frontend/_public/src/img/footer-icons/security-trusted-shop.jpg'}" alt="..." title="..."></a>
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
