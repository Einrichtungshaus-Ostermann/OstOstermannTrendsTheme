
{* file to extend *}
{extends file='parent:frontend/detail/actions.tpl'}



{* overwrite to set a new icon and append another actions *}
{block name='frontend_detail_actions_voucher'}

    {* tell a friend snippets *}
    {s name="action-tell-a-friend" assign="tellAFriend"}Artikel empfehlen{/s}
    {s name="action-tell-a-friend-short" assign="tellAFriendShort"}Empfehlen{/s}
    {s name="action-tell-a-friend-icon" assign="tellAFriendIcon"}icon--chat{/s}

    {* html output *}
    <a href="{$sArticle.linkTellAFriend}" rel="nofollow" title="{$tellAFriend|escape}" class="action--link link--tell-a-friend">
        <i class="{$tellAFriendIcon} tell-a-friend--icon"></i> {$tellAFriendShort}
    </a>

    {* article question snippets *}
    {s name="action-article-question" assign="articleQuestion"}Fragen zum Artikel{/s}
    {s name="action-article-question-short" assign="articleQuestionShort"}Fragen zum Artikel{/s}
    {s name="action-article-question-icon" assign="articleQuestionIcon"}icon--phone{/s}

    {* html output *}
    <a href="{$sInquiry}" rel="nofollow" title="{$articleQuestion|escape}" class="action--link link--article-question">
        <i class="{$articleQuestionIcon} article-question--icon"></i> {$articleQuestionShort}
    </a>

    {* pdf snippets *}
    {s name="action-pdf" assign="pdf"}Seite drucken{/s}
    {s name="action-pdf-short" assign="pdfShort"}Seite drucken{/s}
    {s name="action-pdf-icon" assign="pdfButton"}icon--printer{/s}

    {* html output *}
    <a href="{url module="frontend" controller="OstArticleDataSheet" action="index" number=$sArticle.ordernumber}" rel="nofollow" target="_blank" title="{$pdf|escape}" class="action--link link--pdf">
        <i class="{$pdfButton} pdf--icon"></i> {$pdfShort}
    </a>

{/block}
