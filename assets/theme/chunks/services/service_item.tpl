<div class="swiper-slide" data-aos="fade-up" data-aos-delay="{$idx * 50}">
    <article class="box _white _hover">
        <svg class="box__icon" width="60" height="60">
            <use xlink:href="assets/theme/img/icons/icons.svg#{$svg_sprite_id}"></use>
        </svg>

        <h3 class="box__title">{$menutitle ?: $pagetitle}</h3>

        {if $introtext}
            <p class="box__text text-small">{$introtext}</p>
        {/if}

        <div class="box__grow">
            <a class="box__btn btn btn-reset _black-bordered" href="{$id | url}">Подробнее</a>
        </div>
    </article>
</div>