{extends 'file:templates/base.tpl'}

{block 'body'}
    {set $body_classnames = '_black'}
{/block}

{block 'main'}
    <main class="main">
        <section class="section calculator _pt0 _pb0 _black _radius _radius-bottom">
            {* Хлебные крошки *}
            {include 'file:chunks/template/breadcrumbs.tpl'}
            
            <section class="section _pt0 _no-ovh">
                <div class="container calculator__container">
                    <div class="calculator__content">
                        <h1 class="h2 calculator__h1" data-aos="fade-up">{$_modx->resource.pagetitle}</h1>

                        {'!FetchIt' | snippet : [
	                        'form' => '@FILE:chunks/forms/calculator_form.tpl',
	                        'validate' => 'phone:required,info:blank',
	                        'hooks' => 'spam,email,FormItSaveForm,planfix',
	                        'emailTpl' => '@FILE:chunks/forms/form_report.tpl',
	                        'submitVar' => 'calculator',
	                        'emailSubject' => 'Калькулятор продвижения с сайта ' ~ 'site_name' | config,
	                        'emailTo' => 'email_form' | config,
	                        'emailFrom' => 'emailsender' | config,
	                        'emailFromName' => 'site_name' | config,
	                        'formName' => 'Калькулятор продвижения',
	                        'formFields' => 'page,pageName,website,region,phone,where',
	                        'fieldNames' => 'pageName==Название страницы,page==Ссылка на страницу,website==Ссылка на ваш сайт,region==Регион продвижения,phone==Телефон,where==Где продвигаем'
                        ]}
                    </div>
                    <div class="calculator__waves-wrap">
                        <div class="calculator__waves">
                            <img class="calculator__wave" src="assets/theme/img/calculator-wave.svg" alt="" width="854" height="697">
                            <img class="calculator__wave _gradient" src="assets/theme/img/calculator-wave-gradient.svg" alt="" width="854" height="697">
                        </div>
                    </div>
                </div>
                
                <img class="calculator__circle" src="assets/theme/img/calculator-circle.svg" width="303" height="807" loading="lazy">
                <img class="service-intro__circle _right _calculator" src="assets/theme/img/calculator-circle-right.svg" alt="" width="691" height="1115" loading="lazy">
            </section>

            <section class="section service-steps _pt0">
                <div class="container">
                    <h2 class="section__title _orange" data-aos="fade-up">{$_modx->resource.pluses_title}</h2>

                    <div class="swiper box-swiper _full-tablet" data-swiper-boxes>
                        <div class="swiper-wrapper _cols3">
                        {set $service_pluses = json_decode($_modx->resource.service_pluses, true)}
                            {foreach $service_pluses as $value}
                                <div class="swiper-slide" data-aos="fade-up" data-aos-delay="{$value@index * 50}">
                                    <article class="box _calculator">
                                        <svg class="box__icon {$value.color}" width="60" height="60">
                                            <use xlink:href="assets/theme/img/icons/icons.svg#{$value.svg_sprite_id}"></use>
                                        </svg>
                                        <h3 class="box__title _big">{$value.title}</h3>
                                    </article>
                                </div>
                            {/foreach}
                        </div>
                    </div>
                </div>
            </section>
        </section>

        {* Другие услуги *}
        {include 'file:chunks/services/other_services.tpl' $other_services_classnames='_pb0'}

        {* Сферы продвижения *}
        {include 'file:chunks/industry/industry.tpl'}
    </main>
{/block}