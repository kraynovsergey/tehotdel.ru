{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                <div class="tabs__btns scroll _hidden" data-aos="fade-up">
                    <button class="btn btn-reset tabs__btn _red _active" type="button" data-tab="9999">Все</button>
                    <button class="btn btn-reset tabs__btn _red" type="button" data-tab="Кейсы">#Кейсы</button>
                    <button class="btn btn-reset tabs__btn _red" type="button" data-tab="Статьи">#Статьи</button>
                    {'tagLister' | snippet : [
                        'tv' => 'tags',
                        'tpl' => 'tags_item.tpl'
                    ]}
                </div>

                <div class="tabs__content _active" data-tab-content="9999">
                    <div class="swiper box-swiper _full-tablet _hover" data-swiper-cases>
                        <div class="swiper-wrapper">
                            {'pdoResources' | snippet : [
                                'parents' => $_modx->resource.id,
                                'depth' => 0,
                                'sortby' => 'publishedon',
                                'sortdir' => 'DESC',
                                'limit' => 0,
                                'tpl' => '@FILE:chunks/cases/case_item.tpl',
                                'includeContent' => 0,
                                'includeTVs' => 'tags,logo_inline_svg',
                                'tvPrefix' => ''
                            ]}
                        </div>
                    </div>
                </div>

                {'tagLister' | snippet : [
                    'tv' => 'tags',
                    'tpl' => 'tags_content.tpl'
                ]}
            </div>
        </section>
    </main>
{/block}