
{* file to extend *}
{extends file="parent:frontend/faq/advanced.tpl"}



{* our own sidebar with faq categories *}
{block name='frontend_index_content_left'}
    {include file='frontend/faq/sidebar.tpl'}
{/block}



{* prepend our home symbol *}
{block name='frontend_index_breadcrumb'}

    <nav class="content--breadcrumb block">
        <ul class="breadcrumb--list" role="menu" itemscope itemtype="http://schema.org/BreadcrumbList">
            <li class="breadcrumb--entry is--home-entry" itemprop="itemListElement" itemscope="" itemtype="http://schema.org/ListItem">
                <a class="breadcrumb--link" href="{url controller='index'}" title="Home" itemprop="item">
                    <i class="icon--house"></i>
                </a>
            </li>
            <li class="breadcrumb--separator">
                <i class="icon--arrow-right"></i>
            </li>
            <li class="breadcrumb--entry" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                <a class="breadcrumb--link" href="{$faq.page.url}" title="{$faq.page.title|escape}" itemprop="item">
                    <link itemprop="url" href="{$faq.page.url}" />
                    <span class="breadcrumb--title" itemprop="name">{$faq.page.title}</span>
                </a>
            </li>
            {if $faq.category_selected_id}
                <li class="breadcrumb--separator">
                    <i class="icon--arrow-right"></i>
                </li>
                <li class="breadcrumb--entry is--active" itemprop="itemListElement" itemscope itemtype="http://schema.org/ListItem">
                    <a class="breadcrumb--link" href="{$faq.category_selected_url}" title="{$faq.category_selected_title|escape}" itemprop="item">
                        <link itemprop="url" href="{$faq.category_selected_url}" />
                        <span class="breadcrumb--title" itemprop="name">{$faq.category_selected_title}</span>
                    </a>
                </li>
            {/if}
        </ul>
    </nav>

{/block}



{* we have to force the title or we wouldnt have "faq" as seo url *}
{block name='frontend_index_content_faq_title_description'}
    <div class="faqWelcomeBox panel panel--body is--wide has--border is--rounded">
        <h1>Kunden Service-Center</h1>
    </div>
{/block}



{* add home-page without and selected category *}
{block name='frontend_index_content_faq_list'}

    {if $faq.category_selected_id|intval == 0 && $smarty.post.faq_search_input == ""}
        <div class="faq--home">
            <div class="header">
                <img src="{link file='frontend/_public/src/img/faq/teaser-online-kunden-center.jpg'}" style="width: 100%;"/>
            </div>
            <div class="block-group">
                <div class="block">
                    <a href="/faq/allgemeines">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-allgemeines-225x225.jpg'}"/>
                    </a>
                </div>
                <div class="block">
                    <a href="/faq/bestellung">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-bestellung-225x225.jpg'}"/>
                    </a>
                </div>
                <div class="block">
                    <a href="/faq/bezahlung">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-bezahlung-225x225.jpg'}"/>
                    </a>
                </div>
                <div class="block">
                    <a href="/faq/auftragsstatus">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-auftragsstatus-225x225.jpg'}"/>
                    </a>
                </div>
                <div class="block">
                    <a href="/faq/lieferung">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-lieferung-225x225.jpg'}"/>
                    </a>
                </div>
                <div class="block">
                    <a href="/faq/reklamation">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-reklamation-225x225.jpg'}"/>
                    </a>
                </div>
                <div class="block">
                    <a href="/faq/services">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-services-225x225.jpg'}"/>
                    </a>
                </div>
                <div class="block">
                    <a href="/faq/pflegehinweise">
                        <img src="{link file='frontend/_public/src/img/faq/kunden-service-center-pflegehinweise-225x225.jpg'}"/>
                    </a>
                </div>
            </div>
        </div>
    {/if}

    {$smarty.block.parent}

{/block}
