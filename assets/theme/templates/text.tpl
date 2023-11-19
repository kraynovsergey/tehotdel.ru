{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {* Хлебные крошки *}
        {include 'file:chunks/template/breadcrumbs.tpl'}
            
        {* Текст *}
        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>
                
                <div class="text" data-aos="fade-up">
                    {$_modx->resource.content}
                </div>
            </div>
        </section>
    </main>
{/block}