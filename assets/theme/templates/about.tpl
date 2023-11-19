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

        {* Награды *}
        <section class="section _pb0">
            <div class="container">
                {include 'file:chunks/awards/awards.tpl'}
            </div>
        </section>

        {* Нам доверяют *}
        {include 'file:chunks/clients/clients.tpl'}

        {* Отзывы *}
        {include 'file:chunks/reviews/reviews.tpl'}

        {* Кейсы *}
        {include 'file:chunks/cases/cases.tpl' $cases_classnames='_pb0' $all_cases='1'}
    </main>
{/block}