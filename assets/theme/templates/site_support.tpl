{extends 'file:templates/base.tpl'}

{block 'body'}
    {set $body_classnames = '_black'}
{/block}

{block 'main'}
    <main class="main">
        <section class="section _pt0 _pb0 _black _radius _radius-bottom">
            {* Хлебные крошки *}
            {include 'file:chunks/template/breadcrumbs.tpl' $breadcrumbs_classnames='_pb0'}

            {* Интро *}
            <section class="section service-intro _pt0 _no-ovh">
                <div class="container service-intro__container">
                    <div class="service-intro__content" data-aos="fade-up">
                        <h1 class="service-intro__title">{$_modx->resource.pagetitle}</h1>

                        <div class="service-intro__subtitle text">
                            {$_modx->resource.intro_text}

                            {if $_modx->resource.intro_note}
                                <p class="text-small text-gray-blue">{$_modx->resource.intro_note}</p>
                            {/if}
                        </div>

                        <button class="service-intro__btn btn btn-reset _ultra-violet" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>

                    <div class="service-intro__waves-wrap _leads">
                        <div class="service-intro__waves _leads">
                            <img class="service-intro__wave" src="assets/theme/img/site-support-wave.svg" alt="" width="790" height="532">
                            <img class="service-intro__wave _gradient" src="assets/theme/img/site-support-wave-gradient.svg" alt="" width="790" height="532">
                        </div>
                    </div>
                </div>
                
                <img class="service-intro__circle _left" src="assets/theme/img/intro-circle-violet-left.svg" alt="" width="578" height="1115" loading="lazy">
                <img class="service-intro__circle _right" src="assets/theme/img/intro-circle-violet-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>

            {* Шаги *}
            {include 'file:chunks/steps/steps.tpl' $steps_classnames='_pink'}
        </section>

        {* CMS *}
        <section class="section">
            <div class="container">
                <div class="section__header">
                    <h2 class="section__title" data-aos="fade-up">{$_modx->resource.cms_title}</h2>

                    <div class="swiper__navigations reviews__navigations" data-aos="fade-up" data-aos-delay="100">
                        <button class="swiper__navigation _prev btn-reset" type="button" data-swiper-boxes-full-prev>
                            <svg width="111" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#swiper-arrow-left"></use>
                            </svg>
                        </button>
                        <button class="swiper__navigation _next btn-reset" type="button" data-swiper-boxes-full-next>
                            <svg width="111" height="16">
                                <use xlink:href="assets/theme/img/icons/icons.svg#swiper-arrow-left"></use>
                            </svg>
                        </button>
                    </div>
                </div>

                <div class="swiper _full-tablet" data-swiper-boxes-full data-aos="fade-up">
                    <div class="swiper-wrapper">
                        {set $cms = json_decode($_modx->resource.cms, true)}
                        {foreach $cms as $value}
                            <div class="swiper-slide">
                                <article class="box _white _quadrate">
                                    <picture class="box__logo"><img src="assets/images/{$value.image}" alt=""></picture>
                                </article>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </section>

        {* Стоимость *}
        {include 'file:chunks/price/service_prices.tpl' $service_prices_color='_pink' $service_prices_wave='assets/theme/img/price-block-wave-pink.svg'}

        {* Кейсы *}
        {include 'file:chunks/cases/cases.tpl' $cases_classnames='_pb0'}
    </main>
{/block}