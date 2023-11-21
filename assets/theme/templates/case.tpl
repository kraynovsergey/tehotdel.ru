{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container case-page__container">
                <div class="case-page__content text" data-aos="fade-up">
                    <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>
                    <p class="text-gray">{$_modx->resource.publishedon | date : 'd.m.Y'}</p>
                    {$_modx->resource.content}
                </div>

                <aside class="case-page__aside">
                    <h2 class="case-page__aside-title text-big" data-aos="fade-up">Другие статьи:</h2>
                    <div class="swiper box-swiper _full-tablet _hover" data-swiper-cases>
                        <div class="swiper-wrapper _cols1">
                            {'pdoResources' | snippet : [
                                'parents' => $_modx->resource.parent,
                                'resources' => '-'~$_modx->resource.id,
                                'depth' => 0,
                                'sortby' => 'publishedon',
                                'sortdir' => 'DESC',
                                'limit' => 2,
                                'tpl' => '@FILE:chunks/cases/case_item.tpl',
                                'includeContent' => 0,
                                'includeTVs' => 'tags,logo_inline_svg',
                                'tvPrefix' => ''
                            ]}
                        </div>
                    </div>
                </aside>
            </div>
        </section>
    </main>
{/block}