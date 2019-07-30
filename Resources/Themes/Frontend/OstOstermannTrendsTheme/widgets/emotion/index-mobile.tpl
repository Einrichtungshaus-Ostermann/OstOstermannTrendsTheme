
{* file to extend *}
{extends file='parent:widgets/emotion/index.tpl'}



{* ... *}
{block name="widgets/emotion/index/config"}

    {* default configuration *}
    {$smarty.block.parent}

    {* ... *}
    {$baseWidth = 767}

{/block}
