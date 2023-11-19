{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                <div class="tabs__btns scroll _hidden" data-aos="fade-up">
                    {'tagLister' | snippet : [
                        'tv' => 'tags',
                        'tpl' => 'tags_item.tpl'
                    ]}
                </div>

                {'tagLister' | snippet : [
                    'tv' => 'tags',
                    'tpl' => 'tags_content.tpl'
                ]}
            </div>
        </section>
    </main>
{/block}