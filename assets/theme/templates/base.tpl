<!DOCTYPE html>
<html lang="{'cultureKey' | config}">
<head>
    {include 'file:chunks/template/meta.tpl'}
</head>
{block 'body'}{/block}
<body class="{$body_classnames}">
    {include 'file:chunks/template/header.tpl'}

    {block 'main'}{/block}

    {block 'footer'}
        {include 'file:chunks/template/footer.tpl'}
    {/block}

    {include 'file:chunks/template/nav_modal.tpl'}

    {include 'file:chunks/forms/order_modal.tpl'}

    {include 'file:chunks/forms/thankyou_modal.tpl'}

    {block 'scripts'}{/block}
        
    {include 'file:chunks/template/scripts.tpl'}
</body>
</html>