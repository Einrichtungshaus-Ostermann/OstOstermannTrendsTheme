
{* file to extend *}
{extends file="parent:frontend/listing/index.tpl"}



{* insert emotion on top of the page *}
{block name="frontend_index_content_left"}


    {$emotionViewports = [0 => 'xl', 1 => 'l', 2 => 'm', 3 => 's', 4 => 'xs']}



    {if $hasEmotion}
        {$fullscreen = false}

        {block name="frontend_listing_emotions"}
            <div class="content--emotions">

                {foreach $emotions as $emotion}
                    {if $emotion.fullscreen == 1}
                        {$fullscreen = true}
                    {/if}

                    <div class="emotion--wrapper"
                         data-controllerUrl="{url module=widgets controller=emotion action=index emotionId=$emotion.id controllerName=$Controller}"
                         data-availableDevices="{$emotion.devices}">
                    </div>
                {/foreach}

                {block name="frontend_listing_list_promotion_link_show_listing"}

                    {$showListingCls = "emotion--show-listing"}

                    {foreach $showListingDevices as $device}
                        {$showListingCls = "{$showListingCls} hidden--{$emotionViewports[$device]}"}
                    {/foreach}

                    {if $showListingButton}
                        <div class="{$showListingCls}{if $fullscreen} is--align-center{/if}">
                            <a href="{url controller='cat' sPage=1 sCategory=$sCategoryContent.id}" title="{$sCategoryContent.name|escape}" class="link--show-listing btn is--primary">
                                {s name="ListingActionsOffersLink"}Weitere Artikel in dieser Kategorie &raquo;{/s}
                            </a>
                        </div>
                    {/if}
                {/block}
            </div>
        {/block}
    {/if}




    {$smarty.block.parent}


{/block}