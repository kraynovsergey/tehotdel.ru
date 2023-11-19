{extends 'file:templates/base.tpl'}

{block 'main'}
    <main class="main _inner no-lenis">
        {include 'file:chunks/template/breadcrumbs.tpl'}

        <section>
            <div class="container">
                <h1 class="h2 section__title" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                {if $_modx->resource.website}
                    <div class="section _small-padding _pt0" data-aos="fade-up">
                        <div class="btn__wrap">
                            <a class="btn btn-reset _red" href="{$_modx->resource.website}" target="_blank" rel="nofollow">Перейти на сайт
                                <svg width="31" height="8">
                                    <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                </svg>
                            </a>
                        </div>
                    </div>
                {/if}

                {set $image = 'pThumb' | snippet : [
                    'input' => $_modx->resource.screenshot,
                    'options' => 'w=1760&zc=0&q=90&f=jpg'
                ]}

                {set $image_2x = 'pThumb' | snippet : [
                    'input' => $_modx->resource.screenshot,
                    'options' => 'w=2000&zc=0&q=90&f=jpg'
                ]}

                <picture class="picture portfolio-page__picture">
                    <img srcset="{$image_2x} 2x, {$image} 1x" alt="{$_modx->resource.pagetitle | escape}" width="1760" height="2098">
                </picture>
            </div>
        </section>
    </main>
{/block}