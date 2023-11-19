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
            <section class="section service-intro _pt0">
                <div class="container service-intro__container">
                    <div class="service-intro__content" data-aos="fade-up">
                        <h1 class="service-intro__title">{$_modx->resource.pagetitle}</h1>
                        <button class="service-intro__btn btn btn-reset _blue" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>

                    <div class="service-intro__waves-wrap">
                        <div class="service-intro__waves">
                            <img class="service-intro__wave" src="assets/theme/img/seo-wave.svg" alt="" width="790" height="532">
                            <img class="service-intro__wave _gradient" src="assets/theme/img/seo-wave-gradient.svg" alt="" width="790" height="532">
                        </div>
                    </div>
                </div>
                
                <img class="service-intro__circle _left" src="assets/theme/img/intro-circle-blue-left.svg" alt="" width="578" height="1115" loading="lazy">
                <img class="service-intro__circle _right" src="assets/theme/img/intro-circle-blue-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>
        </section>

        {* Контент *}
        <section class="section service-banners _no-ovh">
            <div class="container service-banners__container">
                <div class="text">
                    <p class="text-big">{$_modx->resource.introtext}</p>
                    {$_modx->resource.content}
                </div>

                <div class="service-banners__items">
                    {set $price_banners = $_modx->resource.parent | resource : 'price_banners' | fromJSON}
                    {foreach $price_banners as $value}
                        <div class="service-banners__item box _dark-blue _full-mobile">
                            <h3 class="service-banners__title section__title _blue">{$value.title}</h3>

                            {if $value.subtitle}
                                <p class="service-banners__text text-small">{$value.subtitle}</p>
                            {/if}

                            <p class="service-banners__price service-banners__title">{$value.price}</p>

                            <button class="btn btn-reset _blue" type="button" data-modal="#modal-order" data-form-field="{$value.title | escape}">Обсудить проект
                                <svg width="31" height="8">
                                    <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                                </svg>
                            </button>

                            <svg class="service-banners__wave" width="196" height="282">
                                <use xlink:href="assets/theme/img/icons/icons.svg#service-banner-wave"></use>
                            </svg>
                        </div>
                    {/foreach}
                </div>
            </div>
        </section>

        {* SEO-кейсы *}
        {include 'file:chunks/seo-cases/cases.tpl' $seo_cases_classnames='_black _radius'}

        {* Кейсы *}
        {include 'file:chunks/cases/cases.tpl' $cases_classnames='_pb0'}

        {* Преимущества *}
        {include 'file:chunks/pluses/service_pluses.tpl' $service_pluses_classnames='_pb0' $service_pluses_box='_middle-blue'}
    </main>
{/block}