{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                <div class="swiper box-swiper _full-tablet _hover" data-swiper-boxes>
                    <div class="swiper-wrapper">
                        {'pdoResources' | snippet : [
                            'parents' => $_modx->resource.id,
                            'depth' => 0,
                            'sortby' => 'menuindex',
                            'sortdir' => 'ASC',
                            'limit' => 0,
                            'tpl' => '@FILE:chunks/services/service_item.tpl',
                            'includeContent' => 0,
                            'includeTVs' => 'svg_sprite_id',
                            'tvPrefix' => ''
                        ]}
                    </div>
                </div>
            </div>
        </section>
    </main>
{/block}