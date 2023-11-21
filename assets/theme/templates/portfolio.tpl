{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                <div class="tabs__btns scroll _hidden" data-aos="fade-up">
                    <button class="btn btn-reset tabs__btn _red {$.server['HTTP_REFERER'] == (18 | url : [ 'scheme' => 'full' ]) ? '' : '_active'}" type="button" data-tab="1">Сайты</button>
                    <button class="btn btn-reset tabs__btn _red {$.server['HTTP_REFERER'] == (18 | url : [ 'scheme' => 'full' ]) ? '_active' : ''}" type="button" data-tab="2">Логотипы</button>
                </div>

                <div class="tabs__content {$.server['HTTP_REFERER'] == (18 | url : [ 'scheme' => 'full' ]) ? '' : '_active'}" data-tab-content="1">
                    {include 'file:chunks/portfolio/portfolio_items.tpl' $template=14}
                </div>
                <div class="tabs__content {$.server['HTTP_REFERER'] == (18 | url : [ 'scheme' => 'full' ]) ? '_active' : ''}" data-tab-content="2">
                    {include 'file:chunks/portfolio/portfolio_items.tpl' $template=24}
                </div>
            </div>
        </section>
    </main>
{/block}