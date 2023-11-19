{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner">
        {* Хлебные крошки *}
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                {set $reviews = $.php.array_reverse(21 | resource : 'reviews' | fromJSON)}
                <div class="swiper box-swiper _full-tablet _hover" data-swiper-boxes>
                    <div class="swiper-wrapper _cols2">
                        {foreach $reviews as $value}
                            {include 'file:chunks/reviews/reviews_item.tpl'}
                        {/foreach}
                    </div>
                </div>
            </div>
        </section>
    </main>
{/block}