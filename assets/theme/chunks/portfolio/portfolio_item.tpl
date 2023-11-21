<article class="portfolio__item" data-aos="fade-up">
    {set $img = 'pThumb' | snippet : [
        'input' => $image,
        'options' => 'w=616&h=561&zc=1&q=90&f=jpg'
    ]}

    {set $img_2x = 'pThumb' | snippet : [
        'input' => $image,
        'options' => 'w=1232&h=1122&zc=1&q=90&f=jpg'
    ]}

    {set $img_webp = 'pThumb' | snippet : [
        'input' => $image,
        'options' => 'w=616&h=561&zc=1&q=90&f=webp'
    ]}

    {set $img_webp_2x = 'pThumb' | snippet : [
        'input' => $image,
        'options' => 'w=1232&h=1122&zc=1&q=90&f=webp'
    ]}

    <picture class="portfolio__picture picture">
        <source type="image/webp" srcset="{$img_webp_2x} 2x, {$img_webp} 1x">
        <img srcset="{$img_2x} 2x, {$img} 1x" alt="{$pagetitle | escape}" width="560" height="510" loading="lazy">
    </picture>
    
    {if $template == 24}
        <h3 class="portfolio__title">{$menutitle ?: $pagetitle}</h3>
    {else}
        <a class="portfolio__title link _full" href="{$id | url}">{$menutitle ?: $pagetitle}</a>
    {/if}
</article>