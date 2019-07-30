
{* file to extend *}
{extends file='parent:widgets/emotion/index.tpl'}



{* ... *}
{block name="widgets/emotion/index/config"}

    {* default configuration *}
    {$smarty.block.parent}

    {* ... *}
    {$baseWidth = 1023}

{/block}
