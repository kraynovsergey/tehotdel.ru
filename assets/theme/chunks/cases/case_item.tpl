<div class="swiper-slide" data-aos="fade-up" data-aos-delay="{$idx * 50}">
    <a class="box _transparent _hover" href="{$id | url}">
        <span class="cases__logo">{$logo_inline_svg}</span>
        
        <span class="box__text text-medium">{$pagetitle}</span>
        
        <span class="box__grow">
            <span class="text-small cases__tags">
                {foreach $tags | split as $value}
                    <span>#{$value}</span>
                {/foreach}
            </span>
        </span>
    </a>
</div>