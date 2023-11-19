{if $_modx->resource.template == 22}
    <div class="section__header" data-aos="fade-up">
        <h2 class="section__title">{1 | resource : 'awards_title'}</h2>
        <a class="btn btn-reset awards__rating _black-bordered" href="{1 | resource : 'awards_runet'}" target="_blank" rel="nofollow">Открыть Рейтинг Рунета</a>
    </div>
{else}
    <h2 class="section__title {$title_color}" data-aos="fade-up">{1 | resource : 'awards_title'}</h2>
{/if}

<div class="swiper box-swiper _full-tablet" data-swiper-boxes>
    <div class="swiper-wrapper">

        {set $awards_items = 1 | resource : 'awards_items' | fromJSON}
        {foreach $awards_items as $value}
            {set $image = 'pThumb' | snippet : [
                'input' => 'assets/images/' ~ $value.image,
                'options' => 'h=1080&zc=0&q=90&f=jpg'
            ]}
            <div class="swiper-slide" data-aos="fade-up" data-aos-delay="{$value@index * 50}">
                <article class="box {$_modx->resource.template == 22 ? '_transparent' : '_dark-blue'}">
                    <svg class="box__icon" width="60" height="60">
                        <use xlink:href="assets/theme/img/icons/icons.svg#{$value.svg_sprite_id}"></use>
                    </svg>
                    <h3 class="box__title _big">{$value.title}</h3>
                    <p class="box__text text-small">{$value.subtitle}</p>
                    <div class="box__grow">
                        <a class="box__link text-small" href="{$image}" data-fancybox>Открыть сертификат</a>
                    </div>
                </article>
            </div>
        {/foreach}

        <div class="swiper-slide awards__all-wrap" data-aos="fade-up"
            data-aos-delay="{($awards_items | length) * 50 + 50}">
            <article class="box awards__all {$_modx->resource.template == 22 ? '_transparent' : '_dark-blue'}">
                <div class="awards__all-number text-red">{1 | resource : 'awards_other_title'}</div>
                <div class="awards__all-text">{1 | resource : 'awards_other_subtitle'}</div>
                <div class="box__grow">
                    <a class="awards__all-btn btn btn-reset _red" href="{22 | url}">Посмотреть все</a>
                </div>
            </article>
        </div>
    </div>
</div>

<article class="box awards__all _tablet _dark-blue" data-aos="fade-up" data-aos-delay="100">
    <div class="awards__all-number text-red">{1 | resource : 'awards_other_title'}</div>
    <div class="awards__all-text">{1 | resource : 'awards_other_subtitle'}</div>
    <div class="box__grow">
        <a class="awards__all-btn btn btn-reset _red" href="{22 | url}">Посмотреть все</a>
    </div>
</article>