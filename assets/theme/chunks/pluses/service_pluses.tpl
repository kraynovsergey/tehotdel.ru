{set $service_pluses = json_decode($_modx->resource.service_pluses, true)}
<section class="section {$service_pluses_classnames}">
    <div class="container">
        {if $service_pluses | length < 4}
            <h2 class="section__title {$title_color}" data-aos="fade-up">{$_modx->resource.pluses_title}</h2>
        {else}
            <div class="section__header">
                <h2 class="section__title {$title_color}" data-aos="fade-up">{$_modx->resource.pluses_title}</h2>

                <div class="swiper__navigations reviews__navigations" data-aos="fade-up" data-aos-delay="100">
                    <button class="swiper__navigation _prev btn-reset {$arrow_color}" type="button" data-swiper-boxes-full-prev>
                        <svg width="111" height="16">
                            <use xlink:href="assets/theme/img/icons/icons.svg#swiper-arrow-left"></use>
                        </svg>
                    </button>

                    <button class="swiper__navigation _next btn-reset {$arrow_color}" type="button" data-swiper-boxes-full-next>
                        <svg width="111" height="16">
                            <use xlink:href="assets/theme/img/icons/icons.svg#swiper-arrow-left"></use>
                        </svg>
                    </button>
                </div>
            </div>
        {/if}

        {if $_modx->resource.pluses_text_before}
            <div class="section _small-padding _pt0 text" data-aos="fade-up">
                {$_modx->resource.pluses_text_before}
            </div>
        {/if}

        <div class="swiper {if $service_pluses | length < 4}box-swiper{/if} _full-tablet" {if $service_pluses | length < 4}data-swiper-boxes{else}data-swiper-boxes-full{/if}>
            <div class="swiper-wrapper {if $service_pluses | length == 3}_cols3{/if}">
                {foreach $service_pluses as $value}
                <div class="swiper-slide" data-aos="fade-up" data-aos-delay="{$value@index * 50}">
                    <article class="box {$service_pluses_box}">
                        <svg class="box__icon {$value.color}" width="60" height="60">
                            <use xlink:href="assets/theme/img/icons/icons.svg#{$value.svg_sprite_id}"></use>
                        </svg>

                        {if $value.title}
                            <h3 class="box__title _big">{$value.title}</h3>
                        {/if}
                        
                        <p class="box__text text-small">{$value.text}</p>
                    </article>
                </div>
                {/foreach}
            </div>
        </div>

        {if $_modx->resource.pluses_text_after}
            <div class="section _small-padding _pb0 text" data-aos="fade-up">
                {$_modx->resource.pluses_text_after}
            </div>
        {/if}
    </div>
</section>