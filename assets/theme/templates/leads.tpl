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

                        <button class="service-intro__btn btn btn-reset _ultra-violet" type="button"
                            data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                    </div>

                    <div class="service-intro__waves-wrap _leads">
                        <div class="service-intro__waves _leads">
                            <img class="service-intro__wave" src="assets/theme/img/leads-wave.svg" alt="" width="790" height="532">
                            <img class="service-intro__wave _gradient" src="assets/theme/img/leads-wave-gradient.svg" alt="" width="790" height="532">
                        </div>
                    </div>
                </div>
                
                <img class="service-intro__circle _left _leads" src="assets/theme/img/intro-circle-leads-left.svg" alt="" width="578" height="1115" loading="lazy">
                <img class="service-intro__circle _right" src="assets/theme/img/intro-circle-leads-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>

            {* Шаги *}
            {include 'file:chunks/steps/steps.tpl' $steps_classnames='_ultra-violet'}

            {* Награды *}
            <section class="section _black _pt0">
                <div class="container">
                    {include 'file:chunks/awards/awards.tpl' $title_color='_ultra-violet'}
                </div>
            </section>
        </section>

        {* Инфо *}
        <section class="section _pb0">
            <div class="container">
                <div class="leads__box">
                    <div class="text">{$_modx->resource.info_text}</div>
                    <button class="intro__btn btn btn-reset _red _hidden-svg-mobile" type="button"
                        data-modal="#modal-order">Обсудить проект
                        <svg width="31" height="8">
                            <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                        </svg>
                    </button>
                </div>
            </div>
        </section>
    </main>
{/block}