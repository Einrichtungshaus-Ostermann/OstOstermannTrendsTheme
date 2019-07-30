
{* file to extend *}
{extends file="parent:frontend/detail/content/buy_container.tpl"}




{* remove product actions here *}
{block name="frontend_detail_index_actions"}{/block}




{* add supplier image and article number *}
{block name="frontend_detail_index_data"}

    {* supplier image *}
    {if $sArticle.supplierImg != ""}
        <div class="product--supplier">
            {s name="DetailDescriptionLinkInformation" namespace="frontend/detail/description" assign="snippetDetailDescriptionLinkInformation"}{/s}
            <a href="{url controller='listing' action='manufacturer' sSupplier=$sArticle.supplierID}"
               title="{$snippetDetailDescriptionLinkInformation|escape}"
               class="product--supplier-link">
                <img src="{$sArticle.supplierImg}" alt="{$sArticle.supplierName|escape}">
            </a>
        </div>
    {/if}

    {* meta article number *}
    <meta itemprop="productID" content="{$sArticle.articleDetailsID}"/>

    {* article number *}
    <div class="product-info--sku">
        {s name="DetailDataId" namespace="frontend/detail/data"}{/s} <span itemprop="sku">{$sArticle.ordernumber}</span>
    </div>

    {* parent block *}
    {$smarty.block.parent}

    {* assembly surcharge info *}
    {include file="frontend/ost-article-assembly-surcharge/article-details.tpl"}

{/block}





{* remove attributes completely and replace it with custom containers *}
{block name='frontend_detail_index_buy_container_base_info'}

    <div class="product--actions-container">
        <nav class="product--actions">
            {include file="frontend/detail/actions.tpl"}
        </nav>
    </div>

    <div class="product--payment-box">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-paypal.png'}" alt="Paypal" title="Paypal">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-sofort.png'}" alt="Sofort" title="Sofort">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-kreditkarte.png'}" alt="Kreditkarte" title="Kreditkarte">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-credit-plus.png'}" alt="Credit-Plus" title="Credit-Plus">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-vorkasse.png'}" alt="Vorkasse" title="Vorkasse">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-nachnahme.png'}" alt="Nachnahme" title="Nachnahme">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-rechnung.png'}" alt="Rechnung" title="Rechnung">
        <img src="{link file='frontend/_public/src/img/payment-icons/payment-ratenkauf.png'}" alt="Ratenkauf" title="Ratenkauf">
    </div>

    <div class="product--security-box">
        <h5>Sicher einkaufen</h5>
        <p>
            Mit geprüfter Qualität, Sicherheit und Transparenz ist www.ostermann.de in hohem Maße vertrauenswürdig.
        </p>
        <div>
            <a href="https://www.trustedshops.de/bewertung/info_XC1DC221A86DE4CE5E95687AEA1329475.html" target="_blank">
                <div class="" style="background-image:url({link file='frontend/_public/src/img/trusted-shop-icons/trusted-shop-logo-212x212.png'});">
                    <ul class="list--unordered is--checked">
                        <li class="vertrauen">Vertrauenswürdiger Shop</li>
                        <li class="sicherheit">Hohe Sicherheit</li>
                        <li class="zuverlaessig">98,97% Zuverlässig</li>
                    </ul>
                </div>
            </a>
        </div>
    </div>

{/block}



