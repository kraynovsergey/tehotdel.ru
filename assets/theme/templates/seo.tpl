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
                        
                        {if $_modx->resource.intro_text}
                            <div class="service-intro__subtitle text">
                                {$_modx->resource.intro_text}
                            </div>
                        {/if}

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

            {* Шаги *}
            {include 'file:chunks/steps/steps.tpl' $steps_classnames='_blue'}

            {* SEO-кейсы *}
            {include 'file:chunks/seo-cases/cases.tpl' $seo_cases_classnames='_pt0'}
        </section>
        
        {* Инфо *}
        <section class="section _pb0">
            <div class="container service-intro__container">
                <div class="service-intro" data-aos="fade-up">
                    <div class="h2 text-red service-intro__subtitle">{$_modx->resource.info_text}</div>
                </div>
                <div class="service-intro__waves-wrap _hidden767">
                    <div class="service-intro__waves">
                        <img class="service-intro__wave" src="assets/theme/img/seo-wave.svg" alt="" width="790" height="532" loading="lazy"></div>
                </div>
            </div>
        </section>

        {* Что влияет на результат *}
        {include 'file:chunks/influence/influence.tpl' $section_classnames='_pb0'}
        
        {* Другие услуги *}
        {include 'file:chunks/services/other_services.tpl' $other_services_classnames='_pb0'}

        {* Сферы продвижения *}
        {include 'file:chunks/industry/industry.tpl'}

        {* Преимущества *}
        {include 'file:chunks/pluses/service_pluses.tpl' $service_pluses_box='_middle-blue'}

        {* Стоимость *}
        {include 'file:chunks/price/service_prices.tpl' $service_prices_color='_blue' $service_prices_wave='assets/theme/img/price-block-wave-red.svg'}

        {* Кейсы *}
        {include 'file:chunks/cases/cases.tpl' $cases_classnames='_pb0'}
    </main>
{/block}