<div class="swiper-slide" data-aos="fade-up">
    <a class="box _transparent _hover" href="{$id | url}">
        <span class="cases__logo">
            {if $logo_inline_svg == 'ppc-world'}
                {set $width = '143'}
                {set $height = '35'}
            {/if}

            {if $logo_inline_svg == 'se'}
                {set $width = '168'}
                {set $height = '40'}
            {/if}

            {if $logo_inline_svg == 'seo-news'}
                {set $width = '131'}
                {set $height = '26'}
            {/if}

            {if $logo_inline_svg == 'spark'}
                {set $width = '120'}
                {set $height = '32'}
            {/if}

            {if $logo_inline_svg == 'to'}
                {set $width = '185'}
                {set $height = '22'}
            {/if}

            {if $logo_inline_svg == 'vc'}
                {set $width = '50'}
                {set $height = '50'}
            {/if}

            <svg width="{$width}" height="{$height}">
                <use xlink:href="assets/theme/img/icons/icons.svg#{$logo_inline_svg}"></use>
            </svg>
        </span>
        
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