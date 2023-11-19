{set $steps = json_decode($_modx->resource.steps, true)}

<section class="section service-steps {$steps_classnames} _pt0">
    <div class="container service-steps__container">
        <div class="service-steps__left">
            <h2 class="section__title {$steps_classnames}" data-aos="fade-up">{$_modx->resource.steps_title}</h2>
        </div>

        <div class="service-steps__items" data-aos="fade-up">
            <div class="service-steps__line {$_modx->resource.template == 9 ? '_leads' : ''}" data-steps-line>
                <div class="service-steps__line-wrap" data-steps-animation>
                    <div class="service-steps__line" data-steps-animation-target></div>
                </div>
            </div>

            {foreach $steps as $value}
                <article class="service-steps__item">
                    <div class="service-steps__circle" {if $value@first}data-steps-line-first{/if} {if $value@last}data-steps-line-last{/if}>{if $value@index < 9}0{/if}{$value@index + 1}
                        <div class="service-steps__circle-wrap" data-steps-animation>
                            <div class="service-steps__circle" data-steps-animation-target>{if $value@index < 9}0{/if}{$value@index + 1}</div>
                        </div>
                    </div>

                    <div class="service-steps__box box _dark-blue">
                        <h3 class="service-steps__title">{$value.title}</h3>

                        <div class="service-steps__text text-small">
                            {$value.richtext}
                        </div>

                        <div class="service-steps__box-wrap" data-steps-animation>
                            <div class="service-steps__box box _dark-blue" data-steps-animation-target>
                                <h3 class="service-steps__title">{$value.title}</h3>
                                <div class="service-steps__text text-small">
                                    {$value.richtext}
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
            {/foreach}
        </div>

        <div class="swiper service-steps__swiper _full-tablet" data-swiper-boxes data-aos="fade-up">
            <div class="swiper-wrapper">
                {foreach $steps as $value}
                    <div class="swiper-slide">
                        <div class="service-steps__box box _dark-blue _active">
                            <div class="service-steps__circle">{if $value@index < 9}0{/if}{$value@index + 1}</div>
                            <h3 class="service-steps__title">{$value.title}</h3>
                            <div class="service-steps__text text-small">
                                {$value.richtext}
                            </div>
                        </div>
                    </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>