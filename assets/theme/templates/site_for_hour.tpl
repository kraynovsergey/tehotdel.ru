{extends 'file:templates/base.tpl'}

{block 'body'}
    {set $body_classnames = '_black'}
{/block}

{block 'main'}
    <main class="main">
        {* Интро *}
        <section class="section intro _radius _black">
            <div class="container">
                <div class="intro__content" data-aos="fade-up">
                    <h1 class="intro__title text-red">{$_modx->resource.pagetitle}</h1>
                    
                    <div class="intro__subtitle text">
                        {$_modx->resource.intro_text}
                    </div>
                    
                    <div class="intro__btns">
                        <button class="intro__btn btn btn-reset _red" type="button" data-modal="#modal-order">Обсудить проект
                            <svg width="31" height="8">
                                <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                            </svg>
                        </button>
                        
                        <a class="intro__btn btn btn-reset _white-bordered" href="{$_modx->resource.video}" data-fancybox>{$_modx->resource.video_title}</a>
                    </div>
                </div>
            </div>

            <div class="intro__wave-wrapper" data-aos="fade-left" data-aos-delay="200">
                <img class="intro__wave" src="assets/theme/img/intro-wave.svg" width="1127" height="619">
                <img class="intro__wave _gradient" src="assets/theme/img/intro-wave-gradient.svg" width="1127" height="619">
            </div>
        </section>

        {* Скачать документ технологического стека *}
        <div class="section _pb0" data-aos="fade-up">
            <div class="container">
                <section class="section _white _radius">
                    <div class="container">
                        <h2 class="section__title _no-marker">
                            <a href="{$_modx->resource.document}" target="_blank">{$_modx->resource.document_linktext}</a> {$_modx->resource.document_linktext_note}
                        </h2>
                        <p class="section__note">{$_modx->resource.document_subtitle}</p>
                    </div>
                </section>
            </div>
        </div>

        {* Преимущества *}
        {include 'file:chunks/pluses/service_pluses.tpl' $service_pluses_box='_middle-blue' $service_pluses_classnames='_pb0'}

        {* Как это работает *}
        <section class="section _pb0">
            <div class="container">
                <h2 class="section__title" data-aos="fade-up">{$_modx->resource.video_title}</h2>
                
                <div data-aos="fade-up">
                    <a class="video" href="{$_modx->resource.video}" data-fancybox>
                        {set $video_image = 'pThumb' | snippet : [
                            'input' => $_modx->resource.video_image,
                            'options' => 'w=1760&h=850&zc=1&q=90&f=jpg'
                        ]}

                        {set $video_image_2x = 'pThumb' | snippet : [
                            'input' => $_modx->resource.video_image,
                            'options' => 'w=3520&h=1700&zc=1&q=90&f=jpg'
                        ]}

                        {set $video_image_webp = 'pThumb' | snippet : [
                            'input' => $_modx->resource.video_image,
                            'options' => 'w=1760&h=850&zc=1&q=90&f=webp'
                        ]}

                        {set $video_image_webp_2x = 'pThumb' | snippet : [
                            'input' => $_modx->resource.video_image,
                            'options' => 'w=3520&h=1700&zc=1&q=90&f=webp'
                        ]}

                        <picture class="video__picture">
                            <source type="image/webp" srcset="{$video_image_webp_2x} 2x, {$video_image_webp} 1x">
                            <img srcset="{$video_image_2x} 2x, {$video_image} 1x" alt="{$_modx->resource.video_title | escape}" width="1760" height="850">
                        </picture>

                        <svg class="video__play" width="200" height="200">
                            <use xlink:href="assets/theme/img/icons/icons.svg#play"></use>
                        </svg>
                    </a>
                </div>
            </div>
        </section>

        {* Форма заявки *}
        <section class="section _pb0">
            <div class="container">
                <section class="section _black _radius" data-aos="fade-up">
                    <div class="container">
                        <h2 class="section__title text-red">{'site_for_hour_title' | config}</h2>
                        
                        <p class="section__subtitle">{'site_for_hour_subtitle' | config}</p>

                        {'!FetchIt' | snippet : [
	                        'form' => '@FILE:chunks/forms/site_for_hour_form.tpl',
	                        'validate' => 'name:required,phone:required,info:blank',
	                        'hooks' => 'spam,email,FormItSaveForm,planfix',
	                        'emailTpl' => '@FILE:chunks/forms/form_report.tpl',
	                        'submitVar' => 'site_for_hour',
	                        'emailSubject' => 'Заявка с сайта ' ~ 'site_name' | config,
	                        'emailTo' => 'email_form' | config,
	                        'emailFrom' => 'emailsender' | config,
	                        'emailFromName' => 'site_name' | config,
	                        'formName' => 'Заявка',
	                        'formFields' => 'page,pageName,target,name,phone',
	                        'fieldNames' => 'pageName==Название страницы,page==Ссылка на страницу,target==Целевая кнопка,name==Имя,phone==Телефон'
                        ]}

                        <svg class="career__wave" width="291" height="196">
                            <use xlink:href="assets/theme/img/icons/icons.svg#career-form-wave"></use>
                        </svg>
                    </div>
                </section>
            </div>
        </section>
    </main>
{/block}