<section class="section {$section_classnames}">
    <div class="container">
        <h2 class="section__title" data-aos="fade-up">{$_modx->resource.influence_title}</h2>

        {set $influence_items = json_decode($_modx->resource.influence_items, true)}
        <div class="swiper box-swiper _full-tablet" data-swiper-boxes data-aos="fade-up">
            <div class="swiper-wrapper _cols2">
                {foreach $influence_items as $value}
                <div class="swiper-slide">
                    <article class="box _transparent">
                        <div class="box__num">{$value@index + 1}</div>
                        {if $value.title}
                            <h3 class="box__title">{$value.title}</h3>
                        {/if}
                        <p class="box__text text-small">{$value.text}</p>
                    </article>
                </div>
                {/foreach}
            </div>
        </div>
    </div>
</section>