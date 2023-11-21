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
                            <p>{$_modx->resource.intro_text}</p>
                        </div>

                        <button class="service-intro__btn btn btn-reset _green" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>

                    <div class="service-intro__waves-wrap">
                        <div class="service-intro__waves">
                            <img class="service-intro__wave" src="assets/theme/img/site-development-wave.svg" alt="" width="790" height="532">
                            <img class="service-intro__wave _gradient" src="assets/theme/img/site-development-wave-gradient.svg" alt="" width="790" height="532">
                        </div>
                    </div>
                </div>
                
                <img class="service-intro__circle _left" src="assets/theme/img/intro-circle-green-left.svg" alt="" width="578" height="1115" loading="lazy">
                <img class="service-intro__circle _right" src="assets/theme/img/intro-circle-green-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>

            {* Шаги *}
            {include 'file:chunks/steps/steps.tpl' $steps_classnames='_green'}
        </section>

        {* Портфолио *}
        <section class="section">
            <div class="container">
                <div class="section__header" data-aos="fade-up">
                    <h2 class="section__title">Портфолио</h2>
                    <a class="cases__all btn btn-reset _black-bordered" href="{4 | url}">Все проекты</a>
                </div>
                {include 'file:chunks/portfolio/portfolio_items.tpl' $template=14 $limit=9}
            </div>
        </section>

        {* Стоимость *}
        {include 'file:chunks/price/service_prices.tpl' $service_prices_color='_green' $service_prices_wave='assets/theme/img/price-block-wave-green.svg'}

        {* Другие услуги *}
        {include 'file:chunks/services/other_services.tpl' $other_services_classnames='_pb0'}
    </main>
{/block}