
{* file to extend *}
{extends file='parent:widgets/emotion/index.tpl'}



{* ... *}
{block name="widgets/emotion/index/config"}

    {* default configuration *}
    {$smarty.block.parent}

    {* force base width to always be 1160 - even in listing because we *}
    {* have the emotion on top of the category list *}
    {$baseWidth = 1160}

{/block}
