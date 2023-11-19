{extends 'file:templates/base.tpl'}

{block 'body'}
    {set $body_classnames = '_black'}
{/block}

{block 'main'}
    <main class="main">
        {* Интро *}
        <section class="section intro _radius _black">
            <div class="container">
                <div class="intro__content">
                    <h1 class="intro__title text-red" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                    <div class="intro__btns" data-aos="fade-up" data-aos-delay="100">
                        <button class="intro__btn btn btn-reset _red" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button><a class="intro__btn btn btn-reset _white-bordered" href="{7 | url}">Посмотреть кейсы</a>
                    </div>
                </div>
            </div>

            <div class="intro__wave-wrapper" data-aos="fade-left" data-aos-delay="200">
                <img class="intro__wave" src="assets/theme/img/intro-wave.svg" width="1127" height="619" alt="">
                <img class="intro__wave _gradient" src="assets/theme/img/intro-wave-gradient.svg" width="1127" height="619" alt="">
            </div>
        </section>

        {* Услуги *}
        <section class="section _pb0">
            <div class="container">
                <h2 class="section__title" data-aos="fade-up">Мы занимаемся</h2>
                <div class="swiper box-swiper _full-tablet _hover" data-swiper-boxes>
                    <div class="swiper-wrapper">
                        {'pdoResources' | snippet : [
                            'parents'  => 2,
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

        {* Преимущества *}
        <section class="section _pb0">
            <div class="container">
                <div class="section home-pluses _small-radius _black _full-mobile">
                    <div class="container">
                        {if $_modx->resource.pluses_text}
                            <div class="home-pluses__text text-red" data-aos="fade-up">{$_modx->resource.pluses_text}</div>
                        {/if}

                        {set $pluses_items = json_decode($_modx->resource.pluses_items, true)}
                        {if $pluses_items | length > 0}
                            <div class="home-pluses__items">
                                {foreach $pluses_items as $value}
                                    <article class="home-pluses__item" data-aos="fade-up" data-aos-delay="{$value@index * 50}">
                                        <h3 class="home-pluses__title h2">{$value.title}</h3>
                                        <div class="home-pluses__subtitle">{$value.subtitle}</div>
                                    </article>
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                    
                    <svg class="home-pluses__wave" width="297" height="382" data-aos="fade-left">
                        <use xlink:href="assets/theme/img/icons/icons.svg#home-pluses-bg"></use>
                    </svg>
                </div>
            </div>
        </section>

        {* Нам доверяют *}
        {include 'file:chunks/clients/clients.tpl'}

        {* Награды *}
        <section class="section _pb0">
            <section class="section _black _radius">
                <div class="container">
                    {include 'file:chunks/awards/awards.tpl'}
                </div>
            </section>
        </section>

        {* Отзывы *}
        {include 'file:chunks/reviews/reviews.tpl'}

        {* Кейсы *}
        {include 'file:chunks/cases/cases.tpl' $cases_classnames='_pb0' $all_cases='1'}
    </main>
{/block}