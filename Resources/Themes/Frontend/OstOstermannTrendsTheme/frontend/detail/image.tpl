
{* file to extend *}
{extends file='parent:frontend/detail/image.tpl'}



{* remove dot navigation *}
{block name='frontend_detail_image_box_dots'}{/block}

{* remove thumbnails here *}
{block name='frontend_detail_image_thumbs'}{/block}

{* and append thumbnails later *}
{block name="frontend_detail_image_box"}
    {$smarty.block.parent}
    {include file="frontend/detail/images.tpl"}
{/block}
