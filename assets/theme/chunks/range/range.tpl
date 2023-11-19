<section class="section _pt0">
    <div class="container">
        <h2 class="section__title {$range_color}" data-aos="fade-up">{$_modx->resource.range_title}</h2>
        
        {if $_modx->resource.range_text}
            <div class="section _small-padding _pt0 text" data-aos="fade-up">
                {$_modx->resource.range_text}
            </div>
        {/if}

        {set $range = json_decode($_modx->resource.range, true)}

        <div class="range__wrap" data-aos="fade-up">
            <div class="range__init" data-range data-range-max="{$range | length}"></div>

            {if $range | length == 6}
                <div class="range__line" data-range-line="2" style="left: calc(20% - 2px)"></div>
                <div class="range__line" data-range-line="3" style="left: calc(40% - 2px)"></div>
                <div class="range__line" data-range-line="4" style="left: calc(60% - 2px)"></div>
                <div class="range__line" data-range-line="5" style="left: calc(80% - 2px)"></div>
            {/if}

            {if $range | length == 4}
                <div class="range__line" data-range-line="2" style="left: calc(33.33% - 2px)"></div>
                <div class="range__line" data-range-line="3" style="left: calc(66.66% - 2px)"></div>
            {/if}

            <div class="range _cols{$range | length} text-small">
                {foreach $range as $value}
                    <div class="range__step {if $value@first}_active{/if}" data-range-item="{$value@index + 1}">
                        <div class="range__text">{$value.title}</div>
                    </div>    
                {/foreach}
            </div>
        </div>

        <section class="section range__box-wrap _pb0" data-aos="fade-up">
            {foreach $range as $value}
                {set $items = json_decode($value.items, true)}

                <div class="range__box _cols{$items | length} {if $value@first}_active{/if}" data-range-box="{$value@index + 1}">
                    {foreach $items as $item}
                        <div class="box _dark-blue">
                            <h3 class="box__title _big {$range_color}">{$item.title}</h3>
                            <div class="box__text text-small text">
                                {$item.richtext}
                            </div>
                        </div>                        
                    {/foreach}
                </div>
            {/foreach}
        </section>
        
        <section class="range__swiper" data-aos="fade-up">
            <div class="swiper box-swiper _full-tablet" data-swiper-boxes>
                <div class="swiper-wrapper">
                    {foreach $range as $value}
                        <div class="swiper-slide">
                            <div class="service-steps__box range__mobile-slide box _dark-blue _active">
                                <h2 class="range__mobile-title {$range_color}">{$value.title}</h2>
                                {set $items = json_decode($value.items, true)}
                                {foreach $items as $item}
                                    <div class="range__mobile-box">
                                        <h3 class="service-steps__title box__title {$range_color}">{$item.title}</h3>
                                        <div class="service-steps__text text-small">
                                            {$item.richtext}
                                        </div>
                                    </div>
                                {/foreach}
                            </div>
                        </div>
                    {/foreach}
                </div>
            </div>
        </section>
    </div>
</section>