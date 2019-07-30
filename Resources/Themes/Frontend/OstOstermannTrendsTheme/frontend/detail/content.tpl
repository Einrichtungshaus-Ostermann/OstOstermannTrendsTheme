
{* file to extend *}
{extends file="parent:frontend/detail/content.tpl"}



{* remove header here *}
{block name="frontend_detail_index_header_container"}{/block}



{* add article name header and free-shipping info *}
{block name="frontend_detail_index_image"}

    {* add article assembly here and show it only when full-service-price *}
    {* insert the assembly surcharge file here to get the logic from the plugin *}
    {include file="frontend/ost-article-assembly-surcharge/full-service-notice.tpl"}

    {* add the header here *}
    {include file="frontend/detail/content/header.tpl"}

    {* parent block *}
    {$smarty.block.parent}

{/block}




{block name="frontend_detail_index_detail"}

    {* parent block *}
    {$smarty.block.parent}


    <div class="ost-cross-selling">

        <div class="title">
            Kunden haben sich ebenfalls angesehen
        </div>

        {action module=widgets controller=recommendation action=viewed articleId=$sArticle.articleID}

    </div>

    <div style="clear: both;"></div>

{/block}



