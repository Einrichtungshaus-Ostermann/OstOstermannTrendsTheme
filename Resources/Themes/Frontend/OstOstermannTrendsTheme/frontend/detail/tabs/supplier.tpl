
{* set namespace *}
{namespace name="frontend/detail/tabs/supplier"}



{* offcanvas button *}
<div class="buttons--off-canvas">
    <a href="#" title="{"{s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}"|escape}" class="close--off-canvas">
        <i class="icon--arrow-left"></i>
        {s name="OffcanvasCloseMenu" namespace="frontend/detail/description"}{/s}
    </a>
</div>

{* actual content *}
<div class="content--supplier">
    <div class="content--title">
        {$sArticle.supplierName}
    </div>
    <div class="product--description">
        {$sArticle.supplierDescription}
    </div>
</div>
