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
                        </div>

                        <button class="service-intro__btn btn btn-reset _green" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>
                    
                    <div class="service-intro__waves-wrap">
                        <div class="service-intro__waves">
                            <img class="service-intro__wave" src="assets/theme/img/smm-wave.svg" alt="" width="790" height="532">
                            <img class="service-intro__wave _gradient" src="assets/theme/img/smm-wave-gradient.svg" alt="" width="790" height="532">
                        </div>
                    </div>
                </div>
                
                <img class="service-intro__circle _left" src="assets/theme/img/intro-circle-pink-left.svg" alt="" width="578" height="1115" loading="lazy">
                <img class="service-intro__circle _right" src="assets/theme/img/intro-circle-pink-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>

            {* Шаги *}
            {include 'file:chunks/steps/steps.tpl' $steps_classnames='_green'}

            {* Преимущества *}
            {include 'file:chunks/pluses/service_pluses.tpl' $service_pluses_classnames='_pt0' $service_pluses_box='_violet-bordered' $title_color='_violet' $arrow_color='_green'}

            {* Тарифы *}
            {include 'file:chunks/tarif/tarif.tpl' $section_classnames='_pt0' $title_color='_green' $box_color='_green-bordered'}
        </section>

        {* Подробнее о продвижении *}
        <section class="section _pb0">
            <div class="container">
                <h2 class="section__title" data-aos="fade-up">{$_modx->resource.more_title}</h2>

                <div class="section _small-padding _pt0 text" data-aos="fade-up">
                    {$_modx->resource.more_text}
                </div>

                <div class="swiper box-swiper _full-tablet" data-swiper-boxes>
                    <div class="swiper-wrapper">
                        {set $more_items = json_decode($_modx->resource.more_items, true)}
                        {foreach $more_items as $value}
                            <div class="swiper-slide smm__slide-statistic" data-aos="fade-up" data-aos-delay="{$value@index * 50}">
                                <div class="box _middle-blue">
                                    <div class="box__title h2">{$value.title}</div>
                                    <p class="box__text text-small">{$value.subtitle}</p>
                                </div>
                            </div>
                        {/foreach}
                    </div>
                </div>
            </div>
        </section>
        
        {* Создание групп *}
        {include 'file:chunks/influence/influence.tpl' $section_classnames='_pb0'}
    </main>
{/block}