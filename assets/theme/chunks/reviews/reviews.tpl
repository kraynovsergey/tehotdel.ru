{set $reviews = $.php.array_reverse(21 | resource : 'reviews' | fromJSON)}
{if $reviews | length > 0}
<section class="section _pb0">
    <div class="container">
        <div class="section__header">
            <h2 class="section__title" data-aos="fade-up">Отзывы</h2>

            <div class="swiper__navigations reviews__navigations" data-aos="fade-up" data-aos-delay="100">
                <button class="swiper__navigation _prev btn-reset" type="button" data-swiper-reviews-prev>
                    <svg width="111" height="16">
                        <use xlink:href="assets/theme/img/icons/icons.svg#swiper-arrow-left"></use>
                    </svg>
                </button>

                <button class="swiper__navigation _next btn-reset" type="button" data-swiper-reviews-next>
                    <svg width="111" height="16">
                        <use xlink:href="assets/theme/img/icons/icons.svg#swiper-arrow-left"></use>
                    </svg>
                </button>
            </div>
        </div>

        <div class="swiper _full-tablet" data-swiper-reviews>
            <div class="swiper-wrapper">
                {foreach $reviews as $value}
                    {include 'file:chunks/reviews/reviews_item.tpl'}
                {/foreach}
            </div>
        </div>
    </div>
</section>
{/if}