<section class="section price-block _black _radius">
    <div class="container price-block__container">
        <div class="price-block__box">
            <h2 class="price-block__title section__title {$service_prices_color}">{$_modx->resource.service_prices_title}</h2>
            <p class="price-block__price {$service_prices_color}">{$_modx->resource.service_prices_price}</p>
            <p class="price-block__text">{$_modx->resource.service_prices_text}</p>
            <button class="btn btn-reset {$service_prices_color}" type="button" data-modal="#modal-order">Обсудить проект
                <svg width="31" height="8">
                    <use xlink:href="assets/theme/img/icons/icons.svg#arrow-right"></use>
                </svg>
            </button>
            
            <img class="price-block__wave" src="{$service_prices_wave}" alt="" width="755" height="274" loading="lazy">
        </div>

        <div class="price-block__content">
            <h3 class="price-block__subtitle">{$_modx->resource.service_prices_pluses_title}</h3>

            <div class="swiper box-swiper _full-tablet" data-swiper-boxes>
                <div class="swiper-wrapper _cols2">
                    
                    {set $service_prices_pluses = json_decode($_modx->resource.service_prices_pluses, true)}
                    {foreach $service_prices_pluses as $value}
                        <div class="swiper-slide">
                            <div class="box _dark-blue">
                                <svg class="box__icon {$value.color}" width="60" height="60">
                                    <use xlink:href="assets/theme/img/icons/icons.svg#{$value.svg_sprite_id}"></use>
                                </svg>
                                <p class="box__text text-small">{$value.text}</p>
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </div>
    </div>
</section>