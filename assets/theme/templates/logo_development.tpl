{extends 'file:templates/base.tpl'}

{block 'body'}
    {set $body_classnames = '_black'}
{/block}

{block 'main'}
    <main class="main">
        <section class="section _pt0 _pb0 _black _radius _radius-bottom">
            {* Хлебные крошки *}
            {include 'file:chunks/template/breadcrumbs.tpl' $breadcrumbs_classnames='_pb0'}

            <section class="section service-intro _pt0 _no-ovh">
                <div class="container service-intro__container">
                    <div class="service-intro__content" data-aos="fade-up">
                        <h1 class="service-intro__title">{$_modx->resource.pagetitle}</h1>

                        <div class="service-intro__subtitle text">
                            {$_modx->resource.intro_text}
                        </div>

                        <button class="service-intro__btn btn btn-reset _violet" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>

                    <div class="service-intro__waves-wrap">
                        <div class="service-intro__waves">
                            <img class="service-intro__wave" src="assets/theme/img/logo-development-wave.svg" alt="" width="790" height="532">
                            <img class="service-intro__wave _gradient" src="assets/theme/img/logo-development-wave-gradient.svg" alt="" width="790" height="532">
                        </div>
                    </div>
                </div>
                
                <img class="service-intro__circle _left" src="assets/theme/img/intro-circle-violet-left.svg" alt="" width="578" height="1115" loading="lazy">
                <img class="service-intro__circle _right" src="assets/theme/img/intro-circle-violet-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>

            {* Шаги *}
            {include 'file:chunks/steps/steps.tpl' $steps_classnames='_violet'}

            {* Преимущества *}
            {include 'file:chunks/pluses/service_pluses.tpl' $service_pluses_classnames='_pt0' $service_pluses_box='_violet-bordered' $title_color='_violet'}

            {* Тарифы *}
            {include 'file:chunks/tarif/tarif.tpl' $section_classnames='_pt0' $title_color='_violet' $box_color='_violet-bordered'}
        </section>

        {* Портфолио *}
        <section class="section _pb0">
            <div class="container">
                <h2 class="section__title" data-aos="fade-up">Портфолио</h2>
                {include 'file:chunks/portfolio/portfolio_items.tpl' filter=2}
            </div>
        </section>
    </main>
{/block}